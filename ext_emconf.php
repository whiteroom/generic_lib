<?php

/***************************************************************
 * Extension Manager/Repository config file for ext: "client_whiteroom"
 *
 *
 * Manual updates:
 * Only the data in the array - anything else is removed by next write.
 * "version" and "dependencies" must not be touched!
 ***************************************************************/

$EM_CONF['generic_lib'] = array(
	'title' => 'whiteRoom Project Kickstart',
	'description' => 'Extension kick starting a full site',
	'category' => 'distribution',
	'author' => 'Daniel Schoeneck',
	'author_email' => '',
	'state' => 'beta',
    'clearCacheOnLoad' => true,
	'version' => '13.1.4',
	'constraints' => [
	    'depends' => [
	        'php' => '8.1.0-8.3.99',
            'typo3' => '12.4.0-13.4.99',
            'news' => '11.0.0-14.9.99',
			'indexed_search' => '12.4.0-13.4.99',
			'form' => '12.4.0-13.4.99',
			'seo' => '12.4.0-13.4.99',
			'fluid_styled_content' => '12.4.0-13.4.99',
			'impexp' => '12.4.0-13.4.99',
			'rx_shariff' => '16.0.0-16.99.99',
			'vhs' => '7.1.4-7.99.99',
			'dp_cookieconsent' => '13.0.0-13.99.99'
	    ],
	    'conflicts' => [

	    ],
	    'suggests' => [
			'news_administration' => '2.0.0-2.0.99',
	    ]
	]
);
