<?php

namespace spicyweb\embeddedassets\gql\interfaces;

use craft\gql\GqlEntityRegistry;
use craft\gql\interfaces\Element;
use craft\gql\TypeManager;
use GraphQL\Type\Definition\InterfaceType;
use GraphQL\Type\Definition\ObjectType;
use GraphQL\Type\Definition\Type;
use spicyweb\embeddedassets\gql\types\generators\EmbeddedAssetType;
use spicyweb\embeddedassets\models\EmbeddedAsset as EmbeddedAssetModel;

/**
 * Embedded Asset GraphQL interface for Craft CMS Pro.
 *
 * @author Spicy Web <plugins@spicyweb.com.au>
 * @since 2.4.0
 */
class EmbeddedAsset extends Element
{
    /**
     * @inheritdoc
     */
    public static function getTypeGenerator(): string
    {
        return EmbeddedAssetType::class;
    }

    /**
     * @inheritdoc
     */
    public static function getType($fields = null): Type
    {
        if ($type = GqlEntityRegistry::getEntity(self::getName())) {
            return $type;
        }

        $type = GqlEntityRegistry::createEntity(self::getName(), new InterfaceType([
            'name' => static::getName(),
            'fields' => self::class . '::getFieldDefinitions',
            'description' => 'This is the interface implemented by all embedded assets.',
            'resolveType' => function (EmbeddedAssetModel $value) {
                return 'EmbeddedAsset';
            },
        ]));

        EmbeddedAssetType::generateTypes();

        return $type;
    }

    /**
     * @inheritdoc
     */
    public static function getName(): string
    {
        return 'EmbeddedAssetInterface';
    }

    /**
     * @inheritdoc
     */
    public static function getFieldDefinitions(): array
    {
        $imageType = new ObjectType([
            'name' => 'image',
            'description' => 'Image data',
            'fields' => [
                'url' => [
                    'name' => 'url',
                    'type' => Type::string(),
                    'description' => 'The URL of the image.',
                ],
                'width' => [
                    'name' => 'width',
                    'type' => Type::int(),
                    'description' => 'The width of the image.',
                ],
                'height' => [
                    'name' => 'height',
                    'type' => Type::int(),
                    'description' => 'The height of the image.',
                ],
                'size' => [
                    'name' => 'size',
                    'type' => Type::int(),
                    'description' => 'The size of the image.',
                ],
                'mime' => [
                    'name' => 'mime',
                    'type' => Type::string(),
                    'description' => 'The MIME type of the image.',
                ],
            ],
        ]);

        return TypeManager::prepareFieldDefinitions([
            'title' => [
                'name' => 'title',
                'type' => Type::string(),
                'description' => 'The title of the embedded asset.'
            ],
            'description' => [
                'name' => 'description',
                'type' => Type::string(),
                'description' => 'The description of the embedded asset.'
            ],
            'url' => [
                'name' => 'url',
                'type' => Type::string(),
                'description' => 'The url of the embedded asset.'
            ],
            'type' => [
                'name' => 'type',
                'type' => Type::string(),
                'description' => 'The type of the embedded asset.'
            ],
            'tags' => [
                'name' => 'tags',
                'type' => Type::listOf(Type::string()),
                'description' => 'The tags for the embedded asset.'
            ],
            'feeds' => [
                'name' => 'feeds',
                'type' => Type::listOf(Type::string()),
                'description' => 'The feeds for the embedded asset.'
            ],
            'images' => [
                'name' => 'images',
                'type' => Type::listOf($imageType),
                'description' => 'The images for the embedded asset.'
            ],
            'image' => [
                'name' => 'image',
                'type' => Type::string(),
                'description' => 'The image for the embedded asset.'
            ],
            'imageWidth' => [
                'name' => 'imageWidth',
                'type' => Type::int(),
                'description' => 'The image width for the embedded asset.'
            ],
            'imageHeight' => [
                'name' => 'imageHeight',
                'type' => Type::int(),
                'description' => 'The image height for the embedded asset.'
            ],
            'code' => [
                'name' => 'code',
                'type' => Type::string(),
                'description' => 'The code for the embedded asset.'
            ],
            'width' => [
                'name' => 'width',
                'type' => Type::int(),
                'description' => 'The width for the embedded asset.'
            ],
            'height' => [
                'name' => 'height',
                'type' => Type::int(),
                'description' => 'The height for the embedded asset.'
            ],
            'aspectRatio' => [
                'name' => 'aspectRatio',
                'type' => Type::float(),
                'description' => 'The aspect ratio for the embedded asset.'
            ],
            'authorName' => [
                'name' => 'authorName',
                'type' => Type::string(),
                'description' => 'The author name for the embedded asset.'
            ],
            'authorUrl' => [
                'name' => 'authorUrl',
                'type' => Type::string(),
                'description' => 'The author URL for the embedded asset.'
            ],
            'providerIcons' => [
                'name' => 'providerIcons',
                'type' => Type::listOf($imageType),
                'description' => 'The provider icons for the embedded asset.'
            ],
            'providerIcon' => [
                'name' => 'providerIcon',
                'type' => Type::string(),
                'description' => 'The provider icon for the embedded asset.'
            ],
            'providerName' => [
                'name' => 'providerName',
                'type' => Type::string(),
                'description' => 'The provider name for the embedded asset.'
            ],
            'providerUrl' => [
                'name' => 'providerUrl',
                'type' => Type::string(),
                'description' => 'The provider URL for the embedded asset.'
            ],
            'publishedTime' => [
                'name' => 'publishedTime',
                'type' => Type::string(),
                'description' => 'The published time of the embedded asset.'
            ],
            'license' => [
                'name' => 'license',
                'type' => Type::string(),
                'description' => 'The license for the embedded asset.'
            ],
            'isSafe' => [
                'name' => 'isSafe',
                'type' => Type::boolean(),
                'description' => 'Whether or not the the embed code is safe to use.'
            ],
            'html' => [
                'name' => 'html',
                'type' => Type::string(),
                'description' => 'The embed HTML for the embedded asset.'
            ],
        ], self::getName());
    }
}
