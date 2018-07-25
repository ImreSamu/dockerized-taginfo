#!/bin/bash

# generated : 2018-07-25:09:37  // template : ./setup/template/job.sh.jinja2

export CURRENT_UID="$(id -u):$(id -g)" 

#######################################
##  Download
######################################

time docker-compose  -f docker-compose-job.yml  run  --rm taginfo_download  /osm/sh/osm_download_continent.sh

#######################################
##  Run services processing - step by step 
#######################################


GDNAME="south-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-ad /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-ad 
GDNAME="siberian-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-al /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-al 
GDNAME="siberian-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-alt /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-alt 
GDNAME="far-eastern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-amu /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-amu 
GDNAME="russia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-ark /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-ark 
GDNAME="south-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-ast /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-ast 
GDNAME="volga-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-ba /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-ba 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-bel /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-bel 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-bry /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-bry 
GDNAME="siberian-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-bu /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-bu 
GDNAME="north-caucasus-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-ce /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-ce 
GDNAME="ural-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-che /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-che 
GDNAME="russia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-chu /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-chu 
GDNAME="crimean-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-cr /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-cr 
GDNAME="volga-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-cu /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-cu 
GDNAME="north-caucasus-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-da /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-da 
GDNAME="north-caucasus-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-in /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-in 
GDNAME="siberian-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-irk /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-irk 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-iva /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-iva 
GDNAME="far-eastern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kam /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kam 
GDNAME="north-caucasus-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kb /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kb 
GDNAME="north-caucasus-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kc /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kc 
GDNAME="south-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kda /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kda 
GDNAME="siberian-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kem /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kem 
GDNAME="kaliningrad" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kgd /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kgd 
GDNAME="ural-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kgn /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kgn 
GDNAME="far-eastern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kha /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kha 
GDNAME="ural-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-khm /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-khm 
GDNAME="russia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kir /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kir 
GDNAME="siberian-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kk /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kk 
GDNAME="russia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kl /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kl 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-klu /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-klu 
GDNAME="northwestern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-ko /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-ko 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kos /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kos 
GDNAME="northwestern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kr /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kr 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-krs /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-krs 
GDNAME="russia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-kya /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-kya 
GDNAME="northwestern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-len /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-len 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-lip /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-lip 
GDNAME="far-eastern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-mag /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-mag 
GDNAME="volga-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-me /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-me 
GDNAME="volga-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-mo /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-mo 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-mos /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-mos 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-mow /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-mow 
GDNAME="northwestern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-mur /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-mur 
GDNAME="northwestern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-nen /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-nen 
GDNAME="northwestern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-ngr /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-ngr 
GDNAME="volga-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-niz /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-niz 
GDNAME="siberian-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-nvs /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-nvs 
GDNAME="siberian-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-oms /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-oms 
GDNAME="volga-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-ore /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-ore 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-orl /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-orl 
GDNAME="volga-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-per /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-per 
GDNAME="volga-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-pnz /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-pnz 
GDNAME="far-eastern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-pri /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-pri 
GDNAME="northwestern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-psk /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-psk 
GDNAME="south-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-ros /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-ros 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-rya /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-rya 
GDNAME="far-eastern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-sa /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-sa 
GDNAME="far-eastern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-sak /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-sak 
GDNAME="volga-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-sam /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-sam 
GDNAME="volga-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-sar /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-sar 
GDNAME="north-caucasus-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-se /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-se 
GDNAME="crimean-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-sev /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-sev 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-smo /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-smo 
GDNAME="northwestern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-spe /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-spe 
GDNAME="russia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-sta /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-sta 
GDNAME="ural-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-sve /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-sve 
GDNAME="volga-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-ta /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-ta 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-tam /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-tam 
GDNAME="siberian-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-tom /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-tom 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-tul /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-tul 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-tve /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-tve 
GDNAME="siberian-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-ty /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-ty 
GDNAME="russia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-tyu /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-tyu 
GDNAME="volga-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-ud /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-ud 
GDNAME="volga-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-uly /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-uly 
GDNAME="russia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-vgg /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-vgg 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-vla /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-vla 
GDNAME="northwestern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-vlg /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-vlg 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-vor /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-vor 
GDNAME="ural-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-yan /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-yan 
GDNAME="central-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-yar /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-yar 
GDNAME="far-eastern-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-yev /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-yev 
GDNAME="siberian-fed-district" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-ru-ru-zab /osm/sh/service_process.sh && docker-compose restart taginfo-ru-ru-zab 

# generated : 2018-07-25:09:37