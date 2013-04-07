#!/bin/bash

# assumes download.sh has already been run
# 1948 to 2012 = 65 rows inclusive
# Fields we want are 1,2 (ABMI=GDP),7 (IHYP=% change in GDP)
# Lastly remove quotes on year field ("1948" -> 1948)
echo "Year,GDP,GDP_Change,GDP_Index" > annual.csv
cat cache/ons-gdp.original.csv | tail -n +2 | head -n 65 | cut -d, -f1,2,7,49 | sed 's/"//g' >> annual.csv
