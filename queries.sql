-- Core experiment summary (example BigQuery SQL)
WITH events AS (
  SELECT
    user_id,
    session_id,
    variant,              -- 'control' / 'test'
    event_name,
    event_timestamp,
    CAST(aov AS FLOAT64) AS aov
  FROM `project.dataset.sample_events`   -- replace with your source
),
session_metrics AS (
  SELECT
    session_id,
    ANY_VALUE(variant) AS variant,
    MAX(event_name = 'purchase') AS purchased,
    AVG(aov) AS aov
  FROM events
  GROUP BY session_id
),
experiment_summary AS (
  SELECT
    variant,
    COUNT(*) AS sessions,
    SUM(purchased) AS purchases,
    AVG(aov) AS avg_aov
  FROM session_metrics
  GROUP BY variant
)
SELECT * FROM experiment_summary;
