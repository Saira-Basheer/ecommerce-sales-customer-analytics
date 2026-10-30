# E-Commerce Sales & Customer Analytics

## Project Overview
This project analyzes e-commerce sales, customer purchasing behavior, product performance, and payment information using MySQL.

## Project Objectives
- Calculate revenue from completed orders.
- Analyze monthly sales revenue.
- Identify top-performing products and categories.
- Analyze customer spending and order frequency.
- Review order statuses and payment methods.
- Identify products with low stock.
- Summarize overall business performance.

## Tools Used
- MySQL
- MySQL Workbench
- SQL

## Database Tables
1. **Customers:** Customer details and registration dates.
2. **Categories:** Product category information.
3. **Products:** Product prices, categories, and stock.
4. **Orders:** Customer orders and their statuses.
5. **Order Items:** Products, quantities, and unit prices in each order.
6. **Payments:** Payment methods and payment statuses.

## SQL Concepts Used
- SELECT, WHERE, ORDER BY
- Aggregate functions: SUM, COUNT, AVG
- INNER JOIN and LEFT JOIN
- GROUP BY
- Date functions: YEAR and MONTH
- DISTINCT and column aliases

## Project Files
- `database_setup.sql` — Creates the database and tables.
- `sample_data.sql` — Inserts sample records.
- `analysis_queries.sql` — Contains business analysis queries.

## Key Findings

### 1. Monthly Sales Revenue
- May 2025 generated **55,000.00** in revenue from completed orders.
- June 2025 generated **67,900.00** in revenue from completed orders.
- Revenue increased by **12,900.00 (23.45%)** from May to June.

### 2. Top-Performing Products
- **Smart Watch** was the highest-revenue product, generating **22,500.00** from 3 units sold.
- **Wireless Headphones** ranked second, generating **18,000.00** from 4 units sold.
- **Denim Jeans** ranked third, generating **16,000.00** from 4 units sold.
- **Face Wash** had the highest unit sales, with 8 units sold, generating **9,600.00** in revenue.

### 3. Product Category Performance
- **Electronics** was the highest-performing category, generating **50,100.00** in revenue.
- **Clothing** ranked second with **28,500.00**.
- **Beauty** generated **21,600.00**.
- **Books** generated **12,200.00**, while **Home Appliances** generated **10,500.00**.

### 4. Order Status Analysis
- The dataset contained **15 orders** in total.
- **13 orders (86.67%)** were completed.
- **2 orders (13.33%)** were cancelled.

### Conclusion
The analysis shows that June performed better than May in terms of completed-order revenue. Electronics was the leading product category, while Smart Watch was the highest-revenue product. Most orders were completed, although cancelled orders remain an area worth monitoring.

These findings are based on the sample data included in this project.


## Author
Saira Basheer
