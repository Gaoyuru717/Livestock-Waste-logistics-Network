CREATE EXTERNAL TABLE livestock_waste_ext (
    node STRING,
    product STRING,
    amount_kg_week DOUBLE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/maria_dev/input'
TBLPROPERTIES ("skip.header.line.count"="1");

SELECT * FROM livestock_waste_ext LIMIT 10;

SELECT product, SUM(amount_kg_week) AS total_waste_kg
FROM livestock_waste_ext
GROUP BY product
ORDER BY total_waste_kg DESC;

SELECT node, COUNT(*) AS record_count
FROM livestock_waste_ext
GROUP BY node
ORDER BY record_count DESC;
