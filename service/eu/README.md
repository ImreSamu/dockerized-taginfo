
generated : 2018-07-25:08:48  // template : ./setup/template/readme.jinja2

### Config files for : "europe"

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
   * this version is expect 100% inside the country polygon, if not -> fallback the continent ( europe )

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
| ad` | make GDNAME=europe taginfo-eu-ad`  |  Andorra  | Andorra |  "europe" | 127.0.0.1:20001|  | 
| al` | make GDNAME=europe taginfo-eu-al`  |  Albania  | Shqipëria |  "europe" | 127.0.0.1:20002|  | 
| at` | make GDNAME=europe taginfo-eu-at`  |  Austria  | Österreich |  "europe" | 127.0.0.1:20003|  | 
| ax` | make GDNAME=finland taginfo-eu-ax`  |  Åland Islands  | Åland |  "finland" | 127.0.0.1:20004|  | 
| ba` | make GDNAME=europe taginfo-eu-ba`  |  Bosnia and Herzegovina  | Bosna i Hercegovina / Босна и Херцеговина |  "europe" | 127.0.0.1:20005|  | 
| be` | make GDNAME=europe taginfo-eu-be`  |  Belgium  | België / Belgique / Belgien |  "europe" | 127.0.0.1:20006|  | 
| bg` | make GDNAME=europe taginfo-eu-bg`  |  Bulgaria  | Бългaрия |  "europe" | 127.0.0.1:20007|  | 
| by` | make GDNAME=belarus taginfo-eu-by`  |  Belarus  | Беларусь |  "belarus" | 127.0.0.1:20008|  | 
| ch` | make GDNAME=alps taginfo-eu-ch`  |  Switzerland  | Schweiz/Suisse/Svizzera/Svizra |  "alps" | 127.0.0.1:20009|  | 
| cy` | make GDNAME=cyprus taginfo-eu-cy`  |  Cyprus  | Κύπρος - Kıbrıs |  "cyprus" | 127.0.0.1:20010|  | 
| cz` | make GDNAME=czech-republic taginfo-eu-cz`  |  Czechia  | Česko |  "czech-republic" | 127.0.0.1:20011|  | 
| de-bb` | make GDNAME=germany taginfo-eu-de-bb`  |  Brandenburg  | Brandenburg |  "germany" | 127.0.0.1:20012|  | 
| de-be` | make GDNAME=brandenburg taginfo-eu-de-be`  |  Berlin  | Berlin |  "brandenburg" | 127.0.0.1:20013|  | 
| de-bw` | make GDNAME=dach taginfo-eu-de-bw`  |  Baden-Württemberg  | Baden-Württemberg |  "dach" | 127.0.0.1:20014|  | 
| de-by` | make GDNAME=europe taginfo-eu-de-by`  |  Bavaria  | Bayern |  "europe" | 127.0.0.1:20015|  | 
| de-hb` | make GDNAME=niedersachsen taginfo-eu-de-hb`  |  Bremen  | Bremen |  "niedersachsen" | 127.0.0.1:20016|  | 
| de-he` | make GDNAME=germany taginfo-eu-de-he`  |  Hesse  | Hessen |  "germany" | 127.0.0.1:20017|  | 
| de-hh` | make GDNAME=germany taginfo-eu-de-hh`  |  Hamburg  | Hamburg |  "germany" | 127.0.0.1:20018|  | 
| de-mv` | make GDNAME=europe taginfo-eu-de-mv`  |  Mecklenburg-Vorpommern  | Mecklenburg-Vorpommern |  "europe" | 127.0.0.1:20019|  | 
| de-ni` | make GDNAME=europe taginfo-eu-de-ni`  |  Lower Saxony  | Niedersachsen |  "europe" | 127.0.0.1:20020|  | 
| de-nw` | make GDNAME=germany taginfo-eu-de-nw`  |  North Rhine-Westphalia  | Nordrhein-Westfalen |  "germany" | 127.0.0.1:20021|  | 
| de-rp` | make GDNAME=germany taginfo-eu-de-rp`  |  Rhineland-Palatinate  | Rheinland-Pfalz |  "germany" | 127.0.0.1:20022|  | 
| de-sh` | make GDNAME=europe taginfo-eu-de-sh`  |  Schleswig-Holstein  | Schleswig-Holstein |  "europe" | 127.0.0.1:20023|  | 
| de-sl` | make GDNAME=germany taginfo-eu-de-sl`  |  Saarland  | Saarland |  "germany" | 127.0.0.1:20024|  | 
| de-sn` | make GDNAME=germany taginfo-eu-de-sn`  |  Saxony  | Sachsen |  "germany" | 127.0.0.1:20025|  | 
| de-st` | make GDNAME=germany taginfo-eu-de-st`  |  Saxony-Anhalt  | Sachsen-Anhalt |  "germany" | 127.0.0.1:20026|  | 
| de-th` | make GDNAME=germany taginfo-eu-de-th`  |  Thuringia  | Thüringen |  "germany" | 127.0.0.1:20027|  | 
| dk` | make GDNAME=europe taginfo-eu-dk`  |  Denmark  | Danmark |  "europe" | 127.0.0.1:20028|  | 
| ee` | make GDNAME=estonia taginfo-eu-ee`  |  Estonia  | Eesti |  "estonia" | 127.0.0.1:20029|  | 
| es` | make GDNAME=europe taginfo-eu-es`  |  Spain  | España |  "europe" | 127.0.0.1:20030| area_pct==93.8179% | 
| fi` | make GDNAME=europe taginfo-eu-fi`  |  Finland  | Suomi |  "europe" | 127.0.0.1:20031|  | 
| fo` | make GDNAME=europe taginfo-eu-fo`  |  Faroe Islands  | Føroyar |  "europe" | 127.0.0.1:20032|  | 
| fr-01` | make GDNAME=rhone-alpes taginfo-eu-fr-01`  |  Ain  | Ain |  "rhone-alpes" | 127.0.0.1:20033|  | 
| fr-02` | make GDNAME=picardie taginfo-eu-fr-02`  |  Aisne  | Aisne |  "picardie" | 127.0.0.1:20034|  | 
| fr-03` | make GDNAME=auvergne taginfo-eu-fr-03`  |  Allier  | Allier |  "auvergne" | 127.0.0.1:20035|  | 
| fr-04` | make GDNAME=provence-alpes-cote-d-azur taginfo-eu-fr-04`  |  Alpes-de-Haute-Provence  | Alpes-de-Haute-Provence |  "provence-alpes-cote-d-azur" | 127.0.0.1:20036|  | 
| fr-05` | make GDNAME=provence-alpes-cote-d-azur taginfo-eu-fr-05`  |  Hautes-Alpes  | Hautes-Alpes |  "provence-alpes-cote-d-azur" | 127.0.0.1:20037|  | 
| fr-06` | make GDNAME=provence-alpes-cote-d-azur taginfo-eu-fr-06`  |  Maritime Alps  | Alpes-Maritimes |  "provence-alpes-cote-d-azur" | 127.0.0.1:20038|  | 
| fr-07` | make GDNAME=rhone-alpes taginfo-eu-fr-07`  |  Ardèche  | Ardèche |  "rhone-alpes" | 127.0.0.1:20039|  | 
| fr-08` | make GDNAME=champagne-ardenne taginfo-eu-fr-08`  |  Ardennes  | Ardennes |  "champagne-ardenne" | 127.0.0.1:20040|  | 
| fr-09` | make GDNAME=france taginfo-eu-fr-09`  |  Ariège  | Ariège |  "france" | 127.0.0.1:20041|  | 
| fr-10` | make GDNAME=france taginfo-eu-fr-10`  |  Aube  | Aube |  "france" | 127.0.0.1:20042|  | 
| fr-11` | make GDNAME=languedoc-roussillon taginfo-eu-fr-11`  |  Aude  | Aude |  "languedoc-roussillon" | 127.0.0.1:20043|  | 
| fr-12` | make GDNAME=midi-pyrenees taginfo-eu-fr-12`  |  Aveyron  | Aveyron |  "midi-pyrenees" | 127.0.0.1:20044|  | 
| fr-13` | make GDNAME=provence-alpes-cote-d-azur taginfo-eu-fr-13`  |  Bouches-du-Rhône  | Bouches-du-Rhône |  "provence-alpes-cote-d-azur" | 127.0.0.1:20045|  | 
| fr-14` | make GDNAME=basse-normandie taginfo-eu-fr-14`  |  Calvados  | Calvados |  "basse-normandie" | 127.0.0.1:20046|  | 
| fr-15` | make GDNAME=auvergne taginfo-eu-fr-15`  |  Cantal  | Cantal |  "auvergne" | 127.0.0.1:20047|  | 
| fr-16` | make GDNAME=poitou-charentes taginfo-eu-fr-16`  |  Charente  | Charente |  "poitou-charentes" | 127.0.0.1:20048|  | 
| fr-17` | make GDNAME=poitou-charentes taginfo-eu-fr-17`  |  Charente-Maritime  | Charente-Maritime |  "poitou-charentes" | 127.0.0.1:20049|  | 
| fr-18` | make GDNAME=centre taginfo-eu-fr-18`  |  Cher  | Cher |  "centre" | 127.0.0.1:20050|  | 
| fr-19` | make GDNAME=limousin taginfo-eu-fr-19`  |  Corrèze  | Corrèze |  "limousin" | 127.0.0.1:20051|  | 
| fr-21` | make GDNAME=bourgogne taginfo-eu-fr-21`  |  Côte-d'Or  | Côte-d'Or |  "bourgogne" | 127.0.0.1:20052|  | 
| fr-22` | make GDNAME=bretagne taginfo-eu-fr-22`  |  Côtes-d'Armor  | Côtes-d'Armor |  "bretagne" | 127.0.0.1:20053|  | 
| fr-23` | make GDNAME=limousin taginfo-eu-fr-23`  |  Creuse  | Creuse |  "limousin" | 127.0.0.1:20054|  | 
| fr-24` | make GDNAME=aquitaine taginfo-eu-fr-24`  |  Dordogne  | Dordogne |  "aquitaine" | 127.0.0.1:20055|  | 
| fr-25` | make GDNAME=franche-comte taginfo-eu-fr-25`  |  Doubs  | Doubs |  "franche-comte" | 127.0.0.1:20056|  | 
| fr-26` | make GDNAME=rhone-alpes taginfo-eu-fr-26`  |  Drôme  | Drôme |  "rhone-alpes" | 127.0.0.1:20057|  | 
| fr-27` | make GDNAME=haute-normandie taginfo-eu-fr-27`  |  Eure  | Eure |  "haute-normandie" | 127.0.0.1:20058|  | 
| fr-28` | make GDNAME=france taginfo-eu-fr-28`  |  Eure-et-Loir  | Eure-et-Loir |  "france" | 127.0.0.1:20059|  | 
| fr-29` | make GDNAME=bretagne taginfo-eu-fr-29`  |  Finistère  | Finistère |  "bretagne" | 127.0.0.1:20060|  | 
| fr-2a` | make GDNAME=corse taginfo-eu-fr-2a`  |  South Corsica  | Corse-du-Sud |  "corse" | 127.0.0.1:20061|  | 
| fr-2b` | make GDNAME=corse taginfo-eu-fr-2b`  |  Haute-Corse  | Haute-Corse |  "corse" | 127.0.0.1:20062|  | 
| fr-30` | make GDNAME=france taginfo-eu-fr-30`  |  Gard  | Gard |  "france" | 127.0.0.1:20063|  | 
| fr-31` | make GDNAME=france taginfo-eu-fr-31`  |  Haute-Garonne  | Haute-Garonne |  "france" | 127.0.0.1:20064|  | 
| fr-32` | make GDNAME=midi-pyrenees taginfo-eu-fr-32`  |  Gers  | Gers |  "midi-pyrenees" | 127.0.0.1:20065|  | 
| fr-33` | make GDNAME=aquitaine taginfo-eu-fr-33`  |  Gironde  | Gironde |  "aquitaine" | 127.0.0.1:20066|  | 
| fr-34` | make GDNAME=languedoc-roussillon taginfo-eu-fr-34`  |  Hérault  | Hérault |  "languedoc-roussillon" | 127.0.0.1:20067|  | 
| fr-35` | make GDNAME=bretagne taginfo-eu-fr-35`  |  Ille-et-Vilaine  | Ille-et-Vilaine |  "bretagne" | 127.0.0.1:20068|  | 
| fr-36` | make GDNAME=centre taginfo-eu-fr-36`  |  Indre  | Indre |  "centre" | 127.0.0.1:20069|  | 
| fr-37` | make GDNAME=centre taginfo-eu-fr-37`  |  Indre-et-Loire  | Indre-et-Loire |  "centre" | 127.0.0.1:20070|  | 
| fr-38` | make GDNAME=rhone-alpes taginfo-eu-fr-38`  |  Isère  | Isère |  "rhone-alpes" | 127.0.0.1:20071|  | 
| fr-39` | make GDNAME=france taginfo-eu-fr-39`  |  Jura  | Jura |  "france" | 127.0.0.1:20072|  | 
| fr-40` | make GDNAME=aquitaine taginfo-eu-fr-40`  |  Landes  | Landes |  "aquitaine" | 127.0.0.1:20073|  | 
| fr-41` | make GDNAME=centre taginfo-eu-fr-41`  |  Loir-et-Cher  | Loir-et-Cher |  "centre" | 127.0.0.1:20074|  | 
| fr-42` | make GDNAME=rhone-alpes taginfo-eu-fr-42`  |  Loire  | Loire |  "rhone-alpes" | 127.0.0.1:20075|  | 
| fr-43` | make GDNAME=auvergne taginfo-eu-fr-43`  |  Haute-Loire  | Haute-Loire |  "auvergne" | 127.0.0.1:20076|  | 
| fr-44` | make GDNAME=france taginfo-eu-fr-44`  |  Loire-Atlantique  | Loire-Atlantique |  "france" | 127.0.0.1:20077|  | 
| fr-45` | make GDNAME=centre taginfo-eu-fr-45`  |  Loiret  | Loiret |  "centre" | 127.0.0.1:20078|  | 
| fr-46` | make GDNAME=midi-pyrenees taginfo-eu-fr-46`  |  Lot  | Lot |  "midi-pyrenees" | 127.0.0.1:20079|  | 
| fr-47` | make GDNAME=aquitaine taginfo-eu-fr-47`  |  Lot-et-Garonne  | Lot-et-Garonne |  "aquitaine" | 127.0.0.1:20080|  | 
| fr-48` | make GDNAME=languedoc-roussillon taginfo-eu-fr-48`  |  Lozère  | Lozère |  "languedoc-roussillon" | 127.0.0.1:20081|  | 
| fr-49` | make GDNAME=pays-de-la-loire taginfo-eu-fr-49`  |  Maine-et-Loire  | Maine-et-Loire |  "pays-de-la-loire" | 127.0.0.1:20082|  | 
| fr-50` | make GDNAME=basse-normandie taginfo-eu-fr-50`  |  Manche  | Manche |  "basse-normandie" | 127.0.0.1:20083|  | 
| fr-51` | make GDNAME=france taginfo-eu-fr-51`  |  Marne  | Marne |  "france" | 127.0.0.1:20084|  | 
| fr-52` | make GDNAME=champagne-ardenne taginfo-eu-fr-52`  |  Haute-Marne  | Haute-Marne |  "champagne-ardenne" | 127.0.0.1:20085|  | 
| fr-53` | make GDNAME=pays-de-la-loire taginfo-eu-fr-53`  |  Mayenne  | Mayenne |  "pays-de-la-loire" | 127.0.0.1:20086|  | 
| fr-54` | make GDNAME=lorraine taginfo-eu-fr-54`  |  Meurthe-et-Moselle  | Meurthe-et-Moselle |  "lorraine" | 127.0.0.1:20087|  | 
| fr-55` | make GDNAME=lorraine taginfo-eu-fr-55`  |  Meuse  | Meuse |  "lorraine" | 127.0.0.1:20088|  | 
| fr-56` | make GDNAME=bretagne taginfo-eu-fr-56`  |  Morbihan  | Morbihan |  "bretagne" | 127.0.0.1:20089|  | 
| fr-57` | make GDNAME=lorraine taginfo-eu-fr-57`  |  Moselle  | Moselle |  "lorraine" | 127.0.0.1:20090|  | 
| fr-58` | make GDNAME=bourgogne taginfo-eu-fr-58`  |  Nièvre  | Nièvre |  "bourgogne" | 127.0.0.1:20091|  | 
| fr-59` | make GDNAME=nord-pas-de-calais taginfo-eu-fr-59`  |  Nord  | Nord |  "nord-pas-de-calais" | 127.0.0.1:20092|  | 
| fr-60` | make GDNAME=picardie taginfo-eu-fr-60`  |  Oise  | Oise |  "picardie" | 127.0.0.1:20093|  | 
| fr-61` | make GDNAME=basse-normandie taginfo-eu-fr-61`  |  Orne  | Orne |  "basse-normandie" | 127.0.0.1:20094|  | 
| fr-62` | make GDNAME=nord-pas-de-calais taginfo-eu-fr-62`  |  Pas-de-Calais  | Pas-de-Calais |  "nord-pas-de-calais" | 127.0.0.1:20095|  | 
| fr-63` | make GDNAME=auvergne taginfo-eu-fr-63`  |  Puy-de-Dôme  | Puy-de-Dôme |  "auvergne" | 127.0.0.1:20096|  | 
| fr-64` | make GDNAME=aquitaine taginfo-eu-fr-64`  |  Pyrénées-Atlantiques  | Pyrénées-Atlantiques |  "aquitaine" | 127.0.0.1:20097|  | 
| fr-65` | make GDNAME=france taginfo-eu-fr-65`  |  Hautespyrenees  | Hautes-Pyrénées |  "france" | 127.0.0.1:20098|  | 
| fr-66` | make GDNAME=languedoc-roussillon taginfo-eu-fr-66`  |  Pyrénées-Orientales  | Pyrénées-Orientales |  "languedoc-roussillon" | 127.0.0.1:20099|  | 
| fr-67` | make GDNAME=alsace taginfo-eu-fr-67`  |  Bas-Rhin  | Bas-Rhin |  "alsace" | 127.0.0.1:20100|  | 
| fr-68` | make GDNAME=alsace taginfo-eu-fr-68`  |  Haut-Rhin  | Haut-Rhin |  "alsace" | 127.0.0.1:20101|  | 
| fr-69` | make GDNAME=rhone-alpes taginfo-eu-fr-69`  |  Departemental constituency of Rhône  | Circonscription départementale du Rhône |  "rhone-alpes" | 127.0.0.1:20102|  | 
| fr-70` | make GDNAME=franche-comte taginfo-eu-fr-70`  |  Haute-Saône  | Haute-Saône |  "franche-comte" | 127.0.0.1:20103|  | 
| fr-71` | make GDNAME=bourgogne taginfo-eu-fr-71`  |  Saône-et-Loire  | Saône-et-Loire |  "bourgogne" | 127.0.0.1:20104|  | 
| fr-72` | make GDNAME=pays-de-la-loire taginfo-eu-fr-72`  |  Sarthe  | Sarthe |  "pays-de-la-loire" | 127.0.0.1:20105|  | 
| fr-73` | make GDNAME=rhone-alpes taginfo-eu-fr-73`  |  Savoy  | Savoie |  "rhone-alpes" | 127.0.0.1:20106|  | 
| fr-74` | make GDNAME=alps taginfo-eu-fr-74`  |  Upper Savoy  | Haute-Savoie |  "alps" | 127.0.0.1:20107|  | 
| fr-75` | make GDNAME=ile-de-france taginfo-eu-fr-75`  |  Paris  | Paris |  "ile-de-france" | 127.0.0.1:20108|  | 
| fr-76` | make GDNAME=haute-normandie taginfo-eu-fr-76`  |  Seine-Maritime  | Seine-Maritime |  "haute-normandie" | 127.0.0.1:20109|  | 
| fr-77` | make GDNAME=ile-de-france taginfo-eu-fr-77`  |  Seine-et-Marne  | Seine-et-Marne |  "ile-de-france" | 127.0.0.1:20110|  | 
| fr-78` | make GDNAME=ile-de-france taginfo-eu-fr-78`  |  Yvelines  | Yvelines |  "ile-de-france" | 127.0.0.1:20111|  | 
| fr-79` | make GDNAME=poitou-charentes taginfo-eu-fr-79`  |  Deux-Sèvres  | Deux-Sèvres |  "poitou-charentes" | 127.0.0.1:20112|  | 
| fr-80` | make GDNAME=picardie taginfo-eu-fr-80`  |  Somme  | Somme |  "picardie" | 127.0.0.1:20113|  | 
| fr-81` | make GDNAME=midi-pyrenees taginfo-eu-fr-81`  |  Tarn  | Tarn |  "midi-pyrenees" | 127.0.0.1:20114|  | 
| fr-82` | make GDNAME=midi-pyrenees taginfo-eu-fr-82`  |  Tarn-et-Garonne  | Tarn-et-Garonne |  "midi-pyrenees" | 127.0.0.1:20115|  | 
| fr-83` | make GDNAME=provence-alpes-cote-d-azur taginfo-eu-fr-83`  |  Var  | Var |  "provence-alpes-cote-d-azur" | 127.0.0.1:20116|  | 
| fr-84` | make GDNAME=provence-alpes-cote-d-azur taginfo-eu-fr-84`  |  Vaucluse  | Vaucluse |  "provence-alpes-cote-d-azur" | 127.0.0.1:20117|  | 
| fr-85` | make GDNAME=france taginfo-eu-fr-85`  |  Vendée  | Vendée |  "france" | 127.0.0.1:20118|  | 
| fr-86` | make GDNAME=poitou-charentes taginfo-eu-fr-86`  |  Vienne  | Vienne |  "poitou-charentes" | 127.0.0.1:20119|  | 
| fr-87` | make GDNAME=limousin taginfo-eu-fr-87`  |  Haute-Vienne  | Haute-Vienne |  "limousin" | 127.0.0.1:20120|  | 
| fr-88` | make GDNAME=lorraine taginfo-eu-fr-88`  |  Vosges  | Vosges |  "lorraine" | 127.0.0.1:20121|  | 
| fr-89` | make GDNAME=bourgogne taginfo-eu-fr-89`  |  Yonne  | Yonne |  "bourgogne" | 127.0.0.1:20122|  | 
| fr-90` | make GDNAME=franche-comte taginfo-eu-fr-90`  |  Territoire-de-Belfort  | Territoire-de-Belfort |  "franche-comte" | 127.0.0.1:20123|  | 
| fr-91` | make GDNAME=france taginfo-eu-fr-91`  |  Essonne  | Essonne |  "france" | 127.0.0.1:20124|  | 
| fr-92` | make GDNAME=ile-de-france taginfo-eu-fr-92`  |  Hauts-de-Seine  | Hauts-de-Seine |  "ile-de-france" | 127.0.0.1:20125|  | 
| fr-93` | make GDNAME=ile-de-france taginfo-eu-fr-93`  |  Seine-Saint-Denis  | Seine-Saint-Denis |  "ile-de-france" | 127.0.0.1:20126|  | 
| fr-94` | make GDNAME=ile-de-france taginfo-eu-fr-94`  |  Val-de-Marne  | Val-de-Marne |  "ile-de-france" | 127.0.0.1:20127|  | 
| fr-95` | make GDNAME=ile-de-france taginfo-eu-fr-95`  |  Val-d'Oise  | Val-d'Oise |  "ile-de-france" | 127.0.0.1:20128|  | 
| fr-ara` | make GDNAME=europe taginfo-eu-fr-ara`  |  Auvergne-Rhône-Alpes  | Auvergne-Rhône-Alpes |  "europe" | 127.0.0.1:20129|  | 
| fr-bfc` | make GDNAME=france taginfo-eu-fr-bfc`  |  Bourgogne-Franche-Comté  | Bourgogne-Franche-Comté |  "france" | 127.0.0.1:20130|  | 
| fr-bre` | make GDNAME=bretagne taginfo-eu-fr-bre`  |  Brittany  | Bretagne |  "bretagne" | 127.0.0.1:20131|  | 
| fr-cor` | make GDNAME=corse taginfo-eu-fr-cor`  |  Corsica  | Corse |  "corse" | 127.0.0.1:20132|  | 
| fr-cvl` | make GDNAME=france taginfo-eu-fr-cvl`  |  Centre-Loire Valley  | Centre-Val de Loire |  "france" | 127.0.0.1:20133|  | 
| fr-ges` | make GDNAME=france taginfo-eu-fr-ges`  |  Grand Est  | Grand Est |  "france" | 127.0.0.1:20134|  | 
| fr-hdf` | make GDNAME=france taginfo-eu-fr-hdf`  |  Hauts-de-France  | Hauts-de-France |  "france" | 127.0.0.1:20135|  | 
| fr-idf` | make GDNAME=france taginfo-eu-fr-idf`  |  Ile-de-France  | Île-de-France |  "france" | 127.0.0.1:20136|  | 
| fr-naq` | make GDNAME=france taginfo-eu-fr-naq`  |  New Aquitaine  | Nouvelle-Aquitaine |  "france" | 127.0.0.1:20137|  | 
| fr-nor` | make GDNAME=france taginfo-eu-fr-nor`  |  Normandy  | Normandie |  "france" | 127.0.0.1:20138|  | 
| fr-occ` | make GDNAME=france taginfo-eu-fr-occ`  |  Occitania  | Occitanie |  "france" | 127.0.0.1:20139|  | 
| fr-pac` | make GDNAME=provence-alpes-cote-d-azur taginfo-eu-fr-pac`  |  Provence-Alpes-Côte d'Azur  | Provence-Alpes-Côte d'Azur |  "provence-alpes-cote-d-azur" | 127.0.0.1:20140|  | 
| fr-pdl` | make GDNAME=france taginfo-eu-fr-pdl`  |  Pays de la Loire  | Pays de la Loire |  "france" | 127.0.0.1:20141|  | 
| gb` | make GDNAME=europe taginfo-eu-gb`  |  United Kingdom  | United Kingdom |  "europe" | 127.0.0.1:20142|  | 
| ge` | make GDNAME=europe taginfo-eu-ge`  |  Georgia  | საქართველო |  "europe" | 127.0.0.1:20143|  | 
| gg` | make GDNAME=great-britain taginfo-eu-gg`  |  Guernsey  | Guernsey |  "great-britain" | 127.0.0.1:20144|  | 
| gi` | make GDNAME=spain taginfo-eu-gi`  |  Gibraltar  | Gibraltar |  "spain" | 127.0.0.1:20145|  | 
| gr` | make GDNAME=europe taginfo-eu-gr`  |  Greece  | Ελλάδα |  "europe" | 127.0.0.1:20146|  | 
| hr` | make GDNAME=europe taginfo-eu-hr`  |  Croatia  | Hrvatska |  "europe" | 127.0.0.1:20147|  | 
| hu` | make GDNAME=europe taginfo-eu-hu`  |  Hungary  | Magyarország |  "europe" | 127.0.0.1:20148|  | 
| ie` | make GDNAME=ireland-and-northern-ireland taginfo-eu-ie`  |  Ireland  | Ireland |  "ireland-and-northern-ireland" | 127.0.0.1:20149|  | 
| im` | make GDNAME=isle-of-man taginfo-eu-im`  |  Isle of Man  | Isle of Man |  "isle-of-man" | 127.0.0.1:20150|  | 
| is` | make GDNAME=iceland taginfo-eu-is`  |  Iceland  | Ísland |  "iceland" | 127.0.0.1:20151|  | 
| it` | make GDNAME=europe taginfo-eu-it`  |  Italy  | Italia |  "europe" | 127.0.0.1:20152|  | 
| it-32` | make GDNAME=alps taginfo-eu-it-32`  |  Trentino-Alto Adige/Südtirol  | Trentino-Alto Adige/Südtirol |  "alps" | 127.0.0.1:20153|  | 
| it-88` | make GDNAME=isole taginfo-eu-it-88`  |  Sardinia  | Sardegna |  "isole" | 127.0.0.1:20154|  | 
| je` | make GDNAME=france taginfo-eu-je`  |  Jersey  | Jersey |  "france" | 127.0.0.1:20155|  | 
| li` | make GDNAME=alps taginfo-eu-li`  |  Liechtenstein  | Liechtenstein |  "alps" | 127.0.0.1:20156|  | 
| lt` | make GDNAME=europe taginfo-eu-lt`  |  Lithuania  | Lietuva |  "europe" | 127.0.0.1:20157|  | 
| lu` | make GDNAME=europe taginfo-eu-lu`  |  Luxembourg  | Lëtzebuerg |  "europe" | 127.0.0.1:20158|  | 
| lv` | make GDNAME=europe taginfo-eu-lv`  |  Latvia  | Latvija |  "europe" | 127.0.0.1:20159|  | 
| mc` | make GDNAME=provence-alpes-cote-d-azur taginfo-eu-mc`  |  Monaco  | Monaco |  "provence-alpes-cote-d-azur" | 127.0.0.1:20160|  | 
| md` | make GDNAME=europe taginfo-eu-md`  |  Moldova  | Moldova |  "europe" | 127.0.0.1:20161|  | 
| me` | make GDNAME=europe taginfo-eu-me`  |  Montenegro  | Crna Gora / Црна Гора |  "europe" | 127.0.0.1:20162|  | 
| mk` | make GDNAME=europe taginfo-eu-mk`  |  Macedonia  | Македонија |  "europe" | 127.0.0.1:20163|  | 
| mt` | make GDNAME=europe taginfo-eu-mt`  |  Malta  | Malta |  "europe" | 127.0.0.1:20164|  | 
| nl` | make GDNAME=europe taginfo-eu-nl`  |  The Netherlands  | Nederland |  "europe" | 127.0.0.1:20165| area_pct==83.3819% | 
| nl-dr` | make GDNAME=netherlands taginfo-eu-nl-dr`  |  Drenthe  | Drenthe |  "netherlands" | 127.0.0.1:20166|  | 
| nl-fl` | make GDNAME=netherlands taginfo-eu-nl-fl`  |  Flevoland  | Flevoland |  "netherlands" | 127.0.0.1:20167|  | 
| nl-fr` | make GDNAME=netherlands taginfo-eu-nl-fr`  |  Friesland  | Fryslân |  "netherlands" | 127.0.0.1:20168|  | 
| nl-ge` | make GDNAME=netherlands taginfo-eu-nl-ge`  |  Gelderland  | Gelderland |  "netherlands" | 127.0.0.1:20169|  | 
| nl-gr` | make GDNAME=netherlands taginfo-eu-nl-gr`  |  Groningen  | Groningen |  "netherlands" | 127.0.0.1:20170|  | 
| nl-li` | make GDNAME=europe taginfo-eu-nl-li`  |  Limburg  | Limburg |  "europe" | 127.0.0.1:20171|  | 
| nl-nb` | make GDNAME=netherlands taginfo-eu-nl-nb`  |  North Brabant  | Noord-Brabant |  "netherlands" | 127.0.0.1:20172|  | 
| nl-nh` | make GDNAME=netherlands taginfo-eu-nl-nh`  |  North Holland  | Noord-Holland |  "netherlands" | 127.0.0.1:20173|  | 
| nl-ov` | make GDNAME=netherlands taginfo-eu-nl-ov`  |  Overijssel  | Overijssel |  "netherlands" | 127.0.0.1:20174|  | 
| nl-ut` | make GDNAME=netherlands taginfo-eu-nl-ut`  |  Utrecht  | Utrecht |  "netherlands" | 127.0.0.1:20175|  | 
| nl-ze` | make GDNAME=netherlands taginfo-eu-nl-ze`  |  Zeeland  | Zeeland |  "netherlands" | 127.0.0.1:20176|  | 
| nl-zh` | make GDNAME=netherlands taginfo-eu-nl-zh`  |  South Holland  | Zuid-Holland |  "netherlands" | 127.0.0.1:20177|  | 
| no` | make GDNAME=europe taginfo-eu-no`  |  Norway  | Norge |  "europe" | 127.0.0.1:20178| area_pct==99.7957% | 
| pl` | make GDNAME=poland taginfo-eu-pl`  |  Poland  | Polska |  "poland" | 127.0.0.1:20179|  | 
| pt` | make GDNAME=europe taginfo-eu-pt`  |  Portugal  | Portugal |  "europe" | 127.0.0.1:20180|  | 
| ro` | make GDNAME=romania taginfo-eu-ro`  |  Romania  | România |  "romania" | 127.0.0.1:20181|  | 
| rs` | make GDNAME=europe taginfo-eu-rs`  |  Serbia  | Србија |  "europe" | 127.0.0.1:20182|  | 
| se` | make GDNAME=europe taginfo-eu-se`  |  Sweden  | Sverige |  "europe" | 127.0.0.1:20183|  | 
| si` | make GDNAME=alps taginfo-eu-si`  |  Slovenia  | Slovenija |  "alps" | 127.0.0.1:20184|  | 
| sk` | make GDNAME=europe taginfo-eu-sk`  |  Slovakia  | Slovensko |  "europe" | 127.0.0.1:20185|  | 
| sm` | make GDNAME=italy taginfo-eu-sm`  |  San Marino  | San Marino |  "italy" | 127.0.0.1:20186|  | 
| tr` | make GDNAME=europe taginfo-eu-tr`  |  Turkey  | Türkiye |  "europe" | 127.0.0.1:20187|  | 
| ua` | make GDNAME=ukraine taginfo-eu-ua`  |  Ukraine  | Україна |  "ukraine" | 127.0.0.1:20188|  | 
| va` | make GDNAME=centro taginfo-eu-va`  |  Vatican City  | Civitas Vaticana |  "centro" | 127.0.0.1:20189|  | 
| xk` | make GDNAME=europe taginfo-eu-xk`  |  Kosovo  | Kosovë / Kosovo |  "europe" | 127.0.0.1:20190|  |   