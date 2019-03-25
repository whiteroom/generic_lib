<?php
$TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'] = array(

'init' => array(
    // ...
),


'preVars' => array(
    // ...
    
    
    // Multilanguage Setup
	array(
		'GETvar' => 'L',
		'valueMap' => [
		    // ...
			// Achtung duplicate content, if /de/ is mapped as well
			//'de' => 0,
			'en' => 1,
            'fr' => 2,
		],
		'noMatch' => 'bypass'
	),

),

'fixedPostVars' => array(
    // ...
),

'postVarSets' => array(
    // ...
),

'fileName' => array(
    'defaultToHTMLsuffixOnPrev' => 0,
    'index' => array(
        // ...

        'sitemap.xml' => array(
            'keyValues' => array(
                'type' => 841132,
            ),
        ),

        'sitemap.txt' => array(
            'keyValues' => array(
                'type' => 841131,
            ),
        ),

        'robots.txt' => array(
            'keyValues' => array(
                'type' => 841133,
            ),
        ),

        '_DEFAULT' => array(
            'keyValues' => array(
                'type' => 0,
            )
        ),

    ),
),

'pagePath' => array(
    'type' => 'user',
    'userFunc' => 'EXT:realurl/class.tx_realurl_advanced.php:&tx_realurl_advanced->main',
    'spaceCharacter'    => '-',
    'segTitleFieldList' => 'tx_realurl_pathsegment,alias,nav_title,title',
    'languageGetVar'    => 'L',
    'expireDays'        => 30,
    'rootpage_id'       => 1,
),

);
