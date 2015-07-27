#!/bin/bash

echo "Create database"
dropdb --if-exists worldvalues
createdb worldvalues

echo "Converts codebook from xls to csv format"
in2csv data/WV6_Codebook_v_2014_11_07.xls > data/codebook_raw.csv
tail -n +4 data/codebook_raw.csv > data/codebook.csv

echo "Import World Values data"
./import.py


