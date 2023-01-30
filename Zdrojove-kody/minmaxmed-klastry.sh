#!/bin/bash

touch params-complete
cat ./beh-1/params >> params-complete #upravit podle struktury adresare s daty
cat ./beh-2/params >> params-complete 

COLS=13 #pocet parametru

touch params-analysed
for i in $(seq 1 $COLS); do
    cut -d ',' -f $i params-complete | sort -g | head -n 1 >> params-analysed           #minimum
    cut -d ',' -f $i params-complete | sort -g | tail -n 1 >> params-analysed           #maximum
    cut -d ',' -f $i params-complete | sort -g | awk -f median.awk >> params-analysed   #median
    echo >> params-analysed
done
