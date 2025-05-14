<?php

namespace spicyweb\embeddedassets;

use Craft;
use craft\elements\Asset;
use craft\helpers\Template;
use craft\helpers\StringHelper;
use craft\helpers\Json;
use craft\helpers\Assets;
use craft\helpers\FileHelper;
use craft\models\VolumeFolder;
use DateTimeImmutable;
use DateTimeInterface;
use DOMDocument;
use Embed\Embed;
use Embed\Adapters\Adapter;
use Embed\Http\CurlDispatcher;
use Embed\Http\Url;
use spicyweb\embeddedassets\Plugin as EmbeddedAssets;
use spicyweb\embeddedassets\models\EmbeddedAsset;
use Twig\Markup as TwigMarkup;
use yii\base\Component;
use yii\base\Exception;
use yii\base\ErrorException;
use yii\base\InvalidArgumentException;

/**
 * Class Service
 *
 * @package spicyweb\embeddedassets
 * @author Spicy Web <plugins@spicyweb.com.au>
 * @author Benjamin Fleming
 * @since 1.0.0
 */
class Service extends Component
{
    private $embeddedAssetData = [];

    /**
     * Requests embed data from a URL.
     *
     * @param string $url
     * @return EmbeddedAsset
     */
    public function requestUrl(string $url): EmbeddedAsset
    {
        $cacheService = Craft::$app->getCache();

        $cacheKey = 'embeddedasset:' . $url;
        $embeddedAsset = $cacheService->get($cacheKey);

        if (!$embeddedAsset) {
            $pluginSettings = EmbeddedAssets::$plugin->getSettings();
            $array = $this->_getDataFromAdapter($url);
            $embeddedAsset = $this->createEmbeddedAsset($array);

            $cacheService->set($cacheKey, $embeddedAsset, $pluginSettings->cacheDuration);
        }

        return $embeddedAsset;
    }

    private function _getDataFromAdapter(string $url): array
    {
        $pluginSettings = EmbeddedAssets::$plugin->getSettings();
        $options = [
            'min_image_width' => $pluginSettings->minImageSize,
            'min_image_height' => $pluginSettings->minImageSize,
            'oembed' => ['parameters' => []],
        ];

        if (!empty($pluginSettings->parameters)) {
            foreach ($pluginSettings->parameters as $parameter) {
                $param = $parameter['param'];
                $value = $parameter['value'];
                $options['oembed']['parameters'][$param] = $value;
            }
        }

        if ($pluginSettings->embedlyKey) {
            $options['oembed']['embedly_key'] = Craft::parseEnv($pluginSettings->embedlyKey);
        }
        if ($pluginSettings->iframelyKey) {
            $options['oembed']['iframely_key'] = Craft::parseEnv($pluginSettings->iframelyKey);
        }
        if ($pluginSettings->googleKey) {
            $options['google'] = ['key' => Craft::parseEnv($pluginSettings->googleKey)];
        }
        if ($pluginSettings->soundcloudKey) {
            $options['soundcloud'] = ['key' => Craft::parseEnv($pluginSettings->soundcloudKey)];
        }
        if ($pluginSettings->facebookKey) {
            $options['facebook'] = ['key' => Craft::parseEnv($pluginSettings->facebookKey)];
        }

        if ($pluginSettings->referer) {
            $adapter = Embed::create($url, $options, new CurlDispatcher([
                CURLOPT_REFERER => Craft::parseEnv($pluginSettings->referer),
            ]));
        } else {
        $adapter = Embed::create($url, $options);
        }

        // Check for PBS videos
        if (($pbsCode = $this->_getPbsEmbedCode($adapter)) !== null) {
            $adapter->type = 'video';
            $adapter->code = $pbsCode;
        }

        // TODO: remove this when we can upgrade to Embed v4, or if it's fixed in Embed v3
        // Embed data for Instagram is including the login URL (with otherwise correct data) in some cases
        if ($adapter->url === 'https://www.instagram.com/accounts/login/') {
            $adapter->url = (string)Url::create($url);
        }

        return $this->_convertFromAdapter($adapter);
    }
    
    /**
     * Checks a URL against the whitelist set on the plugin settings model.
     *
     * @param string $url
     * @return bool Whether the URL is in the whitelist.
     */
    public function checkWhitelist(string $url): bool
    {
        $pluginSettings = EmbeddedAssets::$plugin->getSettings();
        $whitelist = array_merge($pluginSettings->whitelist, $pluginSettings->extraWhitelist);

        foreach ($whitelist as $whitelistUrl) {
            if ($whitelistUrl) {
                $pattern = explode('*', $whitelistUrl);
                $pattern = array_map('preg_quote', $pattern);
                $pattern = implode('[a-z][a-z0-9]*', $pattern);
                $pattern = "%^(https?:)?//([a-z0-9\-]+\\.)?$pattern([:/].*)?$%";

                if (preg_match($pattern, $url)) {
                    return true;
                }
            }
        }

        return false;
    }
    
    /**
     * Retrieves an embedded asset model from an asset element, if one exists.
     *
     * @param Asset $asset
     * @return EmbeddedAsset|null
     * @throws \yii\base\InvalidConfigException
     * @throws \craft\errors\AssetException
     */
    public function getEmbeddedAsset(Asset $asset)
    {
        // Embedded assets are just JSON files, so clearly if this isn't a JSON file it can't be an embedded asset
        if ($asset->kind !== Asset::KIND_JSON) {
            return null;
        }

        // If the embedded asset data has already been loaded this request, there's no need to reload it
        if (isset($this->embeddedAssetData[$asset->uid])) {
            return $this->embeddedAssetData[$asset->uid];
        }

        $embeddedAsset = null;

        try {
            $decodedJson = $this->_getAssetContents($asset);

            if (($decodedJson['providerName'] === 'Instagram') && $this->_hasBeenWeekSince($asset->dateModified)) {
                if ($this->_hasInstagramImageExpired($decodedJson['image'])) {
                    $decodedJson = $this->_updateInstagramFile($asset, $decodedJson['url']);
                } else {
                    // if not expire yet update the date modified so it checks the file in another 7 days
                    $asset->dateModified = new \DateTime();
                    Craft::$app->getElements()->saveElement($asset);
                }
            }

            if (is_array($decodedJson)) {
                $embeddedAsset = $this->createEmbeddedAsset($decodedJson);
                $this->embeddedAssetData[$asset->uid] = $embeddedAsset;
            }
        } catch (\Throwable $e) {
            // Ignore errors and assume it's not an embedded asset
            $embeddedAsset = null;
        }

        return $embeddedAsset;
    }

    /**
     * Returns whether the given array represents valid data for creating an EmbeddedAsset.
     *
     * @since 2.3.0
     * @param array $array
     * @return bool
     */
    public function isValidEmbeddedAssetData(array $array)
    {
        return $this->createEmbeddedAsset($array) !== null;
    }

    /**
     * Creates an embedded asset model from an array of property/value pairs.
     * Returns the model unless the array included any properties that aren't defined on the model.
     *
     * @param array $array
     * @return EmbeddedAsset|null
     */
    private function createEmbeddedAsset(array $array)
    {
        $embeddedAsset = new EmbeddedAsset();

        $isLegacy = isset($array['__embeddedasset__']);
        if ($isLegacy) {
            $array = $this->_convertFromLegacy($array);
        }

        foreach ($array as $key => $value) {
            if (!$embeddedAsset->hasProperty($key)) {
                return null;
            }

            switch ($key) {
                case 'code':
                    {
                        $code = ($value instanceof TwigMarkup ? (string)$value : is_string($value)) ? $value : '';
                        
                        $embeddedAsset->$key = empty($code) ? null : Template::raw($code);
                    }
                    break;
                default:
                {
                    $embeddedAsset->$key = $value;
                }
            }
        }

        // Attempts to extract missing dimensional properties from the embed code
        $dimensions = $this->_getDimensions($embeddedAsset);
        $embeddedAsset->width = $dimensions[0];
        $embeddedAsset->height = $dimensions[1];

        // Sets aspect ratio is missing
        if (!$embeddedAsset->aspectRatio && $embeddedAsset->width && $embeddedAsset->height) {
            $embeddedAsset->aspectRatio = $embeddedAsset->height / $embeddedAsset->width * 100;
        }

        // Correct invalid types to similar, valid types
        if ($embeddedAsset->type === 'photo') {
            $embeddedAsset->type = 'image';
        }

        return $embeddedAsset->validate() ? $embeddedAsset : null;
    }

    /**
     * Creates an asset element ready to be saved from an embedded asset model.
     *
     * @param EmbeddedAsset $embeddedAsset
     * @param VolumeFolder $folder The folder to save the asset to.
     * @return Asset
     * @throws \craft\errors\AssetLogicException
     * @throws \yii\base\ErrorException
     * @throws \yii\base\Exception
     */
    public function createAsset(EmbeddedAsset $embeddedAsset, VolumeFolder $folder): Asset
    {
        $hasReplaceMb4 = method_exists(StringHelper::class, 'replaceMb4');

        $assetsService = Craft::$app->getAssets();
        $pluginSettings = EmbeddedAssets::$plugin->getSettings();

        $tempFilePath = Assets::tempFilePath();
        $fileContents = Json::encode($embeddedAsset,
            JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);

        FileHelper::writeToFile($tempFilePath, $fileContents);

        $assetTitle = $embeddedAsset->title ?: $embeddedAsset->url;

        // Ensure the title contains no emoji
        if ($hasReplaceMb4) {
            $assetTitle = StringHelper::replaceMb4($assetTitle, '');
        } else {
            if (StringHelper::containsMb4($assetTitle)) {
                $assetTitle = preg_replace_callback('/./u', function (array $match): string {
                    return strlen($match[0]) >= 4 ? '' : $match[0];
                }, $assetTitle);
            }
        }

        $fileName = Assets::prepareAssetName($assetTitle, false);
        $fileName = str_replace('.', '', $fileName);
        $fileName = $fileName ?: 'embedded-asset';
        $fileName = StringHelper::safeTruncate($fileName, $pluginSettings->maxFileNameLength) . '.json';
        $fileName = $assetsService->getNameReplacementInFolder($fileName, $folder->id);

        $asset = new Asset();
        $asset->title = StringHelper::safeTruncate($assetTitle, $pluginSettings->maxAssetNameLength);
        $asset->tempFilePath = $tempFilePath;
        $asset->filename = $fileName;
        $asset->newFolderId = $folder->id;
        $asset->volumeId = $folder->volumeId;
        $asset->avoidFilenameConflicts = true;
        $asset->setScenario(Asset::SCENARIO_CREATE);

        return $asset;
    }

    /**
     * Checks an embedded asset embed code for URL's that are safe (or in other words, are whitelisted).
     *
     * @param EmbeddedAsset $embeddedAsset
     * @return bool
     */
    public function isEmbedSafe(EmbeddedAsset $embeddedAsset): bool
    {
        $isSafe = $this->checkWhitelist($embeddedAsset->url);

        if ($isSafe) {
            $dom = $this->getEmbedCode($embeddedAsset);

            if ($dom) {
                foreach ($dom->getElementsByTagName('iframe') as $iframeElement) {
                    $href = $iframeElement->getAttribute('href');
                    $isSafe = $isSafe && (!$href || $this->checkWhitelist($href));
                }

                foreach ($dom->getElementsByTagName('script') as $scriptElement) {
                    $src = $scriptElement->getAttribute('src');
                    $content = $scriptElement->textContent;

                    // Inline scripts are impossible to analyse for safety, so just assume they're all evil
                    $isSafe = $isSafe && !$content && (!$src || $this->checkWhitelist($src));
                }
            }
        }

        return $isSafe;
    }
    
    /**
     * Gets the embed code as DOM, if one exists and is valid.
     *
     * @param EmbeddedAsset $embeddedAsset
     * @return DOMDocument|null
     */
    public function getEmbedCode(EmbeddedAsset $embeddedAsset)
    {
        $dom = null;

        if ($embeddedAsset->code) {
            $errors = libxml_use_internal_errors(true);
            $entities = libxml_disable_entity_loader(true);

            try {
                $dom = new DOMDocument();
                $code = "<div>$embeddedAsset->code</div>";
                $isHtml = $dom->loadHTML($code, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);

                if (!$isHtml) {
                    throw new ErrorException();
                }
            } catch (ErrorException $e) {
                // Corrupted code property, like due to invalid HTML.
                $dom = null;
            } finally {
                libxml_use_internal_errors($errors);
                libxml_disable_entity_loader($entities);
            }
        }

        return $dom;
    }

    /**
     * Gets the HTML for the embedded asset.
     * This method automatically checks if the embed code is safe to use. If it is, then the embed code is returned.
     * Otherwise, if the embedded asset is not a "link" type and it has an image, an <img> tag is returned. Otherwise,
     * an <a> link tag is returned.
     *
     * @param EmbeddedAsset $embeddedAsset
     * @return TwigMarkup
     */
    public function getEmbedHtml(EmbeddedAsset $embeddedAsset): TwigMarkup
    {
        if ($embeddedAsset->code && $embeddedAsset->isSafe()) {
            $html = $embeddedAsset->code;
        } else {
            if ($embeddedAsset->type !== 'link' && $embeddedAsset->image) {
                $html = Template::raw("<img src=\"$embeddedAsset->image\" alt=\"$embeddedAsset->title\" width=\"$embeddedAsset->imageWidth\" height=\"$embeddedAsset->imageHeight\">");
            } else {
                $html = Template::raw("<a href=\"$embeddedAsset->url\" target=\"_blank\" rel=\"noopener\">$embeddedAsset->title</a>");
            }
        }

        return $html;
    }

    /**
     * Returns the image from an embedded asset closest to some size.
     * It favours images that most minimally exceed the supplied size.
     *
     * @param EmbeddedAsset $embeddedAsset
     * @param int $size
     * @return array|null
     */
    public function getImageToSize(EmbeddedAsset $embeddedAsset, int $size)
    {
        return is_array($embeddedAsset->images) ?
            $this->_getImageToSize($embeddedAsset->images, $size) : null;
    }

    /**
     * Returns the provider icon from an embedded asset closest to some size.
     * It favours icons that most minimally exceed the supplied size.
     *
     * @param EmbeddedAsset $embeddedAsset
     * @param int $size
     * @return array|null
     */
    public function getProviderIconToSize(EmbeddedAsset $embeddedAsset, int $size)
    {
        return is_array($embeddedAsset->providerIcons) ?
            $this->_getImageToSize($embeddedAsset->providerIcons, $size) : null;
    }

    /**
     * Gets the width/height of an embedded asset.
     * Attempts to extract missing dimensional properties from the embed code.
     *
     * @param EmbeddedAsset $embeddedAsset
     * @return array
     */
    private function _getDimensions(EmbeddedAsset $embeddedAsset): array
    {
        $width = $embeddedAsset->width;
        $height = $embeddedAsset->height;

        if (!$width || !$height) {
            $dom = $this->getEmbedCode($embeddedAsset);

            if ($dom) {
                $iframeElement = $dom->getElementsByTagName('iframe')->item(0);

                if ($iframeElement) {
                    $width = $iframeElement->getAttribute('width');
                    $height = $iframeElement->getAttribute('height');
                    $style = $iframeElement->getAttribute('style');

                    $matches = [];
                    $matchCount = preg_match_all('/(width|height):\s*([0-9]+(\.[0-9]+)?)px/i', $style, $matches);

                    for ($i = 0; $i < $matchCount; $i++) {
                        $styleProperty = strtolower($matches[1][$i]);
                        $styleValue = $matches[2][$i];

                        switch ($styleProperty) {
                            case 'width':
                                $width = $styleValue;
                                break;
                            case 'height':
                                $height = $styleValue;
                                break;
                        }
                    }

                    $width = $width ? floatval($width) : null;
                    $height = $height ? floatval($height) : null;
                }
            }
        }

        // TikTok sets the width and height as '100%', which Embedded Assets doesn't really like.  Just remove them.
        if ($width === '100%' && $height === '100%') {
            $width = null;
            $height = null;
        }

        return [$width, $height];
    }

    /**
     * Helper method for retrieving an image closest to some size.
     *
     * @param array $images
     * @param int $size
     * @return array|null
     */
    private function _getImageToSize(array $images, int $size)
    {
        $selectedImage = null;
        $selectedSize = 0;

        foreach ($images as $image) {
            if (is_array($image)) {
                $imageWidth = isset($image['width']) && is_numeric($image['width']) ? $image['width'] : 0;
                $imageHeight = isset($image['height']) && is_numeric($image['height']) ? $image['height'] : 0;
                $imageSize = max($imageWidth, $imageHeight);

                if (
                    !$selectedImage ||
                    ($selectedSize < $size && $imageSize > $selectedSize) ||
                    ($selectedSize > $imageSize && $imageSize > $size)
                ) {
                    $selectedImage = $image;
                    $selectedSize = $imageSize;
                }
            }
        }

        return $selectedImage;
    }

    /**
     * Helper method for filtering images to some minimum size.
     * Used to filter out small images that likely are absolutely useless.
     *
     * @param array $image
     * @return bool
     */
    private function _isImageLargeEnough(array $image)
    {
        $pluginSettings = EmbeddedAssets::$plugin->getSettings();
        $minImageSize = $pluginSettings->minImageSize;

        return $image['width'] >= $minImageSize && $image['height'] >= $minImageSize;
    }

    /**
     * Creates an "embedded asset ready" array from an adapter.
     *
     * @param Adapter $adapter
     * @return array
     */
    private function _convertFromAdapter(Adapter $adapter): array
    {
        return [
            'title' => $adapter->title,
            'description' => $adapter->description,
            'url' => $adapter->url,
            'type' => $adapter->type,
            'tags' => $adapter->tags,
            'images' => array_filter($adapter->images, [$this, '_isImageLargeEnough']),
            'image' => $adapter->image,
            'imageWidth' => $adapter->imageWidth,
            'imageHeight' => $adapter->imageHeight,
            'code' => Template::raw($adapter->code ?: ''),
            'width' => $adapter->width,
            'height' => $adapter->height,
            'aspectRatio' => $adapter->aspectRatio,
            'authorName' => $adapter->authorName,
            'authorUrl' => $adapter->authorUrl,
            'providerName' => $adapter->providerName,
            'providerUrl' => $adapter->providerUrl,
            'providerIcons' => array_filter($adapter->providerIcons, [$this, '_isImageLargeEnough']),
            'providerIcon' => $adapter->providerIcon,
            'publishedTime' => $adapter->publishedTime,
            'license' => $adapter->license,
            'feeds' => $adapter->feeds,
        ];
    }

    /**
     * Creates an "embedded asset ready" array from an array matching the Craft 2 version of the plugin.
     *
     * @param array $legacy
     * @return array
     */
    private function _convertFromLegacy(array $legacy): array
    {
        $width = intval($legacy['width'] ?? 0);
        $height = intval($legacy['height'] ?? 0);
        $imageUrl = $legacy['thumbnailUrl'] ?? null;
        $imageWidth = intval($legacy['thumbnailWidth'] ?? 0);
        $imageHeight = intval($legacy['thumbnailHeight'] ?? 0);

        return [
            'title' => $legacy['title'] ?? null,
            'description' => $legacy['description'] ?? null,
            'url' => $legacy['url'] ?? null,
            'type' => $legacy['type'] ?? null,
            'images' => $imageUrl ? [
                [
                    'url' => $imageUrl,
                    'width' => $imageWidth,
                    'height' => $imageHeight,
                    'size' => $imageWidth * $imageHeight,
                    'mime' => null,
                ]
            ] : [],
            'image' => $imageUrl,
            'imageWidth' => $imageWidth,
            'imageHeight' => $imageHeight,
            'code' => Template::raw($legacy['html'] ?? $legacy['safeHtml'] ?? ''),
            'width' => $width,
            'height' => $height,
            'aspectRatio' => $width > 0 ? $height / $width * 100 : 0,
            'authorName' => $legacy['authorName'] ?? null,
            'authorUrl' => $legacy['authorUrl'] ?? null,
            'providerName' => $legacy['providerName'] ?? null,
            'providerUrl' => $legacy['providerUrl'] ?? null,
        ];
    }

    /**
     * Gets the contents of the given asset.
     *
     * If a cached copy of the embedded asset exists, it will be loaded.  If a cached copy does not exist, one will be
     * created after loading the embedded asset from its original location.
     *
     * @param Asset $asset
     * @return array of embedded asset data
     */
    private function _getAssetContents(Asset $asset): array
    {
        $cachedPath = $this->getCachedAssetPath($asset);
        $contents = null;

        if (file_exists($cachedPath)) {
            $contents = file_get_contents($cachedPath);
        } else {
            $contents = $asset->getContents();
            FileHelper::writeToFile($cachedPath, $contents);
        }

        return Json::decodeIfJson($contents);
    }

    /**
     * Gets the cached path for the given asset.
     *
     * @param Asset $asset
     * @return string the embedded asset's cached path
     * @throws InvalidArgumentException if $asset is an unsaved Asset
     */
    public function getCachedAssetPath(Asset $asset): string
    {
        if ($asset->uid === null) {
            throw new InvalidArgumentException('Tried to get the cached path of an unsaved embedded asset');
        }

        $assetsPath = Craft::$app->getPath()->getAssetsPath(false);
        $subDirPath = 'embeddedassets' . DIRECTORY_SEPARATOR . substr($asset->uid, 0, 2);

        return $assetsPath . DIRECTORY_SEPARATOR . $subDirPath . DIRECTORY_SEPARATOR . $asset->uid . '.json';
    }

    private function _hasBeenWeekSince(DateTimeInterface $dateModified)
    {
        return $dateModified->diff(new DateTimeImmutable())->d >= 7;
    }

    private function _hasInstagramImageExpired(string $imageUrl): bool
    {
        // get headers of the image url and make sure it's not expired yet.
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $imageUrl);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_HEADER, 1);
        curl_setopt($ch, CURLOPT_NOBODY, 1);

        $output = curl_exec($ch);
        curl_close($ch);

        $output = rtrim($output);
        $data = explode("\n", $output);

        return $data && strpos($data[0], '200') === false;
    }

    private function _updateInstagramFile(Asset $asset, $url)
    {
        // get new data from the url
        $array = $this->_getDataFromAdapter($url);
        $newEmbeddedAsset = $this->createEmbeddedAsset($array);

        if ($newEmbeddedAsset) {
            try {
                $assets = Craft::$app->getAssets();

                $folder = $assets->findFolder(['id' => $asset->folderId]);
                $assetToReplace = $this->createAsset($newEmbeddedAsset, $folder);
                Craft::$app->getElements()->saveElement($assetToReplace);

                $tempPath = $assetToReplace->getCopyOfFile();
                $assets->replaceAssetFile($asset, $tempPath, $asset->filename);
                Craft::$app->getElements()->deleteElement($assetToReplace);

            } catch (\Throwable $e) {
                $array = null;
            }
        }

        return $array;
    }

    private function _isProviderPbs(Adapter $adapter) {
        $pbsUrls = ['https://pbs.org', 'https://nhpbs.org'];

        return in_array($adapter->providerUrl, $pbsUrls);
    }

    private function _getPbsEmbedCode(Adapter $adapter) {
        if (!$this->_isProviderPbs($adapter)) {
            return null;
        }

        $adapterContent = $adapter->getResponse()->getContent();
        $matches = [];

        if (preg_match('/&lt;iframe(.+)iframe&gt;/i', $adapterContent, $matches)) {
            if (preg_match('/https:\\/\\/player.pbs.org\\/viralplayer\\/([0-9]+)\\//i', $matches[0])) {
                return htmlspecialchars_decode($matches[0], ENT_QUOTES | ENT_HTML5);
            }
        }

        return null;
    }
}
