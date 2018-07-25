
generated : 2018-07-25:07:01  // template : ./setup/template/readme.jinja2

### Config files for : "asia"

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
   * this version is expect 100% inside the country polygon, if not -> fallback the continent ( asia )

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
| ae` | make GDNAME=gcc-states taginfo-as-ae`  |  United Arab Emirates  | الإمارات العربية المتحدة |  "gcc-states" | 127.0.0.1:14001|  | 
| af` | make GDNAME=asia taginfo-as-af`  |  Afghanistan  | افغانستان |  "asia" | 127.0.0.1:14002|  | 
| am` | make GDNAME=asia taginfo-as-am`  |  Armenia  | Հայաստան |  "asia" | 127.0.0.1:14003|  | 
| az` | make GDNAME=asia taginfo-as-az`  |  Azerbaijan  | Azərbaycan |  "asia" | 127.0.0.1:14004|  | 
| bd` | make GDNAME=asia taginfo-as-bd`  |  Bangladesh  | বাংলাদেশ |  "asia" | 127.0.0.1:14005|  | 
| bh` | make GDNAME=gcc-states taginfo-as-bh`  |  Bahrain  | ‏البحرين‎ |  "gcc-states" | 127.0.0.1:14006|  | 
| bn` | make GDNAME=malaysia-singapore-brunei taginfo-as-bn`  |  Brunei  | Brunei |  "malaysia-singapore-brunei" | 127.0.0.1:14007|  | 
| bt` | make GDNAME=asia taginfo-as-bt`  |  Bhutan  | འབྲུག་ཡུལ་ |  "asia" | 127.0.0.1:14008|  | 
| cn` | make GDNAME=asia taginfo-as-cn`  |  China  | 中国 |  "asia" | 127.0.0.1:14009|  | 
| ge` | make GDNAME=europe taginfo-as-ge`  |  Georgia  | საქართველო |  "europe" | 127.0.0.1:14010|  | 
| id` | make GDNAME=asia taginfo-as-id`  |  Indonesia  | Indonesia |  "asia" | 127.0.0.1:14011|  | 
| il` | make GDNAME=asia taginfo-as-il`  |  Israel  | ישראל |  "asia" | 127.0.0.1:14012|  | 
| in-an` | make GDNAME=asia taginfo-as-in-an`  |  Andaman and Nicobar Islands  | Andaman and Nicobar Islands |  "asia" | 127.0.0.1:14013|  | 
| in-ap` | make GDNAME=india taginfo-as-in-ap`  |  Andhra Pradesh  | Andhra Pradesh |  "india" | 127.0.0.1:14014|  | 
| in-ar` | make GDNAME=asia taginfo-as-in-ar`  |  Arunachal Pradesh  | Arunachal Pradesh |  "asia" | 127.0.0.1:14015|  | 
| in-as` | make GDNAME=india taginfo-as-in-as`  |  Assam  | Assam |  "india" | 127.0.0.1:14016|  | 
| in-br` | make GDNAME=india taginfo-as-in-br`  |  Bihar  | Bihar |  "india" | 127.0.0.1:14017|  | 
| in-ch` | make GDNAME=india taginfo-as-in-ch`  |  Chandigarh  | Chandigarh |  "india" | 127.0.0.1:14018|  | 
| in-ct` | make GDNAME=india taginfo-as-in-ct`  |  Chhattisgarh  | Chhattisgarh |  "india" | 127.0.0.1:14019|  | 
| in-dd` | make GDNAME=india taginfo-as-in-dd`  |  Daman and Diu  | Daman and Diu |  "india" | 127.0.0.1:14020|  | 
| in-dl` | make GDNAME=india taginfo-as-in-dl`  |  Delhi  | Delhi |  "india" | 127.0.0.1:14021|  | 
| in-dn` | make GDNAME=india taginfo-as-in-dn`  |  Dadra and Nagar Haveli  | Dadra and Nagar Haveli |  "india" | 127.0.0.1:14022|  | 
| in-ga` | make GDNAME=india taginfo-as-in-ga`  |  Goa  | Goa |  "india" | 127.0.0.1:14023|  | 
| in-gj` | make GDNAME=india taginfo-as-in-gj`  |  Gujarat  | Gujarat |  "india" | 127.0.0.1:14024|  | 
| in-hp` | make GDNAME=india taginfo-as-in-hp`  |  Himachal Pradesh  | Himachal Pradesh |  "india" | 127.0.0.1:14025|  | 
| in-hr` | make GDNAME=india taginfo-as-in-hr`  |  Haryana  | Haryana |  "india" | 127.0.0.1:14026|  | 
| in-jh` | make GDNAME=india taginfo-as-in-jh`  |  Jharkhand  | Jharkhand |  "india" | 127.0.0.1:14027|  | 
| in-jk` | make GDNAME=asia taginfo-as-in-jk`  |  Jammu and Kashmir  | Jammu and Kashmir |  "asia" | 127.0.0.1:14028|  | 
| in-ka` | make GDNAME=india taginfo-as-in-ka`  |  Karnataka  | Karnataka |  "india" | 127.0.0.1:14029|  | 
| in-kl` | make GDNAME=india taginfo-as-in-kl`  |  Kerala  | കേരളം |  "india" | 127.0.0.1:14030|  | 
| in-ld` | make GDNAME=india taginfo-as-in-ld`  |  Lakshadweep  | Lakshadweep |  "india" | 127.0.0.1:14031|  | 
| in-mh` | make GDNAME=india taginfo-as-in-mh`  |  Maharashtra  | Maharashtra |  "india" | 127.0.0.1:14032|  | 
| in-ml` | make GDNAME=india taginfo-as-in-ml`  |  Meghalaya  | Meghalaya |  "india" | 127.0.0.1:14033|  | 
| in-mn` | make GDNAME=india taginfo-as-in-mn`  |  Manipur  | Manipur |  "india" | 127.0.0.1:14034|  | 
| in-mp` | make GDNAME=india taginfo-as-in-mp`  |  Madhya Pradesh  | Madhya Pradesh |  "india" | 127.0.0.1:14035|  | 
| in-mz` | make GDNAME=india taginfo-as-in-mz`  |  Mizoram  | Mizoram |  "india" | 127.0.0.1:14036|  | 
| in-nl` | make GDNAME=india taginfo-as-in-nl`  |  Nagaland  | Nagaland |  "india" | 127.0.0.1:14037|  | 
| in-or` | make GDNAME=india taginfo-as-in-or`  |  Odisha  | Odisha |  "india" | 127.0.0.1:14038|  | 
| in-pb` | make GDNAME=india taginfo-as-in-pb`  |  Punjab  | Punjab |  "india" | 127.0.0.1:14039|  | 
| in-py` | make GDNAME=india taginfo-as-in-py`  |  Puducherry  | Puducherry |  "india" | 127.0.0.1:14040|  | 
| in-rj` | make GDNAME=india taginfo-as-in-rj`  |  Rajasthan  | Rajasthan |  "india" | 127.0.0.1:14041|  | 
| in-sk` | make GDNAME=india taginfo-as-in-sk`  |  Sikkim  | Sikkim |  "india" | 127.0.0.1:14042|  | 
| in-tg` | make GDNAME=india taginfo-as-in-tg`  |  Telangana  | Telangana |  "india" | 127.0.0.1:14043|  | 
| in-tn` | make GDNAME=india taginfo-as-in-tn`  |  Tamil Nadu  | தமிழ்நாடு |  "india" | 127.0.0.1:14044|  | 
| in-tr` | make GDNAME=india taginfo-as-in-tr`  |  Tripura  | Tripura |  "india" | 127.0.0.1:14045|  | 
| in-up` | make GDNAME=india taginfo-as-in-up`  |  Uttar Pradesh  | Uttar Pradesh |  "india" | 127.0.0.1:14046|  | 
| in-ut` | make GDNAME=india taginfo-as-in-ut`  |  Uttarakhand  | Uttarakhand |  "india" | 127.0.0.1:14047|  | 
| in-wb` | make GDNAME=india taginfo-as-in-wb`  |  West Bengal  | West Bengal |  "india" | 127.0.0.1:14048|  | 
| io` | make GDNAME=asia taginfo-as-io`  |  British Indian Ocean Territory  | British Indian Ocean Territory |  "asia" | 127.0.0.1:14049|  | 
| iq` | make GDNAME=asia taginfo-as-iq`  |  Iraq  | العراق |  "asia" | 127.0.0.1:14050|  | 
| ir` | make GDNAME=asia taginfo-as-ir`  |  Iran  | ‏ایران‎ |  "asia" | 127.0.0.1:14051|  | 
| jo` | make GDNAME=asia taginfo-as-jo`  |  Jordan  | الأردن |  "asia" | 127.0.0.1:14052|  | 
| jp-01` | make GDNAME=hokkaido taginfo-as-jp-01`  |  Hokkaidō Prefecture  | 北海道 |  "hokkaido" | 127.0.0.1:14053|  | 
| jp-02` | make GDNAME=tohoku taginfo-as-jp-02`  |  Aomori Prefecture  | 青森県 |  "tohoku" | 127.0.0.1:14054|  | 
| jp-03` | make GDNAME=tohoku taginfo-as-jp-03`  |  Iwate Prefecture  | 岩手県 |  "tohoku" | 127.0.0.1:14055|  | 
| jp-04` | make GDNAME=tohoku taginfo-as-jp-04`  |  Miyagi Prefecture  | 宮城県 |  "tohoku" | 127.0.0.1:14056|  | 
| jp-05` | make GDNAME=tohoku taginfo-as-jp-05`  |  Akita Prefecture  | 秋田県 |  "tohoku" | 127.0.0.1:14057|  | 
| jp-06` | make GDNAME=tohoku taginfo-as-jp-06`  |  Yamagata Prefecture  | 山形県 |  "tohoku" | 127.0.0.1:14058|  | 
| jp-07` | make GDNAME=tohoku taginfo-as-jp-07`  |  Fukushima Prefecture  | 福島県 |  "tohoku" | 127.0.0.1:14059|  | 
| jp-08` | make GDNAME=japan taginfo-as-jp-08`  |  Ibaraki Prefecture  | 茨城県 |  "japan" | 127.0.0.1:14060|  | 
| jp-09` | make GDNAME=kanto taginfo-as-jp-09`  |  Tochigi Prefecture  | 栃木県 |  "kanto" | 127.0.0.1:14061|  | 
| jp-10` | make GDNAME=kanto taginfo-as-jp-10`  |  Gunma Prefecture  | 群馬県 |  "kanto" | 127.0.0.1:14062|  | 
| jp-11` | make GDNAME=kanto taginfo-as-jp-11`  |  Saitama Prefecture  | 埼玉県 |  "kanto" | 127.0.0.1:14063|  | 
| jp-12` | make GDNAME=kanto taginfo-as-jp-12`  |  Chiba Prefecture  | 千葉県 |  "kanto" | 127.0.0.1:14064|  | 
| jp-13` | make GDNAME=kanto taginfo-as-jp-13`  |  Tokyo  | 東京都 |  "kanto" | 127.0.0.1:14065|  | 
| jp-14` | make GDNAME=kanto taginfo-as-jp-14`  |  Kanagawa Prefecture  | 神奈川県 |  "kanto" | 127.0.0.1:14066|  | 
| jp-15` | make GDNAME=chubu taginfo-as-jp-15`  |  Niigata Prefecture  | 新潟県 |  "chubu" | 127.0.0.1:14067|  | 
| jp-16` | make GDNAME=chubu taginfo-as-jp-16`  |  Toyama Prefecture  | 富山県 |  "chubu" | 127.0.0.1:14068|  | 
| jp-17` | make GDNAME=chubu taginfo-as-jp-17`  |  Ishikawa Prefecture  | 石川県 |  "chubu" | 127.0.0.1:14069|  | 
| jp-18` | make GDNAME=chubu taginfo-as-jp-18`  |  Fukui Prefecture  | 福井県 |  "chubu" | 127.0.0.1:14070|  | 
| jp-19` | make GDNAME=chubu taginfo-as-jp-19`  |  Yamanashi Prefecture  | 山梨県 |  "chubu" | 127.0.0.1:14071|  | 
| jp-20` | make GDNAME=chubu taginfo-as-jp-20`  |  Nagano Prefecture  | 長野県 |  "chubu" | 127.0.0.1:14072|  | 
| jp-21` | make GDNAME=chubu taginfo-as-jp-21`  |  Gifu Prefecture  | 岐阜県 |  "chubu" | 127.0.0.1:14073|  | 
| jp-22` | make GDNAME=chubu taginfo-as-jp-22`  |  Shizuoka Prefecture  | 静岡県 |  "chubu" | 127.0.0.1:14074|  | 
| jp-23` | make GDNAME=chubu taginfo-as-jp-23`  |  Aichi Prefecture  | 愛知県 |  "chubu" | 127.0.0.1:14075|  | 
| jp-24` | make GDNAME=japan taginfo-as-jp-24`  |  Mie Prefecture  | 三重県 |  "japan" | 127.0.0.1:14076|  | 
| jp-25` | make GDNAME=kansai taginfo-as-jp-25`  |  Shiga Prefecture  | 滋賀県 |  "kansai" | 127.0.0.1:14077|  | 
| jp-26` | make GDNAME=kansai taginfo-as-jp-26`  |  Kyoto Prefecture  | 京都府 |  "kansai" | 127.0.0.1:14078|  | 
| jp-27` | make GDNAME=kansai taginfo-as-jp-27`  |  Osaka Prefecture  | 大阪府 |  "kansai" | 127.0.0.1:14079|  | 
| jp-28` | make GDNAME=japan taginfo-as-jp-28`  |  Hyogo Prefecture  | 兵庫県 |  "japan" | 127.0.0.1:14080|  | 
| jp-29` | make GDNAME=kansai taginfo-as-jp-29`  |  Nara Prefecture  | 奈良県 |  "kansai" | 127.0.0.1:14081|  | 
| jp-30` | make GDNAME=kansai taginfo-as-jp-30`  |  Wakayama Prefecture  | 和歌山県 |  "kansai" | 127.0.0.1:14082|  | 
| jp-31` | make GDNAME=chugoku taginfo-as-jp-31`  |  Tottori Prefecture  | 鳥取県 |  "chugoku" | 127.0.0.1:14083|  | 
| jp-32` | make GDNAME=chugoku taginfo-as-jp-32`  |  Shimane Prefecture  | 島根県 |  "chugoku" | 127.0.0.1:14084|  | 
| jp-33` | make GDNAME=chugoku taginfo-as-jp-33`  |  Okayama Prefecture  | 岡山県 |  "chugoku" | 127.0.0.1:14085|  | 
| jp-34` | make GDNAME=chugoku taginfo-as-jp-34`  |  Hiroshima Prefecture  | 広島県 |  "chugoku" | 127.0.0.1:14086|  | 
| jp-35` | make GDNAME=chugoku taginfo-as-jp-35`  |  Yamaguchi Prefecture  | 山口県 |  "chugoku" | 127.0.0.1:14087|  | 
| jp-36` | make GDNAME=shikoku taginfo-as-jp-36`  |  Tokushima Prefecture  | 徳島県 |  "shikoku" | 127.0.0.1:14088|  | 
| jp-37` | make GDNAME=shikoku taginfo-as-jp-37`  |  Kagawa Prefecture  | 香川県 |  "shikoku" | 127.0.0.1:14089|  | 
| jp-38` | make GDNAME=shikoku taginfo-as-jp-38`  |  Ehime Prefecture  | 愛媛県 |  "shikoku" | 127.0.0.1:14090|  | 
| jp-39` | make GDNAME=shikoku taginfo-as-jp-39`  |  Kochi Prefecture  | 高知県 |  "shikoku" | 127.0.0.1:14091|  | 
| jp-40` | make GDNAME=japan taginfo-as-jp-40`  |  Fukuoka Prefecture  | 福岡県 |  "japan" | 127.0.0.1:14092|  | 
| jp-41` | make GDNAME=kyushu taginfo-as-jp-41`  |  Saga Prefecture  | 佐賀県 |  "kyushu" | 127.0.0.1:14093|  | 
| jp-42` | make GDNAME=kyushu taginfo-as-jp-42`  |  Nagasaki Prefecture  | 長崎県 |  "kyushu" | 127.0.0.1:14094|  | 
| jp-43` | make GDNAME=kyushu taginfo-as-jp-43`  |  Kumamoto Prefecture  | 熊本県 |  "kyushu" | 127.0.0.1:14095|  | 
| jp-44` | make GDNAME=kyushu taginfo-as-jp-44`  |  Oita Prefecture  | 大分県 |  "kyushu" | 127.0.0.1:14096|  | 
| jp-45` | make GDNAME=kyushu taginfo-as-jp-45`  |  Miyazaki Prefecture  | 宮崎県 |  "kyushu" | 127.0.0.1:14097|  | 
| jp-46` | make GDNAME=kyushu taginfo-as-jp-46`  |  Kagoshima Prefecture  | 鹿児島県 |  "kyushu" | 127.0.0.1:14098|  | 
| jp-47` | make GDNAME=kyushu taginfo-as-jp-47`  |  Okinawa Prefecture  | 沖縄県 |  "kyushu" | 127.0.0.1:14099|  | 
| kg` | make GDNAME=asia taginfo-as-kg`  |  Kyrgyzstan  | Кыргызстан |  "asia" | 127.0.0.1:14100|  | 
| kh` | make GDNAME=asia taginfo-as-kh`  |  Cambodia  | ព្រះរាជាណាចក្រ​កម្ពុជា |  "asia" | 127.0.0.1:14101|  | 
| kp` | make GDNAME=asia taginfo-as-kp`  |  North Korea  | 조선민주주의인민공화국 |  "asia" | 127.0.0.1:14102|  | 
| kr` | make GDNAME=asia taginfo-as-kr`  |  South Korea  | 대한민국 |  "asia" | 127.0.0.1:14103|  | 
| kw` | make GDNAME=asia taginfo-as-kw`  |  Kuwait  | ‏الكويت‎ |  "asia" | 127.0.0.1:14104|  | 
| kz` | make GDNAME=asia taginfo-as-kz`  |  Kazakhstan  | Казахстан |  "asia" | 127.0.0.1:14105|  | 
| la` | make GDNAME=asia taginfo-as-la`  |  Laos  | ປະເທດລາວ |  "asia" | 127.0.0.1:14106|  | 
| lb` | make GDNAME=asia taginfo-as-lb`  |  Lebanon  | لبنان |  "asia" | 127.0.0.1:14107|  | 
| lk` | make GDNAME=asia taginfo-as-lk`  |  Sri Lanka  | ශ්‍රී ලංකාව இலங்கை |  "asia" | 127.0.0.1:14108|  | 
| mm` | make GDNAME=asia taginfo-as-mm`  |  Myanmar  | မြန်မာ |  "asia" | 127.0.0.1:14109|  | 
| mn` | make GDNAME=asia taginfo-as-mn`  |  Mongolia  | Монгол улс |  "asia" | 127.0.0.1:14110|  | 
| mv` | make GDNAME=maldives taginfo-as-mv`  |  Maldives  | ދިވެހިރާއްޖެ |  "maldives" | 127.0.0.1:14111|  | 
| my` | make GDNAME=asia taginfo-as-my`  |  Malaysia  | Malaysia |  "asia" | 127.0.0.1:14112|  | 
| np` | make GDNAME=asia taginfo-as-np`  |  Nepal  | नेपाल |  "asia" | 127.0.0.1:14113|  | 
| om` | make GDNAME=asia taginfo-as-om`  |  Oman  | عمان |  "asia" | 127.0.0.1:14114|  | 
| ph` | make GDNAME=asia taginfo-as-ph`  |  Philippines  | Philippines |  "asia" | 127.0.0.1:14115|  | 
| pk` | make GDNAME=asia taginfo-as-pk`  |  Pakistan  | ‏پاکستان‎ |  "asia" | 127.0.0.1:14116|  | 
| ps` | make GDNAME=asia taginfo-as-ps`  |  Palestinian Territories  | الأراضي الفلسطينية |  "asia" | 127.0.0.1:14117|  | 
| qa` | make GDNAME=asia taginfo-as-qa`  |  Qatar  | ‏قطر‎ |  "asia" | 127.0.0.1:14118|  | 
| sa` | make GDNAME=asia taginfo-as-sa`  |  Saudi Arabia  | السعودية |  "asia" | 127.0.0.1:14119|  | 
| sg` | make GDNAME=asia taginfo-as-sg`  |  Singapore  | Singapore |  "asia" | 127.0.0.1:14120|  | 
| sy` | make GDNAME=asia taginfo-as-sy`  |  Syria  | سوريا |  "asia" | 127.0.0.1:14121|  | 
| th` | make GDNAME=asia taginfo-as-th`  |  Thailand  | ประเทศไทย |  "asia" | 127.0.0.1:14122|  | 
| tj` | make GDNAME=asia taginfo-as-tj`  |  Tajikistan  | Тоҷикистон |  "asia" | 127.0.0.1:14123|  | 
| tl` | make GDNAME=indonesia taginfo-as-tl`  |  East Timor  | Timór Lorosa'e |  "indonesia" | 127.0.0.1:14124|  | 
| tm` | make GDNAME=asia taginfo-as-tm`  |  Turkmenistan  | Türkmenistan |  "asia" | 127.0.0.1:14125|  | 
| tw` | make GDNAME=asia taginfo-as-tw`  |  Taiwan  | 臺灣 |  "asia" | 127.0.0.1:14126|  | 
| uz` | make GDNAME=asia taginfo-as-uz`  |  Uzbekistan  | Oʻzbekiston |  "asia" | 127.0.0.1:14127|  | 
| vn` | make GDNAME=asia taginfo-as-vn`  |  Vietnam  | Việt Nam |  "asia" | 127.0.0.1:14128|  | 
| ye` | make GDNAME=asia taginfo-as-ye`  |  Yemen  | اليمن |  "asia" | 127.0.0.1:14129| area_pct==99.9880% |   