# Task-6-My-SQL-Online_Sales
# 🧾 Task 6: Sales Trend Analysis Using SQL Aggregations

## 📌 Objective
The goal of this task was to analyze **monthly revenue** and **order volume** from an online retail dataset using SQL. This included:
- Extracting time-based insights from sales records
- Aggregating revenue and volume by month
- Using SQL’s aggregation functions to derive business-relevant trends

---

## 📂 Dataset Description

The dataset used for this task was named `online_sales` and contained the following columns:

| Column Name     | Description                              |
|------------------|------------------------------------------|
| `Order ID`       | Unique identifier for each order         |
| `Order Date`     | Date the order was placed (converted to DATE format) |
| `Amount`         | Total billed amount                      |
| `Profit`         | Net revenue/profit from the sale         |
| `Quantity`       | Number of items ordered                  |
| `Category`       | Product category (e.g., Technology, Furniture) |
| `Sub-Category`   | Subdivision of category                  |
| `PaymentMode`    | Mode of payment (e.g., Credit Card, Cash) |

---

## 🧠 SQL Concepts Applied

This task involved applying several core SQL concepts:

- `EXTRACT(YEAR | MONTH FROM date)` – to isolate time features
- `GROUP BY` – to aggregate data by month and year
- `SUM()` – to calculate total revenue
- `COUNT(DISTINCT ...)` – to count unique order volumes
- `ORDER BY` – to sort aggregated results
- `LIMIT` – to restrict outputs for specific insights

---

## 🔍 Steps Performed

### 1. ✅ Cleaned & Preprocessed the Data
- Imported the original Excel dataset into MySQL.
- Identified that the `Order Date` column was in string format (`DD-MM-YYYY`).
- Converted it to proper `DATE` format using `STR_TO_DATE()`.
- Renamed the cleaned column to `Order Date`.

### 2. ✅ Built and Executed Analytical Queries
A total of six key queries were written to fulfill the mini-guide given in the task. Each focused on a different aspect of time-based sales analysis.

---

 Insights Gained
Sales Trends: By extracting and grouping by month/year, we could easily visualize how revenue and volume evolved over time.

Revenue Peaks: Identified the highest-performing months.

Order Volume: Tracked how many unique orders were placed month over month.

🔗 Repository Contents
Online_Sales.sql – All SQL queries used

README.md – This file

Screenshots – (query outputs or Workbench results)






