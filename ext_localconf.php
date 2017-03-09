<?php
if (!defined('TYPO3_MODE')) {
	die ('Access denied.');
}


/*
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:EXT:' . $_EXTKEY . '/Configuration/TSconfig/Page" extensions="t3s">');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:EXT:' . $_EXTKEY . '/Configuration/TSconfig/Ext/News" extensions="t3s">');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addUserTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:EXT:' . $_EXTKEY . '/Configuration/TSconfig/User" extensions="t3s">');
*/




// ------------------------- //
// INCLUDE Setup Files       //

/*
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTypoScriptSetup('<INCLUDE_TYPOSCRIPT: source="FILE:EXT:fluid_styled_content/Configuration/TypoScript/Static/setup.txt">');

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTypoScriptSetup('<INCLUDE_TYPOSCRIPT: source="FILE:EXT:fluid_styled_responsive_images/Configuration/TypoScript/setup.txt">');

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTypoScriptSetup('<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/' . $_EXTKEY . '/Configuration/TypoScript/setup.txt">');
*/




// ------------------------- //
// INCLUDE Constants Files   //
/*

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTypoScriptConstants('<INCLUDE_TYPOSCRIPT: source="FILE:EXT:fluid_styled_content/Configuration/TypoScript/Static/constants.txt">');

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTypoScriptConstants('<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/' . $_EXTKEY . '/Configuration/TypoScript/constants.txt">');
*/




// ------------------------- //
// INCLUDE TSConfig Files    //

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:fileadmin/' . $_EXTKEY . '/Configuration/TSconfig/Page" extensions="t3s">');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:fileadmin/' . $_EXTKEY . '/Configuration/TSconfig/Ext/News" extensions="t3s">');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addUserTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:fileadmin/' . $_EXTKEY . '/Configuration/TSconfig/User" extensions="t3s">');



/*
$GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['realurl'] = serialize([
    'configFile' => 'typo3conf/ext/' . $_EXTKEY . '/Configuration/RealUrl/Configuration.php',
    'enableAutoConf' => 1
]);
*/

$GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['realurl'] = serialize([
    'configFile' => 'fileadmin/' . $_EXTKEY . '/Configuration/RealUrl/Configuration.php',
    'enableAutoConf' => 1
]);


$GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['rtehtmlarea'] = serialize([
    'enableImages' => 1,
    'enableInlineElements' => 1
]);

$GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['news'] = serialize([
    'manualSorting' => 1
]);


$GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['backend'] = serialize([
    'loginLogo' => 'fileadmin/' . $_EXTKEY . '/Resources/Public/Images/login-logo.svg',
    //'loginHighlightColor' => '#17385E',
    'loginBackgroundImage' => 'fileadmin/' . $_EXTKEY . '/Resources/Public/Images/img_102515664287.jpg',
]);


