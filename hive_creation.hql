
-- 创建牲畜粪便主表（使用产品编号如 P1、P2）
CREATE TABLE IF NOT EXISTS livestock_waste (
    node STRING,
    product STRING,
    amount_kg_week DOUBLE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
