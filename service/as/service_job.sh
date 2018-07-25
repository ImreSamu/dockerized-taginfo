#!/bin/bash

# generated : 2018-07-25:07:01  // template : ./setup/template/job.sh.jinja2

export CURRENT_UID="$(id -u):$(id -g)" 

#######################################
##  Download
######################################

time docker-compose  -f docker-compose-job.yml  run  --rm taginfo_download  /osm/sh/osm_download_continent.sh

#######################################
##  Run services processing - step by step 
#######################################


GDNAME="gcc-states" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-ae /osm/sh/service_process.sh && docker-compose restart taginfo-as-ae 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-af /osm/sh/service_process.sh && docker-compose restart taginfo-as-af 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-am /osm/sh/service_process.sh && docker-compose restart taginfo-as-am 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-az /osm/sh/service_process.sh && docker-compose restart taginfo-as-az 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-bd /osm/sh/service_process.sh && docker-compose restart taginfo-as-bd 
GDNAME="gcc-states" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-bh /osm/sh/service_process.sh && docker-compose restart taginfo-as-bh 
GDNAME="malaysia-singapore-brunei" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-bn /osm/sh/service_process.sh && docker-compose restart taginfo-as-bn 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-bt /osm/sh/service_process.sh && docker-compose restart taginfo-as-bt 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-cn /osm/sh/service_process.sh && docker-compose restart taginfo-as-cn 
GDNAME="europe" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-ge /osm/sh/service_process.sh && docker-compose restart taginfo-as-ge 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-id /osm/sh/service_process.sh && docker-compose restart taginfo-as-id 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-il /osm/sh/service_process.sh && docker-compose restart taginfo-as-il 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-an /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-an 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-ap /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-ap 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-ar /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-ar 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-as /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-as 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-br /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-br 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-ch /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-ch 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-ct /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-ct 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-dd /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-dd 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-dl /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-dl 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-dn /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-dn 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-ga /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-ga 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-gj /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-gj 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-hp /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-hp 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-hr /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-hr 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-jh /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-jh 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-jk /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-jk 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-ka /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-ka 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-kl /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-kl 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-ld /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-ld 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-mh /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-mh 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-ml /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-ml 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-mn /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-mn 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-mp /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-mp 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-mz /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-mz 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-nl /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-nl 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-or /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-or 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-pb /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-pb 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-py /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-py 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-rj /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-rj 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-sk /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-sk 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-tg /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-tg 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-tn /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-tn 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-tr /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-tr 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-up /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-up 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-ut /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-ut 
GDNAME="india" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-in-wb /osm/sh/service_process.sh && docker-compose restart taginfo-as-in-wb 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-io /osm/sh/service_process.sh && docker-compose restart taginfo-as-io 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-iq /osm/sh/service_process.sh && docker-compose restart taginfo-as-iq 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-ir /osm/sh/service_process.sh && docker-compose restart taginfo-as-ir 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jo /osm/sh/service_process.sh && docker-compose restart taginfo-as-jo 
GDNAME="hokkaido" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-01 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-01 
GDNAME="tohoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-02 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-02 
GDNAME="tohoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-03 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-03 
GDNAME="tohoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-04 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-04 
GDNAME="tohoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-05 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-05 
GDNAME="tohoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-06 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-06 
GDNAME="tohoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-07 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-07 
GDNAME="japan" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-08 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-08 
GDNAME="kanto" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-09 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-09 
GDNAME="kanto" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-10 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-10 
GDNAME="kanto" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-11 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-11 
GDNAME="kanto" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-12 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-12 
GDNAME="kanto" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-13 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-13 
GDNAME="kanto" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-14 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-14 
GDNAME="chubu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-15 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-15 
GDNAME="chubu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-16 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-16 
GDNAME="chubu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-17 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-17 
GDNAME="chubu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-18 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-18 
GDNAME="chubu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-19 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-19 
GDNAME="chubu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-20 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-20 
GDNAME="chubu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-21 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-21 
GDNAME="chubu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-22 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-22 
GDNAME="chubu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-23 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-23 
GDNAME="japan" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-24 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-24 
GDNAME="kansai" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-25 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-25 
GDNAME="kansai" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-26 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-26 
GDNAME="kansai" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-27 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-27 
GDNAME="japan" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-28 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-28 
GDNAME="kansai" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-29 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-29 
GDNAME="kansai" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-30 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-30 
GDNAME="chugoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-31 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-31 
GDNAME="chugoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-32 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-32 
GDNAME="chugoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-33 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-33 
GDNAME="chugoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-34 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-34 
GDNAME="chugoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-35 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-35 
GDNAME="shikoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-36 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-36 
GDNAME="shikoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-37 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-37 
GDNAME="shikoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-38 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-38 
GDNAME="shikoku" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-39 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-39 
GDNAME="japan" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-40 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-40 
GDNAME="kyushu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-41 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-41 
GDNAME="kyushu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-42 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-42 
GDNAME="kyushu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-43 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-43 
GDNAME="kyushu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-44 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-44 
GDNAME="kyushu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-45 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-45 
GDNAME="kyushu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-46 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-46 
GDNAME="kyushu" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-jp-47 /osm/sh/service_process.sh && docker-compose restart taginfo-as-jp-47 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-kg /osm/sh/service_process.sh && docker-compose restart taginfo-as-kg 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-kh /osm/sh/service_process.sh && docker-compose restart taginfo-as-kh 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-kp /osm/sh/service_process.sh && docker-compose restart taginfo-as-kp 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-kr /osm/sh/service_process.sh && docker-compose restart taginfo-as-kr 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-kw /osm/sh/service_process.sh && docker-compose restart taginfo-as-kw 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-kz /osm/sh/service_process.sh && docker-compose restart taginfo-as-kz 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-la /osm/sh/service_process.sh && docker-compose restart taginfo-as-la 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-lb /osm/sh/service_process.sh && docker-compose restart taginfo-as-lb 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-lk /osm/sh/service_process.sh && docker-compose restart taginfo-as-lk 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-mm /osm/sh/service_process.sh && docker-compose restart taginfo-as-mm 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-mn /osm/sh/service_process.sh && docker-compose restart taginfo-as-mn 
GDNAME="maldives" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-mv /osm/sh/service_process.sh && docker-compose restart taginfo-as-mv 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-my /osm/sh/service_process.sh && docker-compose restart taginfo-as-my 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-np /osm/sh/service_process.sh && docker-compose restart taginfo-as-np 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-om /osm/sh/service_process.sh && docker-compose restart taginfo-as-om 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-ph /osm/sh/service_process.sh && docker-compose restart taginfo-as-ph 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-pk /osm/sh/service_process.sh && docker-compose restart taginfo-as-pk 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-ps /osm/sh/service_process.sh && docker-compose restart taginfo-as-ps 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-qa /osm/sh/service_process.sh && docker-compose restart taginfo-as-qa 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-sa /osm/sh/service_process.sh && docker-compose restart taginfo-as-sa 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-sg /osm/sh/service_process.sh && docker-compose restart taginfo-as-sg 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-sy /osm/sh/service_process.sh && docker-compose restart taginfo-as-sy 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-th /osm/sh/service_process.sh && docker-compose restart taginfo-as-th 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-tj /osm/sh/service_process.sh && docker-compose restart taginfo-as-tj 
GDNAME="indonesia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-tl /osm/sh/service_process.sh && docker-compose restart taginfo-as-tl 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-tm /osm/sh/service_process.sh && docker-compose restart taginfo-as-tm 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-tw /osm/sh/service_process.sh && docker-compose restart taginfo-as-tw 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-uz /osm/sh/service_process.sh && docker-compose restart taginfo-as-uz 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-vn /osm/sh/service_process.sh && docker-compose restart taginfo-as-vn 
GDNAME="asia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-as-ye /osm/sh/service_process.sh && docker-compose restart taginfo-as-ye 

# generated : 2018-07-25:07:01