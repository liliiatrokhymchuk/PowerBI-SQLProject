# PowerBI-SQLProject

# **Sales Analytics Power BI Solution**

## **Overview**

This is a Power BI sales analytics solution developed using the AdventureWorks dataset. The goal of this project is to provide insights into sales performance across different countries, products and years, trends, and key business drivers such as product categories. This project demonstrates my ability to work with sql, shape the data, build data models, write DAX measures, and create user-friendly visualizations.

This report enables us to analyze sales performance and focus on high-performing products or regions.

## **Features**

**Key Functionalities**:

* Sales performance tracking by product category, country, and time.  
  * Drillthrough functionality to explore top-performing products by category.  
  * Dynamic filtering by year, quarter, and product category.

**Main DAX Measures**:

* `Total Sales`: Total revenue from all sales transactions.  
  * `Sales Growth %`: Percentage growth in sales compared to the previous year.  
  * `Avg Product Price`: Average list price of products.  
  * `Product Rank by Sales`: To help define top performing products.  
  * `Product Category Contribution %:` Percentage contribution of each product category to the total sales.

**Interactive Elements**:

* Slicers for filtering by country, category, year, and month.  
  * Drillthrough page for detailed product analysis.  
  * Dynamic visualizations such as bar charts, pie chart, and line graph.

## 

## **Data Model**

The data model consists of four tables:

**Fact Table**: `FactSales` – Contains sales transactions with details such as order dates,  total due, and relevant calculations.

**Dimension Tables**:

* `DimProduct` – Contains product details such as name, category, subcategory, and prices.  
  * `Date` – A custom date table with fields for year, quarter, month, and weekday for time-based analysis.  
  * `DimCountry` – Contains territory details such as country, region.

**Relationships**:

* `FactSales[productid]` → `DimProduct[productid]` (Many-to-One)  
* `FactSales[Order Date]` → `Date[Date]` (Many-to-One)  
* `FactSales[territoryid]` → `DimCountry[territoryid]` (Many-to-One)

## **Implementation Details**

**Data Transformation**:

* Added a dataset into Postgres and defined what tables/columns are going to be used in PowerBI. Created appropriate scripts to retrieve and transform the data.  
  * Cleaned and formatted the dataset in Power BI using Power Query.  
  * Created a custom date table with fields such as "Year," "Month Name", "Month Number",  "Weekday", "Weekday Number" and "Quarter".

  **Measure Calculations**:

  * Used DAX to calculate key performance metrics such as Total Sales, Sales Growth %, and Avg Product Price.

  **Report Features**:

  * **Main Dashboard**:  
    * KPIs for Total Sales, Average Sales per Day, and Order Quantity.  
    * Bar chart for Top 10 Products by Sales.  
    * Line and stacked column chart for Sales and Sales Growth % by Year.  
    * Pie chart for Sales by Category.  
    * Matrix for Sales by Country with total values and ability to drill down into Regions.  
    * Clustered column chart to show sales by Year and Quater.

    **Drillthrough Page**:

* Hierarchical view of Total Sales by Category, Subcategory, and Product.  
* Detailed sales data for top-performing products.

  #### **Mobile Optimization:**

  #### This Power BI report has been customized for mobile devices to ensure a user-friendly and responsive experience on smaller screens. 

## **Usage Instructions**

1. Download .pbix file and open the report in Power BI Desktop.  
2. Use the slicers on the main dashboard to filter by time, country, or category.  
3. Click on the pie chart to drill through to the detailed product analysis page.  
4. Hover over visual elements for additional insights through tooltips.  
5. Click on the datapoint on visual elements to filter other visuals for more interactivity.  
6. Analyze KPIs and trends to gain actionable insights into sales performance.
