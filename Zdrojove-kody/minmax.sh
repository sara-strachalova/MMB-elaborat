#!/bin/bash

#1. argument infile, 2. argument outfile

COLS=13

touch $2
for i in $(seq 1 $COLS); do #provede operace pro kazdy sloupec = pro kazdy parametr
    cut -d ',' -f $i $1 | sort -g | head -n 1 >> $2 #minimum
    cut -d ',' -f $i $1 | sort -g | tail -n 1 >> $2 #maximum
    cut -d ',' -f $i $1 | sort -g | awk -f median.awk >> $2 #median
    echo >> $2
done
