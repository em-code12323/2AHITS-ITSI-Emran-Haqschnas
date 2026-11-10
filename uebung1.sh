#!/bin/bash

htl_ball="2027-01-15"

ziel=$(date -d "$htl_ball" +%s)
jetzt=$(date +%s)
tage=$(( (ziel-jetzt)/ 86400))
echo" es sind  $tage Tage bis zum htl ball"




