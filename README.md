
# Livestock Waste Logistics Network Analysis

This project focuses on the logistics network management of livestock waste for spatiotemporal control of nutrient pollution in water bodies. It is developed as part of the STQD6324 Data Management course , using Python (Google Colab) and Apache Hive.

## Objective

This objective analyzes livestock waste using encoded product types(e.g.,P1,P2,P3)and location codes(e.g.,N01,N02) to support logistical planning and environmental impact control.The analysis uses data visualization and Hive integgration to identify high-priority waste types and locations.

In order to:
- Understand spatial and temporal waste patterns
- Optimize transport and treatment planning
- Reduce nutrient pollution in rivers and lakes

## Tools Used

- **Google Colab** (Python)
- **Apache Hive**
- **Pandas**, **Matplotlib**, **Seaborn**
- Dataset: Excel-based logistics and nutrient dataset on livestock waste

---

## Project Structure

```
Livestock-Waste-Logistics-Network

livestock_waste_analysis.ipynb         # Google Colab notebook
hive_creation.hql                      # Hive script to create table
hive_data_cleaning.hql                 # Hive script to clean data and analyze
cleaned_livestock_waste_data.csv       # Output from data cleaning step
plots                                  # Folder to save visualization images
README.md                              # This file

---

## Data Cleaning

1)Removed columns with over 30% missing values
2)Standardized column names
3)Dropped or imputed rows with missing critical values
4)Cleaned data saved as `cleaned_livestock_waste_data.csv`


## Visualizations

- Waste Volume Distribution
- Nitrogen vs Phosphorus Scatter Plot
- Farm Type Frequency Distribution
- Correlation Heatmap

All visualizations are generated in the notebook using `seaborn` and `matplotlib`.

---

## Insights

- Farms such as poultry and pig farms produce higher nutrient concentrations.
- Nitrogen and phosphorus levels are strongly correlated.
- Waste volumes differ significantly by farm type and location.

---

## Recommendations

1. Establish waste collection hubs near high-output farms.
2. Integrate nutrient recovery technologies.
3. Use predictive modeling to schedule optimal waste transport.
4. Apply Hive for real-time scalable querying on future data.

---

## Reproducibility

This project is **fully reproducible** using the provided Colab notebook and Hive scripts. Just upload your Excel dataset to Colab and follow the steps.

---

## Author

- Name: [Gaoyuru]
- Course: STQD6324 Data Management
- Semester: 2, 2024/2025
- Supervisor: [bernardlkb@ukm.edu.my]

---

## License

This project is developed for academic purposes. Free to use with attribution.
