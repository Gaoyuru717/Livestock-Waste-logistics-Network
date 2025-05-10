
-- Check for NULLs in key columns
SELECT COUNT(*) AS null_waste_volume FROM livestock_waste WHERE waste_volume IS NULL;
SELECT COUNT(*) AS null_nitrogen FROM livestock_waste WHERE nitrogen_content IS NULL;
SELECT COUNT(*) AS null_phosphorus FROM livestock_waste WHERE phosphorus_content IS NULL;

-- Create cleaned table (drop rows with NULL values)
CREATE TABLE livestock_waste_cleaned AS
SELECT *
FROM livestock_waste
WHERE waste_volume IS NOT NULL
  AND nitrogen_content IS NOT NULL
  AND phosphorus_content IS NOT NULL;

-- Summary statistics
SELECT farm_type,
       COUNT(*) AS num_records,
       AVG(waste_volume) AS avg_waste_volume,
       AVG(nitrogen_content) AS avg_nitrogen,
       AVG(phosphorus_content) AS avg_phosphorus
FROM livestock_waste_cleaned
GROUP BY farm_type;

-- Preview cleaned data
SELECT * FROM livestock_waste_cleaned LIMIT 10;
