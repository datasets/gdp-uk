<a href="https://datahub.io/core/gdp-uk"><img src="https://badgen.net/badge/icon/View%20on%20datahub.io/orange?icon=https://datahub.io/datahub-cube-badge-icon.svg&label&scale=1.25)" alt="badge" /></a>

UK Real GDP since 1948 from the Office of National Statistics.

## Data

Annual and quarterly data in "data/data.csv" The GDP measure is a chained volume measure and is
seasonally adjusted.

Extracted from [https://www.ons.gov.uk/economy/grossdomesticproductgdp/timeseries/abmi/qna](https://www.ons.gov.uk/economy/grossdomesticproductgdp/timeseries/abmi/qna)

## Preparation 

Process is recorded and automated in 2 bash scripts:
```bash
scripts/download.sh
scripts/extract.sh
```

## Automation

This dataset is automatically updates quarterly on the datahub.io site: [http://datahub.io/core/gdp-uk](http://datahub.io/core/gdp-uk)

## License

Such small amounts of data that believe there are no underlying rights and
hence have provided under the Public Domain Dedication License.
