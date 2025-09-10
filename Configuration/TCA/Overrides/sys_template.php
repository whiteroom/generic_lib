<?php
defined('TYPO3') || die();


call_user_func(function()
{
   $extensionKey = 'generic_lib';

   /**
    * Default TypoScript
    */
   \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile(
      $extensionKey,
      'Configuration/TypoScript',
      'whiteRoom'
   );
});