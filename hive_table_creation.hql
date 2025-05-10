
-- Create Hive Table for Livestock Waste Data

CREATE TABLE IF NOT EXISTS livestock_waste (
    id STRING,
    farm_type STRING,
    location STRING,
    waste_volume DOUBLE,
    nitrogen_content DOUBLE,
    phosphorus_content DOUBLE,
    date_collected STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Optional: View the structure
DESCRIBE livestock_waste;
