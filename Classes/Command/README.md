Um alle Seiten und Records (die über die Standard-Sitemap sitemap.xml bereitgestellt werden) für indexed_search neu zu indizieren, ist ein Custom Command (in der Extension generic_lib) hinterlegt.
Der Command (generic_lib:indexedsearchcache) liest vollautomatisch die sitemap.xml (inklusive aller Domains, Sprachen und Datensätze wie News etc.), leert die alten Suchindizes und triggert einen echten Frontend-Request für jede URL, wodurch TYPO3 den Suchindex komplett neu aufbaut.

Vorteil..

* Keine zusätzliche Extension nötig
* Als Cron Job konfigurierbar



Aufruf des Befehls

* Entweder direkt in der Console, im Zielverzeichnis
  * ``/opt/plesk/php/8.3/bin/php typo3/sysext/core/bin/typo3 generic_lib:indexedsearchcache``
* Oder als Cron Job, z.B. /home/httpd/vhosts/schoeneck.ch/cron/recache.sh
  * ``/home/httpd/vhosts/schoeneck.ch/httpdocs/schoeneck.ch/typo3/sysext/core/bin/typo3 generic_lib:indexedsearchcache``


Good to know, etc..

* PHP min. 8.2 wegen VHS



