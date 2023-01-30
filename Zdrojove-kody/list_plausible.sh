#!/bin/bash

DIRS="" #nastaveni cesty do adresare s daty

touch plausible-listed
touch plausible-params

for d in $DIRS
do
    cd $d
    touch local-list
    touch local-params
    for f in $(find . -type f -name "*.png") #pocitani jen s png soubory (ve slozce jsou i textova data)
    do
	NAME="$(basename $f .png)"
	echo $NAME >> local-list
	NUM="$(echo $NAME | cut -d '-' -f2)"  #-f v cut nutne upravit podle struktury nazvu obrazku
	awk "NR==$NUM" data.csv | cut -d ',' -f 1-13 >> local-params #ziska hodnoty parametru a vlozi je do souboru
    done
    
    cd ../..
    cat $d/local-list >> plausible-listed
    cat $d/local-params >> plausible-params
    rm $d/local-list
done

