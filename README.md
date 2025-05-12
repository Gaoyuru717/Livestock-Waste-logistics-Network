
# Livestock Waste Logistics Network Analysis

This project focuses on the logistics network management of livestock waste for spatiotemporal control of nutrient pollution in water bodies. It is developed as part of the STQD6324 Data Management course , using Python (Google Colab) and Apache Hive.

## Objective

This objective analyzes livestock waste using encoded product types(e.g.,P1,P2,P3)and location codes(e.g.,N01,N02) to support logistical planning and environmental impact control.The analysis uses data visualization and Hive integgration to identify high-priority waste types and locations.

In order to:
1)Understand spatial and temporal waste patterns
2)Optimize transport and treatment planning
3)Reduce nutrient pollution in rivers and lakes

## Tools Used

**Google Colab** (Python)
**Apache Hive**
**Pandas**, **Matplotlib**, **Seaborn**
Dataset: Excel-based logistics and nutrient dataset on livestock waste


## Project Structure


Livestock-Waste-Logistics-Network

Data List for Logistics Network Management of Livestock Waste for Spatiotemporal Control of Nutrient Pollution in Water Bodies.xlsx
livestock_waste_analysis.ipynb         
hive_creation.hql                      
hive_data_cleaning.hql                 
cleaned_livestock_waste_data.csv      
plots(product and node)                                
README.md                             


## Data Cleaning

1)Removed columns with over 30% missing values
2)Standardized column names
3)Dropped or imputed rows with missing critical values
4)Cleaned data saved as `cleaned_livestock_waste_data.csv`


## Visualizations and Analysis

### 1. Total Waste Volume by Product Code

This bar chart displays total weekly waste output for each product code.


**Key Insight**:
**P1 and P3** represent the highest total output.
These codes likely correspond to high-volume livestock (e.g., swine, poultry).

**Recommendation**:
Prioritize transportation and treatment for P1 and P3 to reduce environmental risk.


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

## Hive Integration

Two Hive scripts are included:
'hive_table_creation_product_code.hql': Creates the main Hive table
'hive_data_cleaning_product_code.hql': Filters and summarizes data by product

These enable scalable SQL-based queries for weekly monitoring and decision-making.


## Conclusion

Despite the absence of product names, valuable insights were extracted using encoded fields. The project identified key product types and locations that require logistical attention and proposed actionable strategies to optimize waste management.



## Author

Name: [Gaoyuru]
Course: STQD6324 Data Management
Semester: 2, 2024/2025
Supervisor: [bernardlkb@ukm.edu.my]
