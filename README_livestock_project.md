
# Livestock Waste Data Analytics Project

This project demonstrates a data science workflow applied to livestock waste management, a critical component in the environmental and agricultural sectors. It combines Python and Apache Hive to extract actionable insights from real-world livestock waste data.

## Table of Contents
- [1. Introduction](#1-introduction)
- [2. Tools Used](#2-tools-used)
- [3. Data Source](#3-data-source)
- [4. Data Cleaning (Python)](#4-data-cleaning-python)
- [5. HiveQL Analysis](#5-hiveql-analysis)
- [6. Data Visualization](#6-data-visualization)
- [7. Insights & Explanations](#7-insights--explanations)
- [8. Recommendations](#8-recommendations)
- [9. Conclusion](#9-conclusion)

---

## 1. Introduction

The goal of this project is to explore and analyze livestock waste logistics and pollution risks using open-source data. The analysis focuses on understanding the distribution of waste amounts across different locations (nodes) and types of products (waste categories), with the aim to support better decision-making for environmental sustainability and logistics optimization.

---

## 2. Tools Used

- Python (Jupyter Notebook, Pandas, Matplotlib, Seaborn)
- Apache Hive (via Ambari Hive View)
- Hadoop Distributed File System (HDFS)
- GitHub (for project publishing and version control)

---

## 3. Data Source

The dataset used for this analysis is derived from public sources on livestock waste logistics. The raw data was preprocessed and then stored in HDFS to enable distributed querying with Apache Hive.

Filename: `cleaned_data.csv`

---

## 4. Data Cleaning (Python)

All data cleaning was performed in a Jupyter Notebook using Pandas. 

The cleaned file was uploaded to HDFS using:
```bash
hdfs dfs -mkdir -p /user/maria_dev/input/
hdfs dfs -put cleaned_data.csv /user/maria_dev/input/
```

---

## 5. HiveQL Analysis

The cleaned data was then queried using Hive to perform basic aggregation and filtering.

## 6. Data Visualization

Data visualization was done in Python using Seaborn and Matplotlib. Charts included:

- **Bar chart**: Total waste per product type
- **Boxplot**: Distribution of waste amount per node
- **Heatmap**: Correlation analysis (if extended)

Visuals help identify which product types or locations generate the most waste and highlight variance across the system.

---

## 7. Insights & Explanations

Key insights derived from the data include:

- Certain products (e.g., `P2`, `P4`) contribute a disproportionately high volume of waste.
- Specific nodes act as high-intensity contributors to total waste volume.
- There are significant variances in weekly waste output between different nodes.

These insights inform where intervention (logistics, policy) may be most needed.

---

## 8. Recommendations

- **Policy Targeting**: Focus regulatory efforts on top waste-generating nodes.
- **Logistics Optimization**: Develop optimized transportation routes for high-volume products.
- **Waste Reuse**: Explore converting certain waste products into renewable energy or fertilizer.

---

## 9. Conclusion

This project illustrates how data science tools can be used to support sustainable agricultural practices. By combining Hive for scalable data processing and Python for cleaning and visualization, we gain deeper insight into livestock waste trends, enabling informed environmental decision-making.

---

## Author

- **Your Name**
- MSc Data Science & Analytics, UKM
- [Your GitHub Username]

---

## Contact

If you have any questions, feel free to contact me or reach out to [bernardlkb@ukm.edu.my](mailto:bernardlkb@ukm.edu.my).
