<?php
defined('TYPO3_MODE') || die();



\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile('fluid_styled_content', 'Configuration/TypoScript/Static/', 'Content Elements');



\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile(
    'rx_shariff',
    'Configuration/TypoScript/WithoutJQueryAndFontawesome',
    'Shariff: Plugin settings, FE styles incl. Font-Awesome, jQuery not included'
);



\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile(
	'generic_lib', 
	'Configuration/TypoScript', 
	'whiteRoom'
);