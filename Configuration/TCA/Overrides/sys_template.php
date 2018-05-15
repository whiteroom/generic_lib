<?php
defined('TYPO3_MODE') || die();

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile(
    'fluid_styled_content',
    'Configuration/TypoScript',
    'Fluid Content Elements'
);



\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile(
	$_EXTKEY, 
	'Configuration/TypoScript', 
	'whiteRoom'
);