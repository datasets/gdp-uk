#!/bin/bash

set -euo pipefail

SOURCE_URL="https://www.ons.gov.uk/generator?format=csv&uri=/economy/grossdomesticproductgdp/timeseries/abmi/qna"

mkdir -p data

python - <<'PY'
import csv
from io import StringIO
from pathlib import Path

import requests

url = "https://www.ons.gov.uk/generator?format=csv&uri=/economy/grossdomesticproductgdp/timeseries/abmi/qna"
text = requests.get(url, timeout=60).text
reader = csv.reader(StringIO(text))

rows = []
for row in reader:
    if len(row) < 2:
        continue
    year = row[0].strip().strip('"')
    value = row[1].strip().strip('"')
    if year.isdigit() and len(year) == 4 and value:
        rows.append([f"{year}-12-31", value])

out = Path("data/data.csv")
with out.open("w", newline="", encoding="utf-8") as f:
    writer = csv.writer(f)
    writer.writerow(["date", "GDP"])
    writer.writerows(rows)

print(f"Wrote {len(rows)} rows to {out}")
PY
