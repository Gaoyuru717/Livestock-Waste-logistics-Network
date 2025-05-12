
-- 创建清洗后表
CREATE TABLE IF NOT EXISTS livestock_waste_cleaned AS
SELECT *
FROM livestock_waste
WHERE node IS NOT NULL
  AND product IS NOT NULL
  AND amount_kg_week IS NOT NULL;

-- 分析：按产品编号统计记录数、平均值、总量
SELECT
  product,
  COUNT(*) AS record_count,
  AVG(amount_kg_week) AS avg_amount,
  SUM(amount_kg_week) AS total_amount
FROM livestock_waste_cleaned
GROUP BY product
ORDER BY total_amount DESC;
