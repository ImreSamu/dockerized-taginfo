
generated : 2018-07-25:06:16  // template : ./setup/template/readme.jinja2

### Config files for : "africa"

Experimental version!

System requirements:
* docker-compose: `1.18+`   https://github.com/docker/compose/releases  ( Compose file format >= 3.5)
* docker engine : `17.06.0+`
* developed & tested on Linux  ( ubuntu ) 
* git, make, bash


| fields           | description                                                                                  | 
|------------------| ---------------------------------------------------------------------------------------------| 
| iso              | based on osm data: [ISO3166-1](https://taginfo.openstreetmap.org/keys/ISO3166-1#values) ,  [ISO3166-2](https://taginfo.openstreetmap.org/keys/ISO3166-2) |
| start command    | How to run your area , after you can check your result in the browser - see 'external_port'  |
| name_en          | OSM Admin are  - key:name_en                                                                 |
| name             | OSM Admin are  - key:name                                                                    |
| geofabrik source | minimal geofabrik download area , this is ='SHORTNAME' used by [julien-noblet/download-geofabrik tool](https://github.com/julien-noblet/download-geofabrik)  |
| external port    | external port attached to this container                                                      | 
| comment          | sometimes the config is not perfect yet, see "known problems": antimeridian, area_pct |

service name conventions
* taginfo-`$continent`-`$iso`
  * continent - is a 2 letter abreviation 

Known problems:
* antimeridian : taginfo map is not correct, need more debug 
        * see more https://en.wikipedia.org/wiki/180th_meridian
* area_pct     : geofabrik continent polygon not contain 100% of iso area ,  borders sometimes change
    * be careful, the taginfo statistics is not correct!
* Overpass external link is 99% ok,  but sometimes not working
    * 'Antarctica' : [https://github.com/drolbr/Overpass-API/issues/421 

FAQ:
* I don't see my country area: 
  *  check your area keys: ( `admin_level`=1,2,3,4,5,6 and `boundary`=`administrative` )
     * [ISO3166-1](https://taginfo.openstreetmap.org/keys/ISO3166-1#values) 
     * [ISO3166-2](https://taginfo.openstreetmap.org/keys/ISO3166-2)
   * or the admin border relation was broken when this config generated , sorry  
* Smaller Geofabrik area exist for my country
   * sometimes the osm admin borders is changing, and very hard to keep in sync with geofabrik extracts
   * this version is expect 100% inside the country polygon, if not -> fallback the continent ( africa )

Customisation:
* taginfo customised for smaller extracts - showing data problems on the long tails
* you can modify the  GDNAME="..." value for smaller extracts (download-geofabrik-id)
* ....

License:
* Config files derived from OpenStreetMap data ( ODBL )
* Program code : GPL3

Credits:
* OpenStreetMap contributors and community
* [Geofabrik](https://www.geofabrik.de), for the free download service https://www.geofabrik.de/data/download.html
* https://github.com/taginfo/taginfo author and [contributors](https://github.com/taginfo/taginfo/graphs/contributors)
* https://github.com/julien-noblet/download-geofabrik
* https://github.com/osmcode/osmium-tool
* https://github.com/omniscale/imposm3  
* NaturalEarth data : http://www.naturalearthdata.com/ 
* and other Open Source projects ( linux, posgis, postgresql, osgeo, python, docker, etc )


Be careful!
* This is an experimental software, test on a new VPS 
* Check the size of 'geofabrik source' ,  sometimes it is huge > 1 Gb !  ( like  continents )
* This code expecting minimal docker and linux knowledge.
 
| iso           |start command           | name_en        | name        |  geofabrik source |  external port |  comment |      
|---------------|------------------------|----------------|-------------|-------------------|----------------|----------|
| ao` | make GDNAME=angola taginfo-af-ao`  |  Angola  | Angola |  "angola" | 127.0.0.1:10001|  | 
| bf` | make GDNAME=africa taginfo-af-bf`  |  Burkina Faso  | Burkina Faso |  "africa" | 127.0.0.1:10002|  | 
| bi` | make GDNAME=burundi taginfo-af-bi`  |  Burundi  | Burundi |  "burundi" | 127.0.0.1:10003|  | 
| bj` | make GDNAME=benin taginfo-af-bj`  |  Benin  | Bénin |  "benin" | 127.0.0.1:10004|  | 
| bw` | make GDNAME=africa taginfo-af-bw`  |  Botswana  | Botswana |  "africa" | 127.0.0.1:10005|  | 
| cd` | make GDNAME=africa taginfo-af-cd`  |  Democratic Republic of the Congo  | République démocratique du Congo |  "africa" | 127.0.0.1:10006|  | 
| cf` | make GDNAME=central-african-republic taginfo-af-cf`  |  Central African Republic  | Ködörösêse tî Bêafrîka - République Centrafricaine |  "central-african-republic" | 127.0.0.1:10007|  | 
| cg` | make GDNAME=africa taginfo-af-cg`  |  Congo-Brazzaville  | Congo |  "africa" | 127.0.0.1:10008|  | 
| ci` | make GDNAME=africa taginfo-af-ci`  |  Côte d'Ivoire  | Côte d’Ivoire |  "africa" | 127.0.0.1:10009|  | 
| cm` | make GDNAME=africa taginfo-af-cm`  |  Cameroon  | Cameroun |  "africa" | 127.0.0.1:10010|  | 
| cv` | make GDNAME=cape-verde taginfo-af-cv`  |  Cape Verde  | Cabo Verde |  "cape-verde" | 127.0.0.1:10011|  | 
| dj` | make GDNAME=africa taginfo-af-dj`  |  Djibouti  | Djibouti جيبوتي |  "africa" | 127.0.0.1:10012| area_pct==98.6442% | 
| dz` | make GDNAME=africa taginfo-af-dz`  |  Algeria  | ⵍⵣⵣⴰⵢⴻⵔ الجزائر |  "africa" | 127.0.0.1:10013|  | 
| eg` | make GDNAME=africa taginfo-af-eg`  |  Egypt  | مصر |  "africa" | 127.0.0.1:10014| area_pct==99.6201% | 
| er` | make GDNAME=africa taginfo-af-er`  |  Eritrea  | ኤርትራ إرتريا |  "africa" | 127.0.0.1:10015| area_pct==93.9895% | 
| es-ce` | make GDNAME=spain taginfo-af-es-ce`  |  Ceuta  | Ceuta |  "spain" | 127.0.0.1:10016|  | 
| es-cn` | make GDNAME=canary-islands taginfo-af-es-cn`  |  Canary Islands  | Canarias |  "canary-islands" | 127.0.0.1:10017|  | 
| es-gc` | make GDNAME=canary-islands taginfo-af-es-gc`  |  Las Palmas  | Las Palmas |  "canary-islands" | 127.0.0.1:10018|  | 
| es-ml` | make GDNAME=spain taginfo-af-es-ml`  |  Melilla  | Melilla |  "spain" | 127.0.0.1:10019|  | 
| es-tf` | make GDNAME=canary-islands taginfo-af-es-tf`  |  Santa Cruz de Tenerife  | Santa Cruz de Tenerife |  "canary-islands" | 127.0.0.1:10020|  | 
| et` | make GDNAME=africa taginfo-af-et`  |  Ethiopia  | ኢትዮጵያ |  "africa" | 127.0.0.1:10021|  | 
| fr-may` | make GDNAME=mayotte taginfo-af-fr-may`  |  Mayotte  | Mayotte |  "mayotte" | 127.0.0.1:10022|  | 
| fr-yt` | make GDNAME=mayotte taginfo-af-fr-yt`  |  Mayotte  | Mayotte |  "mayotte" | 127.0.0.1:10023|  | 
| ga` | make GDNAME=gabon taginfo-af-ga`  |  Gabon  | Gabon |  "gabon" | 127.0.0.1:10024|  | 
| gh` | make GDNAME=africa taginfo-af-gh`  |  Ghana  | Ghana |  "africa" | 127.0.0.1:10025|  | 
| gm` | make GDNAME=senegal-and-gambia taginfo-af-gm`  |  Gambia  | Gambia |  "senegal-and-gambia" | 127.0.0.1:10026|  | 
| gn` | make GDNAME=africa taginfo-af-gn`  |  Guinea  | Guinée |  "africa" | 127.0.0.1:10027|  | 
| gq` | make GDNAME=equatorial-guinea taginfo-af-gq`  |  Equatorial Guinea  | Guinea Ecuatorial |  "equatorial-guinea" | 127.0.0.1:10028|  | 
| gw` | make GDNAME=africa taginfo-af-gw`  |  Guinea-Bissau  | Guiné-Bissau |  "africa" | 127.0.0.1:10029|  | 
| ke` | make GDNAME=africa taginfo-af-ke`  |  Kenya  | Kenya |  "africa" | 127.0.0.1:10030|  | 
| km` | make GDNAME=comores taginfo-af-km`  |  Comoros  | Comores Komori جزر القمر |  "comores" | 127.0.0.1:10031|  | 
| lr` | make GDNAME=liberia taginfo-af-lr`  |  Liberia  | Liberia |  "liberia" | 127.0.0.1:10032|  | 
| ls` | make GDNAME=south-africa-and-lesotho taginfo-af-ls`  |  Lesotho  | Lesotho |  "south-africa-and-lesotho" | 127.0.0.1:10033|  | 
| ly` | make GDNAME=africa taginfo-af-ly`  |  Libya  | ليبيا |  "africa" | 127.0.0.1:10034|  | 
| ma` | make GDNAME=africa taginfo-af-ma`  |  Morocco  | Maroc ⵍⵎⵖⵔⵉⴱ المغرب |  "africa" | 127.0.0.1:10035|  | 
| mg` | make GDNAME=africa taginfo-af-mg`  |  Madagascar  | Madagasikara |  "africa" | 127.0.0.1:10036|  | 
| ml` | make GDNAME=mali taginfo-af-ml`  |  Mali  | Mali |  "mali" | 127.0.0.1:10037|  | 
| mr` | make GDNAME=africa taginfo-af-mr`  |  Mauritania  | موريتانيا |  "africa" | 127.0.0.1:10038|  | 
| mu` | make GDNAME=mauritius taginfo-af-mu`  |  Mauritius  | Mauritius |  "mauritius" | 127.0.0.1:10039|  | 
| mw` | make GDNAME=africa taginfo-af-mw`  |  Malawi  | Malawi |  "africa" | 127.0.0.1:10040|  | 
| mz` | make GDNAME=africa taginfo-af-mz`  |  Mozambique  | Moçambique |  "africa" | 127.0.0.1:10041|  | 
| na` | make GDNAME=namibia taginfo-af-na`  |  Namibia  | Namibia |  "namibia" | 127.0.0.1:10042|  | 
| ne` | make GDNAME=africa taginfo-af-ne`  |  Niger  | Niger |  "africa" | 127.0.0.1:10043|  | 
| ng` | make GDNAME=africa taginfo-af-ng`  |  Nigeria  | Nigeria |  "africa" | 127.0.0.1:10044|  | 
| re` | make GDNAME=reunion taginfo-af-re`  |  Réunion  | La Réunion |  "reunion" | 127.0.0.1:10045|  | 
| rw` | make GDNAME=rwanda taginfo-af-rw`  |  Rwanda  | Rwanda |  "rwanda" | 127.0.0.1:10046|  | 
| sc` | make GDNAME=seychelles taginfo-af-sc`  |  Seychelles  | Sesel |  "seychelles" | 127.0.0.1:10047|  | 
| sd` | make GDNAME=africa taginfo-af-sd`  |  Sudan  | السودان |  "africa" | 127.0.0.1:10048| area_pct==99.8537% | 
| sh` | make GDNAME=saint-helena-ascension-and-tristan-da-cunha taginfo-af-sh`  |  Saint Helena, Ascension and Tristan da Cunha  | Saint Helena, Ascension and Tristan da Cunha |  "saint-helena-ascension-and-tristan-da-cunha" | 127.0.0.1:10049|  | 
| sl` | make GDNAME=africa taginfo-af-sl`  |  Sierra Leone  | Sierra Leone |  "africa" | 127.0.0.1:10050|  | 
| sn` | make GDNAME=africa taginfo-af-sn`  |  Senegal  | Sénégal |  "africa" | 127.0.0.1:10051|  | 
| so` | make GDNAME=africa taginfo-af-so`  |  Somalia  | Soomaaliya الصومال |  "africa" | 127.0.0.1:10052|  | 
| ss` | make GDNAME=south-sudan taginfo-af-ss`  |  South Sudan  | South Sudan |  "south-sudan" | 127.0.0.1:10053|  | 
| st` | make GDNAME=sao-tome-and-principe taginfo-af-st`  |  São Tomé and Príncipe  | São Tomé e Príncipe |  "sao-tome-and-principe" | 127.0.0.1:10054|  | 
| sz` | make GDNAME=swaziland taginfo-af-sz`  |  eSwatini  | eSwatini |  "swaziland" | 127.0.0.1:10055|  | 
| td` | make GDNAME=chad taginfo-af-td`  |  Chad  | Tchad تشاد |  "chad" | 127.0.0.1:10056|  | 
| tg` | make GDNAME=africa taginfo-af-tg`  |  Togo  | Togo |  "africa" | 127.0.0.1:10057|  | 
| tn` | make GDNAME=africa taginfo-af-tn`  |  Tunisia  | تونس |  "africa" | 127.0.0.1:10058| area_pct==99.3483% | 
| tz` | make GDNAME=africa taginfo-af-tz`  |  Tanzania  | Tanzania |  "africa" | 127.0.0.1:10059|  | 
| ug` | make GDNAME=africa taginfo-af-ug`  |  Uganda  | Uganda |  "africa" | 127.0.0.1:10060|  | 
| yt` | make GDNAME=africa taginfo-af-yt`  |  Mayotte  | Mayotte |  "africa" | 127.0.0.1:10061|  | 
| za` | make GDNAME=africa taginfo-af-za`  |  South Africa  | South Africa |  "africa" | 127.0.0.1:10062|  | 
| zm` | make GDNAME=africa taginfo-af-zm`  |  Zambia  | Zambia |  "africa" | 127.0.0.1:10063|  | 
| zw` | make GDNAME=africa taginfo-af-zw`  |  Zimbabwe  | Zimbabwe |  "africa" | 127.0.0.1:10064|  |   