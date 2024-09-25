# Sales Data Analysis Project
## Overview
This project analyzes sales data to generate insights about product performance, regional sales, and growth trends. The dataset was sourced from Kaggle, and after some data cleaning and transformation, further analysis was performed to uncover key metrics like revenue, sales growth, and product profitability.

## Goals
- Identify top revenue-generating products.
- Analyze sales trends across regions.
- Perform year-over-year growth comparison for 2022 and 2023.
- Uncover the best-performing months for each product category.
- Determine subcategories with the highest profit growth in 2023 compared to 2022.

## Data Processing & Cleaning
1. **Data Cleaning**:
   - Removed missing or irrelevant data.
   - Corrected data formats where needed.
   - Removed duplicates and outliers.

2. **Added Columns**:
   - **Discount**: Calculated the discount on products.
   - **Sale Price**: Derived sale prices after discounts.
   - **Profit**: Added profit column for further profitability analysis.

3. **Data Loading**:
   - After processing, the data was loaded into **SQL Server** for efficient querying and further analysis.

## Analysis Performed
1. **Top 10 Highest Revenue Generating Products**:
   - Identified the top 10 products that contributed the most to total sales revenue.

2. **Top 5 Highest Selling Products in Each Region**:
   - Analyzed the top 5 products based on unit sales for each geographical region.

3. **Month-over-Month Growth Comparison (2022 vs. 2023)**:
   - Compared sales for each month in 2022 with the corresponding month in 2023, highlighting growth trends (e.g., January 2022 vs. January 2023).

4. **Highest Sales Month per Category**:
   - Identified which month had the highest sales volume for each product category.

5. **Highest Profit Growth Subcategory (2023 vs. 2022)**:
   - Analyzed which product subcategory saw the highest profit growth in 2023 compared to 2022.
     
## Tools & Technologies
- **Python**: For initial data cleaning and column additions.
- **Pandas**: For data manipulation.
- **SQL Server**: For efficient querying and complex analysis.
- **SQL Queries**: Used to perform in-depth analysis and generate insights.

## Conclusion
This project allowed me to explore various data analysis techniques, from data cleaning to advanced SQL queries for generating business insights. Through this analysis, I gained a deeper understanding of sales trends, product performance, and year-over-year growth comparisons. The findings demonstrate the importance of data-driven decision-making in business contexts, and the project enhanced my skills in SQL, data manipulation, and analysis.
