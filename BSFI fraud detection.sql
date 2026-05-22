SELECT
d.hour,
COUNT(*) AS suspicious_transactions

FROM warehouse.fact_transactions f

JOIN warehouse.dim_time d
ON f.time_key = d.time_key

WHERE fraud_flag = 1

GROUP BY d.hour

ORDER BY suspicious_transactions DESC
LIMIT 5;