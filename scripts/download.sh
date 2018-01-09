#!/bin/bash
curl "https://www.ons.gov.uk/generator?format=csv&uri=/economy/grossdomesticproductgdp/timeseries/abmi/qna" > source/data.csv
