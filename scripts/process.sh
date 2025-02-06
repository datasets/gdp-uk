#!/bin/bash

curl "https://www.ons.gov.uk/generator?format=csv&uri=/economy/grossdomesticproductgdp/timeseries/abmi/qna" > source/data.csv

echo "date, GDP" > data/data.csv
cat source/data.csv | tail -n +9 | sed 's/"//g' | sed 's/ Q1/-03-31/g' | sed 's/ Q2/-06-30/g' | sed 's/ Q3/-09-30/g' | sed 's/ Q4/-12-31/g' >> data/data.csv
