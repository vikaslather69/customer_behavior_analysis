Customer Behavior Analysis

📊 An end-to-end data analytics project that transforms raw customer data into actionable business intelligence. This project leverages Python (Pandas & NumPy)       for rigorous data cleaning and Exploratory Data Analysis (EDA), MySQL for deep-dive transactional querying, and Power BI to build an interactive executive          dashboard.


🚀 Project Overview
     Understanding consumer habits is critical for modern retail growth. This project analyzes raw customer transaction data to uncover purchasing patterns,            demographic trends, shipping preferences, and marketing effectiveness. By combining data engineering, advanced SQL, and data visualization, this project           delivers a 360-degree view of customer behavior to drive revenue optimization.
     
🛠️ Tech Stack & Tools
     Data Cleaning & EDA: Python 3.x | Pandas | NumPy
     Database Management: MySQL WorkbenchBusiness 
     Intelligence: Power BI Desktop
   

📈 Project Workflow
     Raw CSV ➔ Python: Cleaning & EDA ➔ Cleaned CSV ➔ MySQL: Deep Querying ➔ Power BI Dashboard

1. Data Cleaning & Preprocessing (Python / Pandas)
   The raw dataset was loaded and transformed using Python to ensure high data quality and readiness for downstream analysis.
  *   Ingestion:   Data loaded securely using pd.read_csv().
  *   Inspection:   Conducted structural checks with df.head(), df.info(), and df.columns.
  *   Statistical Profiling:   Analyzed numerical data distributions using df.describe().
  *   Missing Value Handling:   Identified null values with df.isnull().sum() and imputed them structurally using df.fillna().
  *   Data Engineering:   Standardized all column name formats and engineered new features to optimize the data model for SQL schema integration.
  *   Export:   Saved the clean dataset via df.to_csv() for database ingestion.

2. Strategic Database Querying (MySQL)
    The cleaned data was imported into MySQL to execute advanced relational queries and extract core business metrics.

  SQL Techniques Applied:
  
   Aggregation & Filtering: SELECT, GROUP BY, WHERE, ORDER BY, LIMIT.
   
   Advanced Functions: ROUND(), AVG(), SUM(), COUNT(), CASE WHEN.
   
   Analytical Power: Common Table Expressions (CTEs), Subqueries, and Window Functions (RANK(), ROW_NUMBER()).

  Key Business Insights Uncovered:
  
   Demographic Revenue: Evaluated total revenue contributions segmented by age groups and Male vs. Female splits.
   
   Promotion Efficiency: Isolated high-value coupon users—specifically identifying customers who used a discount but still outspent the average purchase amount.
   
   Product Performance: Identified the top 5 products by average review ratings and the top 3 most purchased products within each unique product category.
   
   Logistics Impact: Compared average purchase amounts between Standard and Express shipping to check if faster shipping yields bigger baskets.
   
   Subscription Value: Verified whether subscriber customers demonstrate higher lifetime spend than non-subscribers.
   
   Discount Affinity: Found the top 5 products with the highest percentage of purchases that had a discount applied.
   
   Customer Segmentation: Classified users into New, Returning, and Loyal buckets based on historical transaction frequency.
   

3. Interactive Visualization (Power BI)
    The refined dataset was integrated into Power BI to create the Customer Behavior Dashboard, a dynamic, one-page report designed for stakeholders.

   Dashboard Components:

   Executive KPIs: High-level cards tracking Total Customers, Average Purchase Amount, and Average Review Rating.

   Subscription Dynamics: A Donut Chart displaying the percentage breakdown of customers by subscription status.

   Financial Drivers: Column Charts tracking total revenue by Product Category and Payment Method.

   Operational Trends: A Bar Chart analyzing customer volume variations across different Seasons.

   Inventory Demand: A Column Chart displaying previous items purchased by Category.

   Dynamic Filtering: High-utility Button Slicers allowing cross-filtering by Age Group, Gender, and Location for granular exploration.
    

🎯 Key Business Insights

The SQL analysis and Power BI dashboard revealed these primary findings:

1. Age Group Insights (Young Adults)
  
   *    The Young Adult age group is the largest customer segment with over 1,000 customers.
   *    Their average purchase amount is $60.45.
   *    bring in the highest revenue in the Clothing category.
   *    Their peak shopping time is during the Winter season.

2. Gender Insights (Male vs. Female)
  
   *   There are more male customers than female customers in the database.
   *    Male customers spend an average of $59.53 per purchase.
   *    Men spend the most money on Clothing and prefer to pay with Cash.
   *   Men do most of their shopping during the Spring season.
   
 5. Location Insights (Montana)
   
    *   Montana is the top location with the highest number of customers.
    *   Customers in Montana have an average purchase amount of $60.20.
    *   They spend the most of money in the Clothing category.
    *    They do most of their shopping during the Summer season.


📊 Dashboard is look like as:

   example 








