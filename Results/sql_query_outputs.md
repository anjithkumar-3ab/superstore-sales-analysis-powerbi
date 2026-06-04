# SQL Query Outputs (Superstore)

Generated: 2026-06-02 19:34:28

Source: `Sample_Superstore.csv`

## 1. Total Records

```sql
SELECT COUNT(*) AS total_records FROM sales;
```

| total_records |
| --- |
| 9994 |

## 2. Total Sales

```sql
SELECT SUM(sales) AS total_sales FROM sales;
```

| total_sales |
| --- |
| 2297200.8603 |

## 3. Total Profit

```sql
SELECT SUM(profit) AS total_profit FROM sales;
```

| total_profit |
| --- |
| 286397.0217 |

## 4. Total Quantity Sold

```sql
SELECT SUM(quantity) AS total_quantity FROM sales;
```

| total_quantity |
| --- |
| 37873 |

## 5. Sales by Region

```sql
SELECT region,
                   SUM(sales) AS total_sales
            FROM sales
            GROUP BY region
            ORDER BY total_sales DESC;
```

| region | total_sales |
| --- | --- |
| West | 725457.8245 |
| East | 678781.24 |
| Central | 501239.8908 |
| South | 391721.905 |

## 6. Profit by Category

```sql
SELECT category,
                   SUM(profit) AS total_profit
            FROM sales
            GROUP BY category
            ORDER BY total_profit DESC;
```

| category | total_profit |
| --- | --- |
| Technology | 145454.9481 |
| Office Supplies | 122490.8008 |
| Furniture | 18451.2728 |

## 7. Monthly Sales Trend

```sql
SELECT order_month,
                   SUM(sales) AS total_sales
            FROM sales
            GROUP BY order_month
            ORDER BY total_sales DESC;
```

| order_month | total_sales |
| --- | --- |
| Nov | 352461.071 |
| Dec | 325293.5035 |
| Sep | 307649.9457 |
| Mar | 205005.4888 |
| Oct | 200322.9847 |
| Aug | 159044.063 |
| May | 155028.8117 |
| Jun | 152718.6793 |
| Jul | 147238.097 |
| Apr | 137762.1286 |
| Jan | 94924.8356 |
| Feb | 59751.2514 |

## 8. Top 10 Customers

```sql
SELECT customer_name,
                   SUM(sales) AS total_sales
            FROM sales
            GROUP BY customer_name
            ORDER BY total_sales DESC
            LIMIT 10;
```

| customer_name | total_sales |
| --- | --- |
| Sean Miller | 25043.05 |
| Tamara Chand | 19052.218 |
| Raymond Buch | 15117.339 |
| Tom Ashbrook | 14595.62 |
| Adrian Barton | 14473.571 |
| Ken Lonsdale | 14175.229 |
| Sanjit Chand | 14142.334 |
| Hunter Lopez | 12873.297999999999 |
| Sanjit Engle | 12209.438 |
| Christopher Conant | 12129.072 |

## 9. Top 5 Products

```sql
SELECT product_name,
                   SUM(sales) AS total_sales
            FROM sales
            GROUP BY product_name
            ORDER BY total_sales DESC
            LIMIT 5;
```

| product_name | total_sales |
| --- | --- |
| Canon imageCLASS 2200 Advanced Copier | 61599.824 |
| Fellowes PB500 Electric Punch Plastic Comb Binding Machine with Manual Bind | 27453.384000000002 |
| Cisco TelePresence System EX90 Videoconferencing Unit | 22638.48 |
| HON 5400 Series Task Chairs for Big and Tall | 21870.576 |
| GBC DocuBind TL300 Electric Binding System | 19823.479 |

## 10. Discount Impact on Profit

```sql
SELECT discount,
                   AVG(profit) AS avg_profit
            FROM sales
            GROUP BY discount
            ORDER BY discount;
```

| discount | avg_profit |
| --- | --- |
| 0.0 | 66.90029245518967 |
| 0.1 | 96.05507446808511 |
| 0.15 | 27.288298076923077 |
| 0.2 | 24.702572053595844 |
| 0.3 | -45.67963612334801 |
| 0.32 | -88.56065555555554 |
| 0.4 | -111.9274291262136 |
| 0.45 | -226.64646363636365 |
| 0.5 | -310.7034560606061 |
| 0.6 | -43.0772115942029 |
| 0.7 | -95.87405956937799 |
| 0.8 | -101.79679733333333 |
