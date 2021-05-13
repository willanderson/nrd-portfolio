<?php
/**
 * General Configuration
 *
 * All of your system's general configuration settings go in here. You can see a
 * list of the available settings in vendor/craftcms/cms/src/config/GeneralConfig.php.
 *
 * @see \craft\config\GeneralConfig
 */

use craft\helpers\App;

return array(
  'localhost' => array(
    'devMode' => true,
    'siteUrl' => 'http://localhost',
    'environmentVariables' => array(
      'basePath' => '/Users/will/Projects/craft/web',
      'baseUrl'  => 'http://localhost/',
    ),
    'testToEmailAddress' => 'wmaxand@gmail.com',
  ),

  // Use IP address of your droplet below
  '12.34.56.78' => array(
    'siteUrl' => 'http://68.183.141.24/',
    'environmentVariables' => array(
      'basePath' => '/var/www/web/nrd-portfolio/web',
      'baseUrl'  => 'http://68.183.141.24/',
    )
  )
);
