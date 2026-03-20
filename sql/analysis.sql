-- SQL Analysis for Sales Data Project
-- Tool: MySQL
-- Author: Krishna

-- Total Sales
SELECT SUM(Sales) AS total_sales 
FROM sales;

-- Sales by Category
SELECT Category, SUM(Sales) AS total_sales
FROM sales
GROUP BY Category
ORDER BY total_sales DESC;

-- Sales by Region
SELECT Region, SUM(Sales) AS total_sales
FROM sales
GROUP BY Region
ORDER BY total_sales DESC;

-- Top 10 Products
SELECT Product_Name, SUM(Sales) AS total_sales
FROM sales
GROUP BY Product_Name
ORDER BY total_sales DESC
LIMIT 10;

-- Monthly Sales
SELECT Month, SUM(Sales) AS total_sales
FROM sales
GROUP BY Month
ORDER BY total_sales DESC;
