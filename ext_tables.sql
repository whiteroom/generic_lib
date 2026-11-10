#allow longer subheaders
#allow filelink sorting ASC and DESC

CREATE TABLE tt_content (
   subheader text
   
);


# Restore table structure for 'sys_category'
#
# This becomes necessary because we unset
# sortby = 'sorting' in TCA Overrides 
# sys_category.php. TYPO3-Datenbase-Analyzer
# will otherwise not know of this field in 
# table sys_category and tx_news runs into an exeption
#
CREATE TABLE sys_category (
    sorting int(11) DEFAULT '0' NOT NULL
);