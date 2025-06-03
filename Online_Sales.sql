create database online_sales;
select * from online_sales limit 10;
--  Extract Year & Month
SELECT 
    EXTRACT(YEAR FROM `Order Date`) AS year,
    EXTRACT(MONTH FROM `Order Date`) AS month,
    `Order ID`
FROM 
    online_sales
LIMIT 10;


-- Group by Year/Month
SELECT 
    EXTRACT(YEAR FROM `Order Date`) AS year,
    EXTRACT(MONTH FROM `Order Date`) AS month
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;
    
-- Total Monthly Revenue (using Profit)
SELECT 
    EXTRACT(YEAR FROM `Order Date`) AS year,
    EXTRACT(MONTH FROM `Order Date`) AS month,
    SUM(Profit) AS total_revenue
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;
    
--  Monthly Order Volume (using distinct Order ID)
SELECT 
    EXTRACT(YEAR FROM `Order Date`) AS year,
    EXTRACT(MONTH FROM `Order Date`) AS month,
    COUNT(DISTINCT `Order ID`) AS total_orders
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;
    
-- Sort by Order Date (to show earliest orders)
SELECT 
    `Order ID`, 
    `Order Date`, 
    Amount, 
    Profit
FROM 
    online_sales
ORDER BY 
    `Order Date` ASC
LIMIT 10;

-- Revenue for Year 2024 Only
SELECT 
    EXTRACT(YEAR FROM `Order Date`) AS year,
    EXTRACT(MONTH FROM `Order Date`) AS month,
    SUM(Profit) AS revenue
FROM 
    online_sales
WHERE 
    EXTRACT(YEAR FROM `Order Date`) = 2024
GROUP BY 
    year, month
ORDER BY 
    revenue DESC;


 
 
