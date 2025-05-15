
# Livestock Waste Logistics Network Analysis Project

This project focuses on the logistics network management of livestock waste for spatiotemporal control of nutrient pollution in water bodies. It is developed as part of the STQD6324 Data Management course , using Python (Google Colab) and Apache Hive.

---

## Objective

This objective analyzes livestock waste using encoded product types(e.g.,P1,P2,P3)and location codes(e.g.,N01,N02) to support logistical planning and environmental impact control.The analysis uses data visualization and Hive integgration to identify high-priority waste types and locations.

In order to:
1)Understand spatial and temporal waste patterns
2)Optimize transport and treatment planning
3)Reduce nutrient pollution in rivers and lakes

---

## Tools Used

**Google Colab** (Python)
**Apache Hive**
**Pandas**, **Matplotlib**, **Seaborn**
Dataset: Excel-based logistics and nutrient dataset on livestock waste

---

## Project Structure


Livestock-Waste-Logistics-Network

Data List for Logistics Network Management of Livestock Waste for Spatiotemporal Control of Nutrient Pollution in Water Bodies.xlsx
Supply_Data.csv
livestock_waste_analysis.ipynb         
hive_livestock_waste.hql                                     
cleaning_data.csv      
plots                               
README.md                             

---

## Data Selection

Several datasets were initially considered for this project. However, due to issues such as missing values and inconsistent formatting, most were excluded. The Supply Data was selected because it was clean, well-structured, and directly relevant to the project goals. 

---

## Data Cleaning

1)Removed columns with over 30% missing values
2)Standardized column names
3)Dropped or imputed rows with missing critical values
4)Cleaned data saved as `cleaned_data.csv`

The cleaned file was uploaded to HDFS using:
hdfs dfs -mkdir -p /user/maria_dev/input/
hdfs dfs -put cleaned_data.csv /user/maria_dev/input/

---

## Visualizations and Analysis

----

### 1. Total Waste Volume by Product Code

This bar chart displays total weekly waste output for each product code.


**Key Insight**:
**P1 and P3** represent the highest total output.
These codes likely correspond to high-volume livestock (e.g., swine, poultry).

**Recommendation**:
Prioritize transportation and treatment for P1 and P3 to reduce environmental risk.

---

### 2. Total Waste Volume by Node

The chart shows the total waste generated from each node (location code).

**Key Insight**:
**Nodes N04 and N08** produce significantly more waste than others.
These regions may have denser or larger livestock operations.

**Recommendation**:
Consider deploying storage or treatment facilities in these zones.
Focus transport routes starting from these locations.

1. Establish waste collection hubs near high-output farms.
2. Integrate nutrient recovery technologies.
3. Use predictive modeling to schedule optimal waste transport.
4. Apply Hive for real-time scalable querying on future data.

---

## HiveQL Analysis

After uploading the cleaned CSV data to HDFS, Hive was used to perform distributed SQL-like querying. Hive enables efficient processing of large datasets stored in Hadoop.

### Hive Table Definition

An **external Hive table** was created to reference the cleaned CSV data stored in HDFS:


**Explanation:**
`EXTERNAL TABLE` is used so that the data in HDFS remains intact even if the Hive table is dropped.
`FIELDS TERMINATED BY ','` matches the CSV structure.
The `LOCATION` points to the HDFS directory where the cleaned CSV was uploaded using:
 
### Data Verification & Aggregation Queries

#### Preview the dataset
#### Summarize waste amount by product
#### Count number of entries per node

---

## Insights & Explanations

Key insights derived from the data include:

- Certain products (e.g., `P2`, `P4`) contribute a disproportionately high volume of waste.
- Specific nodes act as high-intensity contributors to total waste volume.
- There are significant variances in weekly waste output between different nodes.

These insights inform where intervention (logistics, policy) may be most needed.

---

## Recommendations

**Policy Targeting**: Focus regulatory efforts on top waste-generating nodes.
**Logistics Optimization**: Develop optimized transportation routes for high-volume products.
**Waste Reuse**: Explore converting certain waste products into renewable energy or fertilizer.

---

## Conclusion

This project illustrates how data science tools can be used to support sustainable agricultural practices. By combining Hive for scalable data processing and Python for cleaning and visualization, we gain deeper insight into livestock waste trends, enabling informed environmental decision-making.

---

## Author

Name: [Gaoyuru]
Course: STQD6324 Data Management
Semester: 2, 2024/2025
Supervisor: [bernardlkb@ukm.edu.my]
