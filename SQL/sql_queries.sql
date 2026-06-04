-- Superstore Sales Analytics Dashboard
-- SQL script (PostgreSQL)
-- Table assumed: sales

-- Query 1: Total Records
SELECT COUNT(*) AS total_records FROM sales;

-- Query 2: Total Sales
SELECT ROUND(SUM(sales), 2) AS total_sales FROM sales;

-- Query 3: Total Profit
SELECT ROUND(SUM(profit), 2) AS total_profit FROM sales;

-- Query 4: Total Quantity
SELECT SUM(quantity) AS total_quantity FROM sales;

-- Query 5: Sales by Region
SELECT
  region,
  ROUND(SUM(sales), 2) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

-- Query 6: Profit by Category
SELECT
  category,
  ROUND(SUM(profit), 2) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;

-- Query 7: Top Customers
SELECT
  customer_name,
  ROUND(SUM(sales), 2) AS total_sales
FROM sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Query 8: Top Products
SELECT
  product_name,
  ROUND(SUM(sales), 2) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

-- Query 9: Discount Impact on Profit
SELECT
  discount,
  ROUND(AVG(profit), 2) AS avg_profit
FROM sales
GROUP BY discount
ORDER BY discount;
