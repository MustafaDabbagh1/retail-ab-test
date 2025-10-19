# Project: Retail A/B Test – New Checkout

**Goal:** Measure the impact of a new checkout flow on conversion and average order value (AOV).

**Dataset:** Synthetic sample (100 rows) mirroring the real schema. See `data/schema.json`.

**Stack:** SQL (BigQuery-style), Python (pandas, numpy, matplotlib), Jupyter.

## Quick Start
```bash
pip install -r requirements.txt
jupyter notebook notebooks/analysis.ipynb
```

## Files
- `notebooks/analysis.ipynb` — EDA, metrics, test, recommendations.
- `sql/queries.sql` — Core tables, metrics, and test-ready extracts.
- `data/sample.csv` — Tiny, anonymized sample with the same columns.
- `reports/dashboard.png` — Placeholder; replace with a real chart/screenshot.

## Results (TL;DR)
- **+3.1% absolute lift** in conversion (example).
- No significant change in AOV (example).
- **Recommendation:** Roll out to 100% with guardrail on bounce rate.

## Reproduce
- Run `sql/queries.sql` to generate `experiment_summary`.
- Open `analysis.ipynb`; update `DATA_PATH` if needed; run all cells.
