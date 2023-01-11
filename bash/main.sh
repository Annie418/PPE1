#!/bin/bash

# get all urls 
# for each word in each language


urlsListFR=$(ls ../url/presse/francais/sens*)
./get_all_urls.sh "méli-mélo" $urlsListFR

