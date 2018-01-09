#!/bin/bash

# assumes download.sh has already been run
# remove quotes ("1948" -> 1948) and change quarters to dates
echo "date, GDP" > data/data.csv
cat source/data.csv | tail -n +9 | sed 's/"//g' | sed 's/ Q1/-03-31/g' | sed 's/ Q2/-06-30/g' | sed 's/ Q3/-09-30/g' | sed 's/ Q4/-12-31/g' >> data/data.csv
