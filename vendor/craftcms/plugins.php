<?php

$vendorDir = dirname(__DIR__);
$rootDir = dirname(dirname(__DIR__));

return array (
  'craftcms/redactor' => 
  array (
    'class' => 'craft\\redactor\\Plugin',
    'basePath' => $vendorDir . '/craftcms/redactor/src',
    'handle' => 'redactor',
    'aliases' => 
    array (
      '@craft/redactor' => $vendorDir . '/craftcms/redactor/src',
    ),
    'name' => 'Redactor',
    'version' => '2.8.5',
    'description' => 'Edit rich text content in Craft CMS using Redactor by Imperavi.',
    'developer' => 'Pixel & Tonic',
    'developerUrl' => 'https://pixelandtonic.com/',
    'developerEmail' => 'support@craftcms.com',
    'documentationUrl' => 'https://github.com/craftcms/redactor/blob/v2/README.md',
  ),
  'spicyweb/craft-embedded-assets' => 
  array (
    'class' => 'spicyweb\\embeddedassets\\Plugin',
    'basePath' => $vendorDir . '/spicyweb/craft-embedded-assets/src',
    'handle' => 'embeddedassets',
    'aliases' => 
    array (
      '@spicyweb/embeddedassets' => $vendorDir . '/spicyweb/craft-embedded-assets/src',
    ),
    'name' => 'Embedded Assets',
    'version' => '2.4.5',
    'schemaVersion' => '1.0.0',
    'description' => 'Manage YouTube videos, Instagram photos, Twitter posts and more as first class assets',
    'developer' => 'Spicy Web',
    'developerUrl' => 'https://spicyweb.com.au',
    'documentationUrl' => 'https://github.com/spicywebau/craft-embedded-assets/wiki',
    'changelogUrl' => 'https://github.com/spicywebau/craft-embedded-assets/blob/master/CHANGELOG.md',
    'downloadUrl' => 'https://github.com/spicywebau/craft-embedded-assets/archive/master.zip',
  ),
  'weareferal/remote-sync' => 
  array (
    'class' => 'weareferal\\remotesync\\RemoteSync',
    'basePath' => $vendorDir . '/weareferal/remote-sync/src',
    'handle' => 'remote-sync',
    'aliases' => 
    array (
      '@weareferal/remotesync' => $vendorDir . '/weareferal/remote-sync/src',
    ),
    'name' => 'Remote Sync',
    'version' => '1.4.0',
    'description' => 'Sync your database and assets across Craft environments',
    'developer' => 'Timmy O\'Mahony',
    'developerUrl' => 'https://weareferal.com',
    'documentationUrl' => 'https://github.com/weareferal/craft-remote-sync/blob/master/README.md',
    'changelogUrl' => 'https://raw.githubusercontent.com/weareferal/craft-remote-sync/master/CHANGELOG.md',
    'hasCpSettings' => true,
    'hasCpSection' => false,
  ),
  'craftcms/aws-s3' => 
  array (
    'class' => 'craft\\awss3\\Plugin',
    'basePath' => $vendorDir . '/craftcms/aws-s3/src',
    'handle' => 'aws-s3',
    'aliases' => 
    array (
      '@craft/awss3' => $vendorDir . '/craftcms/aws-s3/src',
    ),
    'name' => 'Amazon S3',
    'version' => '1.2.11',
    'description' => 'Amazon S3 integration for Craft CMS',
    'developer' => 'Pixel & Tonic',
    'developerUrl' => 'https://pixelandtonic.com/',
    'developerEmail' => 'support@craftcms.com',
    'documentationUrl' => 'https://github.com/craftcms/aws-s3/blob/master/README.md',
  ),
  'vaersaagod/dospaces' => 
  array (
    'class' => 'vaersaagod\\dospaces\\Plugin',
    'basePath' => $vendorDir . '/vaersaagod/dospaces/src',
    'handle' => 'dospaces',
    'aliases' => 
    array (
      '@vaersaagod/dospaces' => $vendorDir . '/vaersaagod/dospaces/src',
    ),
    'name' => 'DigitalOcean Spaces Volume',
    'version' => '1.1.3',
    'description' => 'DigitalOcean Spaces integration for Craft CMS',
    'developer' => 'Værsågod',
    'developerUrl' => 'https://www.vaersaagod.no/',
    'documentationUrl' => 'https://github.com/vaersaagod/dospaces',
    'changelogUrl' => 'https://raw.githubusercontent.com/vaersaagod/dospaces/master/CHANGELOG.md',
    'downloadUrl' => 'https://github.com/vaersaagod/dospaces/archive/master.zip',
  ),
);
