
generated : 2018-07-25:09:37  // template : ./setup/template/readme.jinja2

### Config files for : "russia"

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
   * this version is expect 100% inside the country polygon, if not -> fallback the continent ( russia )

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
| ru-ad` | make GDNAME=south-fed-district taginfo-ru-ru-ad`  |  Adygea  | Адыгея |  "south-fed-district" | 127.0.0.1:24001|  | 
| ru-al` | make GDNAME=siberian-fed-district taginfo-ru-ru-al`  |  Altai Republic  | Республика Алтай |  "siberian-fed-district" | 127.0.0.1:24002|  | 
| ru-alt` | make GDNAME=siberian-fed-district taginfo-ru-ru-alt`  |  Altai Krai  | Алтайский край |  "siberian-fed-district" | 127.0.0.1:24003|  | 
| ru-amu` | make GDNAME=far-eastern-fed-district taginfo-ru-ru-amu`  |  Amur Oblast  | Амурская область |  "far-eastern-fed-district" | 127.0.0.1:24004|  | 
| ru-ark` | make GDNAME=russia taginfo-ru-ru-ark`  |  Arkhangelsk Oblast  | Архангельская область |  "russia" | 127.0.0.1:24005| area_pct==99.9664% | 
| ru-ast` | make GDNAME=south-fed-district taginfo-ru-ru-ast`  |  Astrakhan Oblast  | Астраханская область |  "south-fed-district" | 127.0.0.1:24006|  | 
| ru-ba` | make GDNAME=volga-fed-district taginfo-ru-ru-ba`  |  Bashkortostan  | Башкортостан |  "volga-fed-district" | 127.0.0.1:24007|  | 
| ru-bel` | make GDNAME=central-fed-district taginfo-ru-ru-bel`  |  Belgorod Oblast  | Белгородская область |  "central-fed-district" | 127.0.0.1:24008|  | 
| ru-bry` | make GDNAME=central-fed-district taginfo-ru-ru-bry`  |  Bryansk Oblast  | Брянская область |  "central-fed-district" | 127.0.0.1:24009|  | 
| ru-bu` | make GDNAME=siberian-fed-district taginfo-ru-ru-bu`  |  Buryatia  | Республика Бурятия |  "siberian-fed-district" | 127.0.0.1:24010|  | 
| ru-ce` | make GDNAME=north-caucasus-fed-district taginfo-ru-ru-ce`  |  Chechnya  | Чечня |  "north-caucasus-fed-district" | 127.0.0.1:24011|  | 
| ru-che` | make GDNAME=ural-fed-district taginfo-ru-ru-che`  |  Chelyabinsk Oblast  | Челябинская область |  "ural-fed-district" | 127.0.0.1:24012|  | 
| ru-chu` | make GDNAME=russia taginfo-ru-ru-chu`  |  Chukotka Autonomous Okrug  | Чукотский автономный округ |  "russia" | 127.0.0.1:24013| area_pct==99.9199% antimeridian | 
| ru-cr` | make GDNAME=crimean-fed-district taginfo-ru-ru-cr`  |  Republic of Crimea  | Республика Крым |  "crimean-fed-district" | 127.0.0.1:24014|  | 
| ru-cu` | make GDNAME=volga-fed-district taginfo-ru-ru-cu`  |  Chuvashia  | Чувашия |  "volga-fed-district" | 127.0.0.1:24015|  | 
| ru-da` | make GDNAME=north-caucasus-fed-district taginfo-ru-ru-da`  |  Dagestan  | Дагестан |  "north-caucasus-fed-district" | 127.0.0.1:24016|  | 
| ru-in` | make GDNAME=north-caucasus-fed-district taginfo-ru-ru-in`  |  Ingushetia  | Ингушетия |  "north-caucasus-fed-district" | 127.0.0.1:24017|  | 
| ru-irk` | make GDNAME=siberian-fed-district taginfo-ru-ru-irk`  |  Irkutsk Oblast  | Иркутская область |  "siberian-fed-district" | 127.0.0.1:24018|  | 
| ru-iva` | make GDNAME=central-fed-district taginfo-ru-ru-iva`  |  Ivanovo Oblast  | Ивановская область |  "central-fed-district" | 127.0.0.1:24019|  | 
| ru-kam` | make GDNAME=far-eastern-fed-district taginfo-ru-ru-kam`  |  Kamchatka Krai  | Камчатский край |  "far-eastern-fed-district" | 127.0.0.1:24020|  | 
| ru-kb` | make GDNAME=north-caucasus-fed-district taginfo-ru-ru-kb`  |  Kabardino-Balkaria  | Кабардино-Балкария |  "north-caucasus-fed-district" | 127.0.0.1:24021|  | 
| ru-kc` | make GDNAME=north-caucasus-fed-district taginfo-ru-ru-kc`  |  Karachay-Cherkessia  | Карачаево-Черкесия |  "north-caucasus-fed-district" | 127.0.0.1:24022|  | 
| ru-kda` | make GDNAME=south-fed-district taginfo-ru-ru-kda`  |  Krasnodar Krai  | Краснодарский край |  "south-fed-district" | 127.0.0.1:24023|  | 
| ru-kem` | make GDNAME=siberian-fed-district taginfo-ru-ru-kem`  |  Kemerovo Oblast  | Кемеровская область |  "siberian-fed-district" | 127.0.0.1:24024|  | 
| ru-kgd` | make GDNAME=kaliningrad taginfo-ru-ru-kgd`  |  Kaliningrad  | Калининградская область |  "kaliningrad" | 127.0.0.1:24025|  | 
| ru-kgn` | make GDNAME=ural-fed-district taginfo-ru-ru-kgn`  |  Kurgan Oblast  | Курганская область |  "ural-fed-district" | 127.0.0.1:24026|  | 
| ru-kha` | make GDNAME=far-eastern-fed-district taginfo-ru-ru-kha`  |  Khabarovsk Krai  | Хабаровский край |  "far-eastern-fed-district" | 127.0.0.1:24027|  | 
| ru-khm` | make GDNAME=ural-fed-district taginfo-ru-ru-khm`  |  Khanty-Mansiysk Autonomous Okrug – Ugra  | Ханты-Мансийский автономный округ - Югра |  "ural-fed-district" | 127.0.0.1:24028|  | 
| ru-kir` | make GDNAME=russia taginfo-ru-ru-kir`  |  Kirov Oblast  | Кировская область |  "russia" | 127.0.0.1:24029|  | 
| ru-kk` | make GDNAME=siberian-fed-district taginfo-ru-ru-kk`  |  Republic of Khakassia  | Республика Хакасия |  "siberian-fed-district" | 127.0.0.1:24030|  | 
| ru-kl` | make GDNAME=russia taginfo-ru-ru-kl`  |  Kalmykia  | Калмыкия |  "russia" | 127.0.0.1:24031|  | 
| ru-klu` | make GDNAME=central-fed-district taginfo-ru-ru-klu`  |  Kaluga Oblast  | Калужская область |  "central-fed-district" | 127.0.0.1:24032|  | 
| ru-ko` | make GDNAME=northwestern-fed-district taginfo-ru-ru-ko`  |  Komi Republic  | Республика Коми |  "northwestern-fed-district" | 127.0.0.1:24033|  | 
| ru-kos` | make GDNAME=central-fed-district taginfo-ru-ru-kos`  |  Kostroma Oblast  | Костромская область |  "central-fed-district" | 127.0.0.1:24034|  | 
| ru-kr` | make GDNAME=northwestern-fed-district taginfo-ru-ru-kr`  |  Republic of Karelia  | Республика Карелия |  "northwestern-fed-district" | 127.0.0.1:24035|  | 
| ru-krs` | make GDNAME=central-fed-district taginfo-ru-ru-krs`  |  Kursk Oblast  | Курская область |  "central-fed-district" | 127.0.0.1:24036|  | 
| ru-kya` | make GDNAME=russia taginfo-ru-ru-kya`  |  Krasnoyarsk Krai  | Красноярский край |  "russia" | 127.0.0.1:24037|  | 
| ru-len` | make GDNAME=northwestern-fed-district taginfo-ru-ru-len`  |  Leningrad oblast  | Ленинградская область |  "northwestern-fed-district" | 127.0.0.1:24038|  | 
| ru-lip` | make GDNAME=central-fed-district taginfo-ru-ru-lip`  |  Lipetsk Oblast  | Липецкая область |  "central-fed-district" | 127.0.0.1:24039|  | 
| ru-mag` | make GDNAME=far-eastern-fed-district taginfo-ru-ru-mag`  |  Magadan Oblast  | Магаданская область |  "far-eastern-fed-district" | 127.0.0.1:24040|  | 
| ru-me` | make GDNAME=volga-fed-district taginfo-ru-ru-me`  |  Mari El  | Марий Эл |  "volga-fed-district" | 127.0.0.1:24041|  | 
| ru-mo` | make GDNAME=volga-fed-district taginfo-ru-ru-mo`  |  Republic of Mordovia  | Мордовия |  "volga-fed-district" | 127.0.0.1:24042|  | 
| ru-mos` | make GDNAME=central-fed-district taginfo-ru-ru-mos`  |  Moscow Oblast  | Московская область |  "central-fed-district" | 127.0.0.1:24043|  | 
| ru-mow` | make GDNAME=central-fed-district taginfo-ru-ru-mow`  |  Moscow  | Москва |  "central-fed-district" | 127.0.0.1:24044|  | 
| ru-mur` | make GDNAME=northwestern-fed-district taginfo-ru-ru-mur`  |  Murmansk Oblast  | Мурманская область |  "northwestern-fed-district" | 127.0.0.1:24045|  | 
| ru-nen` | make GDNAME=northwestern-fed-district taginfo-ru-ru-nen`  |  Nenets Autonomous Okrug  | Ненецкий автономный округ |  "northwestern-fed-district" | 127.0.0.1:24046|  | 
| ru-ngr` | make GDNAME=northwestern-fed-district taginfo-ru-ru-ngr`  |  Novgorod Oblast  | Новгородская область |  "northwestern-fed-district" | 127.0.0.1:24047|  | 
| ru-niz` | make GDNAME=volga-fed-district taginfo-ru-ru-niz`  |  Nizhny Novgorod Oblast  | Нижегородская область |  "volga-fed-district" | 127.0.0.1:24048|  | 
| ru-nvs` | make GDNAME=siberian-fed-district taginfo-ru-ru-nvs`  |  Novosibirsk Oblast  | Новосибирская область |  "siberian-fed-district" | 127.0.0.1:24049|  | 
| ru-oms` | make GDNAME=siberian-fed-district taginfo-ru-ru-oms`  |  Omsk Oblast  | Омская область |  "siberian-fed-district" | 127.0.0.1:24050|  | 
| ru-ore` | make GDNAME=volga-fed-district taginfo-ru-ru-ore`  |  Orenburg Oblast  | Оренбургская область |  "volga-fed-district" | 127.0.0.1:24051|  | 
| ru-orl` | make GDNAME=central-fed-district taginfo-ru-ru-orl`  |  Oryol Oblast  | Орловская область |  "central-fed-district" | 127.0.0.1:24052|  | 
| ru-per` | make GDNAME=volga-fed-district taginfo-ru-ru-per`  |  Perm Krai  | Пермский край |  "volga-fed-district" | 127.0.0.1:24053|  | 
| ru-pnz` | make GDNAME=volga-fed-district taginfo-ru-ru-pnz`  |  Penza Oblast  | Пензенская область |  "volga-fed-district" | 127.0.0.1:24054|  | 
| ru-pri` | make GDNAME=far-eastern-fed-district taginfo-ru-ru-pri`  |  Primorsky Krai  | Приморский край |  "far-eastern-fed-district" | 127.0.0.1:24055|  | 
| ru-psk` | make GDNAME=northwestern-fed-district taginfo-ru-ru-psk`  |  Pskov Oblast  | Псковская область |  "northwestern-fed-district" | 127.0.0.1:24056|  | 
| ru-ros` | make GDNAME=south-fed-district taginfo-ru-ru-ros`  |  Rostov Oblast  | Ростовская область |  "south-fed-district" | 127.0.0.1:24057|  | 
| ru-rya` | make GDNAME=central-fed-district taginfo-ru-ru-rya`  |  Ryazan Oblast  | Рязанская область |  "central-fed-district" | 127.0.0.1:24058|  | 
| ru-sa` | make GDNAME=far-eastern-fed-district taginfo-ru-ru-sa`  |  Sakha Republic  | Республика Саха (Якутия) |  "far-eastern-fed-district" | 127.0.0.1:24059|  | 
| ru-sak` | make GDNAME=far-eastern-fed-district taginfo-ru-ru-sak`  |  Sakhalin Oblast  | Сахалинская область |  "far-eastern-fed-district" | 127.0.0.1:24060|  | 
| ru-sam` | make GDNAME=volga-fed-district taginfo-ru-ru-sam`  |  Samara Oblast  | Самарская область |  "volga-fed-district" | 127.0.0.1:24061|  | 
| ru-sar` | make GDNAME=volga-fed-district taginfo-ru-ru-sar`  |  Saratov Oblast  | Саратовская область |  "volga-fed-district" | 127.0.0.1:24062|  | 
| ru-se` | make GDNAME=north-caucasus-fed-district taginfo-ru-ru-se`  |  North Ossetia–Alania  | Северная Осетия - Алания |  "north-caucasus-fed-district" | 127.0.0.1:24063|  | 
| ru-sev` | make GDNAME=crimean-fed-district taginfo-ru-ru-sev`  |  Sevastopol  | Севастополь |  "crimean-fed-district" | 127.0.0.1:24064|  | 
| ru-smo` | make GDNAME=central-fed-district taginfo-ru-ru-smo`  |  Smolensk Oblast  | Смоленская область |  "central-fed-district" | 127.0.0.1:24065|  | 
| ru-spe` | make GDNAME=northwestern-fed-district taginfo-ru-ru-spe`  |  Saint Petersburg  | Санкт-Петербург |  "northwestern-fed-district" | 127.0.0.1:24066|  | 
| ru-sta` | make GDNAME=russia taginfo-ru-ru-sta`  |  Stavropol Krai  | Ставропольский край |  "russia" | 127.0.0.1:24067|  | 
| ru-sve` | make GDNAME=ural-fed-district taginfo-ru-ru-sve`  |  Sverdlovsk Oblast  | Свердловская область |  "ural-fed-district" | 127.0.0.1:24068|  | 
| ru-ta` | make GDNAME=volga-fed-district taginfo-ru-ru-ta`  |  Tatarstan  | Татарстан |  "volga-fed-district" | 127.0.0.1:24069|  | 
| ru-tam` | make GDNAME=central-fed-district taginfo-ru-ru-tam`  |  Tambov Oblast  | Тамбовская область |  "central-fed-district" | 127.0.0.1:24070|  | 
| ru-tom` | make GDNAME=siberian-fed-district taginfo-ru-ru-tom`  |  Tomsk Oblast  | Томская область |  "siberian-fed-district" | 127.0.0.1:24071|  | 
| ru-tul` | make GDNAME=central-fed-district taginfo-ru-ru-tul`  |  Tula Oblast  | Тульская область |  "central-fed-district" | 127.0.0.1:24072|  | 
| ru-tve` | make GDNAME=central-fed-district taginfo-ru-ru-tve`  |  Tver Oblast  | Тверская область |  "central-fed-district" | 127.0.0.1:24073|  | 
| ru-ty` | make GDNAME=siberian-fed-district taginfo-ru-ru-ty`  |  Tuva Republic  | Республика Тыва |  "siberian-fed-district" | 127.0.0.1:24074|  | 
| ru-tyu` | make GDNAME=russia taginfo-ru-ru-tyu`  |  Tyumen Oblast  | Тюменская область |  "russia" | 127.0.0.1:24075|  | 
| ru-ud` | make GDNAME=volga-fed-district taginfo-ru-ru-ud`  |  Udmurtia  | Удмуртия |  "volga-fed-district" | 127.0.0.1:24076|  | 
| ru-uly` | make GDNAME=volga-fed-district taginfo-ru-ru-uly`  |  Ulyanovsk Oblast  | Ульяновская область |  "volga-fed-district" | 127.0.0.1:24077|  | 
| ru-vgg` | make GDNAME=russia taginfo-ru-ru-vgg`  |  Volgograd Oblast  | Волгоградская область |  "russia" | 127.0.0.1:24078|  | 
| ru-vla` | make GDNAME=central-fed-district taginfo-ru-ru-vla`  |  Vladimir Oblast  | Владимирская область |  "central-fed-district" | 127.0.0.1:24079|  | 
| ru-vlg` | make GDNAME=northwestern-fed-district taginfo-ru-ru-vlg`  |  Vologda Oblast  | Вологодская область |  "northwestern-fed-district" | 127.0.0.1:24080|  | 
| ru-vor` | make GDNAME=central-fed-district taginfo-ru-ru-vor`  |  Voronezh Oblast  | Воронежская область |  "central-fed-district" | 127.0.0.1:24081|  | 
| ru-yan` | make GDNAME=ural-fed-district taginfo-ru-ru-yan`  |  Yamalo-Nenets Autonomous Okrug  | Ямало-Ненецкий автономный округ |  "ural-fed-district" | 127.0.0.1:24082|  | 
| ru-yar` | make GDNAME=central-fed-district taginfo-ru-ru-yar`  |  Yaroslavl Oblast  | Ярославская область |  "central-fed-district" | 127.0.0.1:24083|  | 
| ru-yev` | make GDNAME=far-eastern-fed-district taginfo-ru-ru-yev`  |  Jewish Autonomous Oblast  | Еврейская автономная область |  "far-eastern-fed-district" | 127.0.0.1:24084|  | 
| ru-zab` | make GDNAME=siberian-fed-district taginfo-ru-ru-zab`  |  Zabaykalsky Krai  | Забайкальский край |  "siberian-fed-district" | 127.0.0.1:24085|  |   