#!/bin/bash

# generated : 2018-07-25:09:10  // template : ./setup/template/job.sh.jinja2

export CURRENT_UID="$(id -u):$(id -g)" 

#######################################
##  Run testservices processing - with download (service_test_process.sh) - step by step 
#######################################


GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-bm /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-bm 
GDNAME="canada" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-ca-ab /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-ca-ab 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-ca-bc /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-ca-bc 
GDNAME="manitoba" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-ca-mb /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-ca-mb 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-ca-nb /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-ca-nb 
GDNAME="newfoundland-and-labrador" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-ca-nl /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-ca-nl 
GDNAME="nova-scotia" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-ca-ns /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-ca-ns 
GDNAME="canada" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-ca-nt /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-ca-nt 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-ca-nu /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-ca-nu 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-ca-on /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-ca-on 
GDNAME="canada" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-ca-pe /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-ca-pe 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-ca-qc /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-ca-qc 
GDNAME="saskatchewan" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-ca-sk /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-ca-sk 
GDNAME="canada" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-ca-yt /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-ca-yt 
GDNAME="canada" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-fr-pm /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-fr-pm 
GDNAME="greenland" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-gl /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-gl 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-mx /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-mx 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ak /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ak 
GDNAME="us-south" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-al /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-al 
GDNAME="us-south" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ar /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ar 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-az /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-az 
GDNAME="california" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ca /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ca 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-co /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-co 
GDNAME="us-northeast" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ct /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ct 
GDNAME="us-south" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-dc /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-dc 
GDNAME="us-south" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-de /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-de 
GDNAME="florida" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-fl /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-fl 
GDNAME="us-south" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ga /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ga 
GDNAME="us-pacific" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-hi /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-hi 
GDNAME="us-midwest" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ia /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ia 
GDNAME="us-west" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-id /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-id 
GDNAME="us-midwest" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-il /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-il 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-in /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-in 
GDNAME="us-midwest" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ks /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ks 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ky /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ky 
GDNAME="us-south" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-la /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-la 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ma /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ma 
GDNAME="us-south" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-md /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-md 
GDNAME="us-northeast" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-me /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-me 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-mi /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-mi 
GDNAME="us-midwest" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-mn /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-mn 
GDNAME="us-midwest" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-mo /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-mo 
GDNAME="us-south" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ms /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ms 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-mt /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-mt 
GDNAME="us-south" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-nc /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-nc 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-nd /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-nd 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ne /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ne 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-nh /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-nh 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-nj /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-nj 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-nm /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-nm 
GDNAME="us-west" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-nv /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-nv 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ny /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ny 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-oh /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-oh 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ok /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ok 
GDNAME="us-west" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-or /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-or 
GDNAME="us-northeast" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-pa /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-pa 
GDNAME="us-northeast" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ri /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ri 
GDNAME="us-south" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-sc /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-sc 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-sd /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-sd 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-tn /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-tn 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-tx /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-tx 
GDNAME="us-west" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-ut /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-ut 
GDNAME="us-south" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-va /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-va 
GDNAME="us-northeast" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-vt /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-vt 
GDNAME="us-west" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-wa /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-wa 
GDNAME="us-midwest" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-wi /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-wi 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-wv /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-wv 
GDNAME="north-america" docker-compose  -f docker-compose-job.yml run --rm taginfo-job-na-us-wy /osm/sh/service_test_process.sh && docker-compose restart taginfo-na-us-wy 

# generated : 2018-07-25:09:10