Um alle Seiten und Records (die über die Standard-Sitemap sitemap.xml bereitgestellt werden) für indexed_search neu zu indizieren, ist ein Custom Command (in der Extension generic_lib) hinterlegt.
Der Command (generic_lib:indexedsearchcache) liest vollautomatisch die sitemap.xml (inklusive aller Domains, Sprachen und Datensätze wie News etc.), leert die alten Suchindizes und triggert einen echten Frontend-Request für jede URL, wodurch TYPO3 den Suchindex komplett neu aufbaut.

Vorteil..

* Keine zusätzliche Extension nötig
* Als Cron Job konfigurierbar

Verlinkte Medien werden indiziert?\
Ausschalten unter: Admin Tools → Einstellungen → Extension Configuration → indexed_search:\
**Ignore Extensions** `(basic.ignoreExtensions)`

List of file extensions that th external parser will ignore (despite having support for them). Comma list.\
`jpg,jpeg,png,gif,webp,svg`

\
**Aufruf des Befehls**

* Dry-Run im Zielverzeichnis
  * ``/opt/plesk/php/8.3/bin/php typo3/sysext/core/bin/typo3 generic_lib:indexedsearchcache --dry-run``
  * ``/usr/local/bin/php typo3/sysext/core/bin/typo3 generic_lib:indexedsearchcache --dry-run``

* Cron Job, z.B. reindex.sh
  * ``/opt/plesk/php/8.3/bin/php /home/httpd/vhosts/foo/httpdocs/bar/typo3/sysext/core/bin/typo3 generic_lib:indexedsearchcache``
  * ``/usr/local/bin/php /home/foo/public_html/bar/typo3/sysext/core/bin/typo3 generic_lib:indexedsearchcache``


Good to know, etc..

* PHP min. 8.2 wegen VHS



