<?php

namespace weareferal\remotecore\services\providers;

use Craft;

use Google_Client;
use Google_Exception;
use Google_Service_Drive;
use Google_Service_Drive_DriveFile;

use weareferal\remotecore\services\ProviderService;
use weareferal\remotecore\exceptions\ProviderException;


/**
 * Google Drive Provider
 * 
 * Bear in mind that the version of this PHP Client library (v2) is different
 * to the actual Google Drive API (which is v3). In other words, we're using
 * v2 of this client library to access v3 of the Google Drive API. Confusing.
 * 
 * Furthermore, the Google Drive docs are terrible, so here are some of the
 * slightly more relevent links:
 * 
 * https://developers.google.com/drive/api/v3/quickstart/php
 * https://developers.google.com/resources/api-libraries/documentation/drive/v3/php/latest
 * https://github.com/googleapis/google-api-php-client/tree/master/src/Google/Service
 * https://github.com/googleapis/google-api-php-client-services/blob/master/src/Google/Service/Drive.php
 */
class GoogleDriveProvider extends ProviderService
{
    public $name = "Google Drive";

    /**
     * Is Configured
     * 
     * @return boolean whether this provider is properly configured
     * @since 1.1.0
     */
    public function isConfigured(): bool
    {
        return isset($this->plugin->settings->googleClientId) &&
            isset($this->plugin->settings->googleClientSecret) &&
            isset($this->plugin->settings->googleProjectName) &&
            isset($this->plugin->settings->googleAuthRedirect);
    }

    /**
     * Is Authenticated
     * 
     * @return boolean whether this provider is properly authenticated
     * @since 1.1.0
     */
    public function isAuthenticated(): bool
    {
        $client = $this->getClient();
        $isExpired = $client->isAccessTokenExpired();
        if ($isExpired) {
            // Try refresh
            $isExpired = $client->getRefreshToken() == null;
        }
        return !$isExpired;
    }

    /**
     * Return Google Drive files
     * 
     * https://github.com/googleapis/google-api-php-client-services/blob/82f6213007f4d2acccdafd1372fd88447f728008/src/Google/Service/Drive/Resource/Files.php#L230
     * 
     * @param string $extension The file extension to filter the results by
     * @return array[string] An array of files from Google Drive
     * @since 1.1.0
     * @todo I've just thrown parameters at the wall to get team drives working.
     * Google are not clear whether these parameters actually are needed.
     */
    public function list($filterExtension): array
    {
        $googleDriveFolderId = Craft::parseEnv($this->plugin->settings->googleDriveFolderId);
        $service = new Google_Service_Drive($this->getClient());

        $q = "name contains '${filterExtension}'";
        if ($googleDriveFolderId) {
            $q = "'${googleDriveFolderId}' in parents and " . $q;
        }

        $params = array(
            'corpora' => 'allDrives',
            'includeItemsFromAllDrives' => true,
            'supportsAllDrives' => true,
            'spaces' => 'drive',
            'q' => $q,
        );

        try {
            $results = $service->files->listFiles($params);
        } catch (Google_Exception $exception) {
            Craft::debug("Couldn't push Google Drive file", 'remote-sync');
            Craft::debug($filterExtension, 'remote-sync');
            throw new ProviderException($exception->getMessage());
        }

        $filenames = [];
        foreach ($results as $result) {
            array_push($filenames, $result->getName());
        }

        return $filenames;
    }

    /**
     * Push a file to Google Drive
     *  
     * @param string $path The full filesystem path to file
     * @since 1.0.0
     */
    public function push($localPath)
    {
        $mimeType = mime_content_type($localPath);
        $googleDriveFolderId = Craft::parseEnv($this->plugin->settings->googleDriveFolderId);
        $service = new Google_Service_Drive($this->getClient());
        $gFile = new Google_Service_Drive_DriveFile();
        $gFile->setName(basename($localPath));
        # Upload to specified folder
        if ($googleDriveFolderId) {
            $gFile->setParents([$googleDriveFolderId]);
        }
        $service->files->create(
            $gFile,
            [
                'data' => file_get_contents($localPath),
                'mimeType' => $mimeType,
                'uploadType' => 'multipart',
                'supportsAllDrives' => true
            ]
        );
    }

    /**
     * Download file
     * 
     * https://developers.google.com/drive/api/v3/reference/files/get
     * 
     * @param string $filename the filename to pull and restore
     * @param string $localPath  the local absolute path to save the download
     * @return boolean if download was successful
     * @throws ProviderException if there was a Google API error downloading the file
     * @throws ProviderException if there was an issue saving the file contents locally
     * @since 1.0.0
     */
    public function pull($filename, $localPath)
    {
        $fileId = $this->getFileID($filename);
        $service = new Google_Service_Drive($this->getClient());
        $response = $service->files->get($fileId, [
            'supportsAllDrives' => true,
            'alt' => 'media'
        ]);

        try {
            $out = fopen($localPath, "w+");
            while (!$response->getBody()->eof()) {
                fwrite($out, $response->getBody()->read(1024));
            }
            fclose($out);
        } catch (\Exception $exception) {
            // TODO make sure file deleted
            throw new ProviderException("Couldn't save Google Drive file");
        }
    }

    /**
     * Delete a remote Google Drive file
     * 
     * https://developers.google.com/drive/api/v3/reference/files/delete
     * 
     * @param $filename string the filename to delete
     * @return boolean if successful
     * @throws ProviderException if there was an API error deleting the file
     * @since 1.0.0
     */
    public function delete($filename)
    {
        $fileId = $this->getFileID($filename);
        $service = new Google_Service_Drive($this->getClient());
        $service->files->delete($fileId, [
            'supportsAllDrives' => true
        ]);
    }

    /**
     * Get file ID
     * 
     * Search for the file by filename across all drives in Google Drive
     * 
     * https://developers.google.com/drive/api/v3/reference/files/list
     * 
     * @param $filename string the filename we are searching for
     * @return string the Google Drive fileId of the found file
     * @throws ProviderException if there was an API error finding the file
     * @since 1.0.0
     */
    private function getFileID($filename)
    {
        $googleDriveFolderId = Craft::parseEnv($this->plugin->settings->googleDriveFolderId);
        $service = new Google_Service_Drive($this->getClient());
        $q = "name = '${filename}'";
        if ($googleDriveFolderId) {
            $q = "'${googleDriveFolderId}' in parents and " . $q;
        }
        return $service->files->listFiles([
            'corpora' => 'allDrives',
            'includeItemsFromAllDrives' => true,
            'supportsAllDrives' => true,
            'spaces' => 'drive',
            'q' => $q
        ])[0]->id;
    }

    /**
     * Get token path
     * 
     * Return the absolute path to the saved Google API credential json file
     * 
     * @return string absolute path
     * @since 1.0.0
     */
    public function getTokenPath(): string
    {
        return Craft::$app->path->getStoragePath()
            . DIRECTORY_SEPARATOR
            . $this->plugin->getHandle()
            . DIRECTORY_SEPARATOR
            . "google-drive-{$this->plugin->getHandle()}-token"
            . ".json";
    }

    /**
     * Get client
     * 
     * Return a Google Drive client
     * 
     * @return Client The Google SDK client object
     * @since 1.0.0
     */
    function getClient(): Google_Client
    {
        $client = new Google_Client();
        $client->setApplicationName('Craft Remote Sync');
        $client->setScopes(Google_Service_Drive::DRIVE_FILE);
        $config = [
            'client_id' => Craft::parseEnv($this->plugin->settings->googleClientId),
            "project_id" => Craft::parseEnv($this->plugin->settings->googleProjectName),
            "auth_uri" => "https://accounts.google.com/o/oauth2/auth",
            "token_uri" => "https://oauth2.googleapis.com/token",
            "auth_provider_x509_cert_url" => "https://www.googleapis.com/oauth2/v1/certs",
            "client_secret" => Craft::parseEnv($this->plugin->settings->googleClientSecret),
            "redirect_uris" => [
                Craft::parseEnv($this->plugin->settings->googleAuthRedirect)
            ]
        ];
        $client->setAuthConfig($config);
        $client->setAccessType('offline');
        $client->setPrompt('select_account consent');

        $tokenPath = $this->getTokenPath();
        if (file_exists($tokenPath)) {
            $accessToken = json_decode(file_get_contents($tokenPath), true);
            $client->setAccessToken($accessToken);
        }

        return $client;
    }
}
