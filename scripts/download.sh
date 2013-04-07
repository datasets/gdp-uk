#!/bin/bash
mkdir -p cache
curl "http://www.ons.gov.uk/ons/datasets-and-tables/downloads/csv.csv?dataset=pgdp" > cache/ons-gdp.original.csv
