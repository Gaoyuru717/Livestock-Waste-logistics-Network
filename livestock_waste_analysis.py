
# Livestock Waste Logistics Analysis
# Author: [Your Name]
# GitHub: [Your GitHub Link]
# Date: May 2025

# 1. Import Libraries
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# 2. Load Data
file_path = "/content/Data List for Logistics Network Management of Livestock Waste for Spatiotemporal Control of Nutrient Pollution in Water Bodies.xlsx"
df = pd.read_excel(file_path)

# 3. Basic Inspection
print("Data shape:", df.shape)
df.head()

# 4. Data Cleaning
df.columns = [col.strip().replace(" ", "_").lower() for col in df.columns]
missing_values = df.isnull().sum()
print("Missing values:\n", missing_values)

# Drop columns with over 30% missing values (optional)
threshold = 0.7 * len(df)
df = df.dropna(axis=1, thresh=threshold)

# Fill or drop remaining NaNs
df = df.dropna()

# 5. Save Cleaned Data
df.to_csv("cleaned_livestock_waste_data.csv", index=False)

# 6. Data Visualization

# a. Waste Volume Distribution
plt.figure(figsize=(10, 6))
sns.histplot(df['waste_volume'], bins=30, kde=True)
plt.title("Distribution of Livestock Waste Volume")
plt.xlabel("Waste Volume (m³)")
plt.ylabel("Frequency")
plt.show()

# b. Nitrogen vs Phosphorus
plt.figure(figsize=(8, 6))
sns.scatterplot(data=df, x="nitrogen_content", y="phosphorus_content", hue="farm_type")
plt.title("Nitrogen vs Phosphorus Content")
plt.xlabel("Nitrogen (%)")
plt.ylabel("Phosphorus (%)")
plt.legend(loc='upper right')
plt.show()

# c. Farm Type Count
plt.figure(figsize=(10, 5))
sns.countplot(data=df, x="farm_type")
plt.title("Farm Type Distribution")
plt.xticks(rotation=45)
plt.show()

# d. Correlation Heatmap
plt.figure(figsize=(8, 6))
sns.heatmap(df.corr(), annot=True, cmap='coolwarm')
plt.title("Feature Correlation")
plt.show()
