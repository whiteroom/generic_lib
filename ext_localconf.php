<?php
if (!defined('TYPO3_MODE')) {
	die ('Access denied.');
}


\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:EXT:' . $_EXTKEY . '/Configuration/TSconfig/Page" extensions="t3s">');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:EXT:' . $_EXTKEY . '/Configuration/TSconfig/Ext/News" extensions="t3s">');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addUserTSConfig('<INCLUDE_TYPOSCRIPT: source="DIR:EXT:' . $_EXTKEY . '/Configuration/TSconfig/User" extensions="t3s">');


$GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['realurl'] = serialize([
    'configFile' => 'typo3conf/ext/' . $_EXTKEY . '/Configuration/RealUrl/Configuration.php',
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


// add mp3 audio
$GLOBALS['TYPO3_CONF_VARS']['SYS']['FileInfo']['fileExtensionToMimeType']['mp3'] = 'audio/mpeg';


# MediaViewHelper in the core 
# define a list of file extensions of the files that can be handled by these. 
# This list can then be used in the TCA for allowing sys_file_references to these files.
# Comma list of file extensions perceived as media files by TYPO3 (lowercase and no spaces between)
# $GLOBALS['TYPO3_CONF_VARS']['SYS']['mediafile_ext'] = 'gif,jpg,jpeg,bmp,png,pdf,svg,ai,mov,avi';

# Register a file extension as allowed media file (valid for >= TYPO3 CMS 7.5)
$GLOBALS['TYPO3_CONF_VARS']['SYS']['mediafile_ext'] .= ',eps';


# Backwards-Compatability, this is how it was/is done before
# Register your custom file extension as allowed media file (< TYPO3 CMS 7.5)
$GLOBALS['TYPO3_CONF_VARS']['GFX']['imagefile_ext'] .= ',eps';


#  register the rte_ckeditor yaml files via ext_localconf.php.
$GLOBALS['TYPO3_CONF_VARS']['RTE']['Presets']['client_default'] = 'EXT:generic_lib/Configuration/RTE/client.yaml';
