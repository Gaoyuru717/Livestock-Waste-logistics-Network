# 🐄 Livestock Waste Logistics for Sustainable Water Management

This project explores how livestock waste data can be leveraged to manage nutrient pollution in water bodies through better logistics, treatment, and policy recommendations. It is developed as part of the **STQD6324 Data Management** course assignment (Semester 2, 2024/2025).

## 📊 Dataset Description

This project uses a **real-world raw dataset** on *Livestock Waste Logistics for Spatiotemporal Control of Nutrient Pollution in Water Bodies*. The data has not been pre-cleaned and includes:
- Weekly manure production quantities
- Demand and treatment capacity
- Technology costs and limits
- Geographical location data

## 🧰 Tools & Technologies

- Python (Google Colab)
- Pandas, Seaborn, Folium
- GitHub for version control

## 📁 Project Structure

```
project/
├── data/
│   └── raw_dataset.xlsx
├── notebooks/
│   └── Livestock_Waste_Analysis_Colab.ipynb
├── visuals/
│   └── top_nodes_plot.png
├── results/
│   └── cleaned_data.csv
├── scripts/
│   └── data_cleaning.py
└── README.md
```

## 📈 Highlights

- Mapping of supply hotspots
- Top 10 manure-producing locations
- Visualization of spatial distribution
- Policy and treatment recommendations

## 🔚 Conclusion

With basic data management tools and real data, we demonstrate insights that support sustainable agricultural waste treatment and pollution control.

Instructor Submission: bernardlkb@ukm.edu.my

## 🐘 Integration of Apache Hive

To meet the data management requirement and simulate an enterprise-level data infrastructure, this project integrates **Apache Hive** for structured data storage and query processing.

### 🔧 Purpose of Hive in This Project

Apache Hive is used to **simulate a data warehouse environment** where the cleaned livestock waste dataset can be efficiently queried and managed using HiveQL (SQL-like syntax). This approach mirrors real-world agricultural data systems, such as smart farming platforms or environmental monitoring dashboards, that rely on scalable and structured data management.

### 📥 Hive Workflow Steps

1. **Data Preparation**:
   - The cleaned dataset `cleaned_livestock_waste_data.csv` is saved as a plain CSV file.

2. **Hive Table Creation**:
   ```sql
   CREATE TABLE livestock_waste (
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
   ```

3. **Loading Data into Hive**:
   ```sql
   LOAD DATA LOCAL INPATH '/path/to/cleaned_livestock_waste_data.csv' INTO TABLE livestock_waste;
   ```

4. **Example Queries**:
   ```sql
   -- Retrieve farms with the highest nitrogen content
   SELECT id, farm_type, nitrogen_content
   FROM livestock_waste
   ORDER BY nitrogen_content DESC
   LIMIT 5;

   -- Average nutrient levels by farm type
   SELECT farm_type,
          AVG(nitrogen_content) AS avg_nitrogen,
          AVG(phosphorus_content) AS avg_phosphorus
   FROM livestock_waste
   GROUP BY farm_type;
   ```

### 📌 Summary

Hive plays an important role in this project by:
- Providing a **structured storage format** for cleaned data
- Allowing **SQL-based queries** for aggregation and filtering
- Simulating how **big data tools** are used in sustainable agriculture and environmental monitoring

This integration demonstrates data management proficiency beyond just Python analytics, fulfilling the requirements of the STQD6324 assignment.