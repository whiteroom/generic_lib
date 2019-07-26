<?php
if (!defined('TYPO3_MODE')) {
        die ('Access denied.');
}

// allow longer subheaders
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['max']= 4096;
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['type']= 'text';
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['cols']= 40;
$GLOBALS['TCA']['tt_content']['columns']['subheader']['config']['rows']= 3;


// allow filelink sorting ASC and DESC
// Add new TCA field to the table "tt_content"
$temporaryColumns = array (
        'filelink_sorting_direction' => array (

			    'label' => 'Direction:',
                'config' => array (
                       'type' => 'select',
                       'renderType' => 'selectSingle',
                       'items' => array (
							array('Ascending', 0),
							array('Descending', 1),
                       ),
	                   'size' => 1,
	                   'maxitems' => 1,
	                   'eval' => '',
				       'default' => 0
                )
        ),
);

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTCAcolumns(
        'tt_content',
        $temporaryColumns
);


// Add the field "filelink_sorting_direction" to the TCA palette "uploads"
 \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addFieldsToPalette('tt_content', 'uploads', 'filelink_sorting_direction', 'after:filelink_sorting');