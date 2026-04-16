SELECT
  DATE(block_time) AS day,
  COUNT(*) AS total_transactions,
  COUNT(*) FILTER (WHERE value = 0) AS logic_transactions,
  COUNT(*) FILTER (WHERE value > 0) AS value_transactions,
  COUNT(DISTINCT "from") AS unique_senders
FROM ethereum.transactions
GROUP BY 1
ORDER BY 1
LIMIT 14
