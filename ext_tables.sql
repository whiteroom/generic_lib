#allow longer subheaders
#allow filelink sorting ASC and DESC

CREATE TABLE tt_content (
   filelink_sorting_direction tinyint(1) unsigned DEFAULT '0' NOT NULL, 
   subheader text
   
);