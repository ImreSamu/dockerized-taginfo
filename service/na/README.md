
generated : 2018-07-25:09:10  // template : ./setup/template/readme.jinja2

### Config files for : "north-america"

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
   * this version is expect 100% inside the country polygon, if not -> fallback the continent ( north-america )

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
| bm` | make GDNAME=north-america taginfo-na-bm`  |  Bermuda  | Bermuda |  "north-america" | 127.0.0.1:22001|  | 
| ca-ab` | make GDNAME=canada taginfo-na-ca-ab`  |  Alberta  | Alberta |  "canada" | 127.0.0.1:22002|  | 
| ca-bc` | make GDNAME=north-america taginfo-na-ca-bc`  |  British Columbia  | British Columbia |  "north-america" | 127.0.0.1:22003|  | 
| ca-mb` | make GDNAME=manitoba taginfo-na-ca-mb`  |  Manitoba  | Manitoba |  "manitoba" | 127.0.0.1:22004|  | 
| ca-nb` | make GDNAME=north-america taginfo-na-ca-nb`  |  New Brunswick  | New Brunswick |  "north-america" | 127.0.0.1:22005|  | 
| ca-nl` | make GDNAME=newfoundland-and-labrador taginfo-na-ca-nl`  |  Newfoundland and Labrador  | Newfoundland and Labrador |  "newfoundland-and-labrador" | 127.0.0.1:22006|  | 
| ca-ns` | make GDNAME=nova-scotia taginfo-na-ca-ns`  |  Nova Scotia  | Nova Scotia |  "nova-scotia" | 127.0.0.1:22007|  | 
| ca-nt` | make GDNAME=canada taginfo-na-ca-nt`  |  Northwest Territories  | Northwest Territories |  "canada" | 127.0.0.1:22008|  | 
| ca-nu` | make GDNAME=north-america taginfo-na-ca-nu`  |  Nunavut  | Nunavut |  "north-america" | 127.0.0.1:22009|  | 
| ca-on` | make GDNAME=north-america taginfo-na-ca-on`  |  Ontario  | Ontario |  "north-america" | 127.0.0.1:22010|  | 
| ca-pe` | make GDNAME=canada taginfo-na-ca-pe`  |  Prince Edward Island  | Prince Edward Island |  "canada" | 127.0.0.1:22011|  | 
| ca-qc` | make GDNAME=north-america taginfo-na-ca-qc`  |  Quebec  | Québec |  "north-america" | 127.0.0.1:22012|  | 
| ca-sk` | make GDNAME=saskatchewan taginfo-na-ca-sk`  |  Saskatchewan  | Saskatchewan |  "saskatchewan" | 127.0.0.1:22013|  | 
| ca-yt` | make GDNAME=canada taginfo-na-ca-yt`  |  Yukon  | Yukon |  "canada" | 127.0.0.1:22014|  | 
| fr-pm` | make GDNAME=canada taginfo-na-fr-pm`  |  Saint Pierre and Miquelon  | Saint-Pierre-et-Miquelon |  "canada" | 127.0.0.1:22015|  | 
| gl` | make GDNAME=greenland taginfo-na-gl`  |  Greenland  | Kalaallit Nunaat |  "greenland" | 127.0.0.1:22016|  | 
| mx` | make GDNAME=north-america taginfo-na-mx`  |  Mexico  | México |  "north-america" | 127.0.0.1:22017| area_pct==99.8726% | 
| us-ak` | make GDNAME=north-america taginfo-na-us-ak`  |  Alaska  | Alaska |  "north-america" | 127.0.0.1:22018| area_pct==98.8462% antimeridian | 
| us-al` | make GDNAME=us-south taginfo-na-us-al`  |  Alabama  | Alabama |  "us-south" | 127.0.0.1:22019|  | 
| us-ar` | make GDNAME=us-south taginfo-na-us-ar`  |  Arkansas  | Arkansas |  "us-south" | 127.0.0.1:22020|  | 
| us-az` | make GDNAME=north-america taginfo-na-us-az`  |  Arizona  | Arizona |  "north-america" | 127.0.0.1:22021|  | 
| us-ca` | make GDNAME=california taginfo-na-us-ca`  |  California  | California |  "california" | 127.0.0.1:22022|  | 
| us-co` | make GDNAME=north-america taginfo-na-us-co`  |  Colorado  | Colorado |  "north-america" | 127.0.0.1:22023|  | 
| us-ct` | make GDNAME=us-northeast taginfo-na-us-ct`  |  Connecticut  | Connecticut |  "us-northeast" | 127.0.0.1:22024|  | 
| us-dc` | make GDNAME=us-south taginfo-na-us-dc`  |  District of Columbia  | District of Columbia |  "us-south" | 127.0.0.1:22025|  | 
| us-de` | make GDNAME=us-south taginfo-na-us-de`  |  Delaware  | Delaware |  "us-south" | 127.0.0.1:22026|  | 
| us-fl` | make GDNAME=florida taginfo-na-us-fl`  |  Florida  | Florida |  "florida" | 127.0.0.1:22027|  | 
| us-ga` | make GDNAME=us-south taginfo-na-us-ga`  |  Georgia  | Georgia |  "us-south" | 127.0.0.1:22028|  | 
| us-hi` | make GDNAME=us-pacific taginfo-na-us-hi`  |  Hawaii  | Hawaii |  "us-pacific" | 127.0.0.1:22029|  | 
| us-ia` | make GDNAME=us-midwest taginfo-na-us-ia`  |  Iowa  | Iowa |  "us-midwest" | 127.0.0.1:22030|  | 
| us-id` | make GDNAME=us-west taginfo-na-us-id`  |  Idaho  | Idaho |  "us-west" | 127.0.0.1:22031|  | 
| us-il` | make GDNAME=us-midwest taginfo-na-us-il`  |  Illinois  | Illinois |  "us-midwest" | 127.0.0.1:22032|  | 
| us-in` | make GDNAME=north-america taginfo-na-us-in`  |  Indiana  | Indiana |  "north-america" | 127.0.0.1:22033|  | 
| us-ks` | make GDNAME=us-midwest taginfo-na-us-ks`  |  Kansas  | Kansas |  "us-midwest" | 127.0.0.1:22034|  | 
| us-ky` | make GDNAME=north-america taginfo-na-us-ky`  |  Kentucky  | Kentucky |  "north-america" | 127.0.0.1:22035|  | 
| us-la` | make GDNAME=us-south taginfo-na-us-la`  |  Louisiana  | Louisiana |  "us-south" | 127.0.0.1:22036|  | 
| us-ma` | make GDNAME=north-america taginfo-na-us-ma`  |  Massachusetts  | Massachusetts |  "north-america" | 127.0.0.1:22037|  | 
| us-md` | make GDNAME=us-south taginfo-na-us-md`  |  Maryland  | Maryland |  "us-south" | 127.0.0.1:22038|  | 
| us-me` | make GDNAME=us-northeast taginfo-na-us-me`  |  Maine  | Maine |  "us-northeast" | 127.0.0.1:22039|  | 
| us-mi` | make GDNAME=north-america taginfo-na-us-mi`  |  Michigan  | Michigan |  "north-america" | 127.0.0.1:22040|  | 
| us-mn` | make GDNAME=us-midwest taginfo-na-us-mn`  |  Minnesota  | Minnesota |  "us-midwest" | 127.0.0.1:22041|  | 
| us-mo` | make GDNAME=us-midwest taginfo-na-us-mo`  |  Missouri  | Missouri |  "us-midwest" | 127.0.0.1:22042|  | 
| us-ms` | make GDNAME=us-south taginfo-na-us-ms`  |  Mississippi  | Mississippi |  "us-south" | 127.0.0.1:22043|  | 
| us-mt` | make GDNAME=north-america taginfo-na-us-mt`  |  Montana  | Montana |  "north-america" | 127.0.0.1:22044|  | 
| us-nc` | make GDNAME=us-south taginfo-na-us-nc`  |  North Carolina  | North Carolina |  "us-south" | 127.0.0.1:22045|  | 
| us-nd` | make GDNAME=north-america taginfo-na-us-nd`  |  North Dakota  | North Dakota |  "north-america" | 127.0.0.1:22046|  | 
| us-ne` | make GDNAME=north-america taginfo-na-us-ne`  |  Nebraska  | Nebraska |  "north-america" | 127.0.0.1:22047|  | 
| us-nh` | make GDNAME=north-america taginfo-na-us-nh`  |  New Hampshire  | New Hampshire |  "north-america" | 127.0.0.1:22048|  | 
| us-nj` | make GDNAME=north-america taginfo-na-us-nj`  |  New Jersey  | New Jersey |  "north-america" | 127.0.0.1:22049|  | 
| us-nm` | make GDNAME=north-america taginfo-na-us-nm`  |  New Mexico  | New Mexico |  "north-america" | 127.0.0.1:22050|  | 
| us-nv` | make GDNAME=us-west taginfo-na-us-nv`  |  Nevada  | Nevada |  "us-west" | 127.0.0.1:22051|  | 
| us-ny` | make GDNAME=north-america taginfo-na-us-ny`  |  New York  | New York |  "north-america" | 127.0.0.1:22052|  | 
| us-oh` | make GDNAME=north-america taginfo-na-us-oh`  |  Ohio  | Ohio |  "north-america" | 127.0.0.1:22053|  | 
| us-ok` | make GDNAME=north-america taginfo-na-us-ok`  |  Oklahoma  | Oklahoma |  "north-america" | 127.0.0.1:22054|  | 
| us-or` | make GDNAME=us-west taginfo-na-us-or`  |  Oregon  | Oregon |  "us-west" | 127.0.0.1:22055|  | 
| us-pa` | make GDNAME=us-northeast taginfo-na-us-pa`  |  Pennsylvania  | Pennsylvania |  "us-northeast" | 127.0.0.1:22056|  | 
| us-ri` | make GDNAME=us-northeast taginfo-na-us-ri`  |  Rhode Island  | Rhode Island |  "us-northeast" | 127.0.0.1:22057|  | 
| us-sc` | make GDNAME=us-south taginfo-na-us-sc`  |  South Carolina  | South Carolina |  "us-south" | 127.0.0.1:22058|  | 
| us-sd` | make GDNAME=north-america taginfo-na-us-sd`  |  South Dakota  | South Dakota |  "north-america" | 127.0.0.1:22059|  | 
| us-tn` | make GDNAME=north-america taginfo-na-us-tn`  |  Tennessee  | Tennessee |  "north-america" | 127.0.0.1:22060|  | 
| us-tx` | make GDNAME=north-america taginfo-na-us-tx`  |  Texas  | Texas |  "north-america" | 127.0.0.1:22061|  | 
| us-ut` | make GDNAME=us-west taginfo-na-us-ut`  |  Utah  | Utah |  "us-west" | 127.0.0.1:22062|  | 
| us-va` | make GDNAME=us-south taginfo-na-us-va`  |  Virginia  | Virginia |  "us-south" | 127.0.0.1:22063|  | 
| us-vt` | make GDNAME=us-northeast taginfo-na-us-vt`  |  Vermont  | Vermont |  "us-northeast" | 127.0.0.1:22064|  | 
| us-wa` | make GDNAME=us-west taginfo-na-us-wa`  |  Washington  | Washington |  "us-west" | 127.0.0.1:22065|  | 
| us-wi` | make GDNAME=us-midwest taginfo-na-us-wi`  |  Wisconsin  | Wisconsin |  "us-midwest" | 127.0.0.1:22066|  | 
| us-wv` | make GDNAME=north-america taginfo-na-us-wv`  |  West Virginia  | West Virginia |  "north-america" | 127.0.0.1:22067|  | 
| us-wy` | make GDNAME=north-america taginfo-na-us-wy`  |  Wyoming  | Wyoming |  "north-america" | 127.0.0.1:22068|  |   