#!/bin/bash

DIR="" #nastavit cestu do adresare typu chovani
FILES="$DIR/*" 
SOURCE="" #nastavit cestu k souboru s daty z nahodneho generovani

touch $DIR/params

for f in $FILES
do
    NUM="$(basename $f .png | cut -d '-' -f2)"  #ziskani cisla grafu
    awk "NR==$NUM" $SOURCE | cut -d ',' -f 1-13 >> $DIR/params #ziskani parametru pouzitych pro danou simulaci2
done
