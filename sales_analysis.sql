CREATE DATABASE superstore_db;

USE superstore_db;

SELECT * FROM orders LIMIT 10;

SELECT SUM(Sales) AS total_sales FROM orders;

SELECT SUM(Profit) AS total_profit FROM orders;

SELECT Customer_Name, SUM(Sales) AS total_spent
FROM orders
GROUP BY Customer_Name
ORDER BY total_spent DESC
LIMIT 10;

SELECT Product_Name, SUM(Sales) AS total_sales
FROM orders
GROUP BY Product_Name
ORDER BY total_sales DESC
LIMIT 10;

SELECT Region, SUM(Sales) AS total_sales
FROM orders
GROUP BY Region;

SELECT Category, SUM(Profit) AS total_profit
FROM orders
GROUP BY Category
ORDER BY total_profit DESC;

SELECT 
    MONTH(Order_Date) AS month,
    SUM(Sales) AS monthly_sales
FROM orders
GROUP BY month
ORDER BY month;

SELECT Product_Name, SUM(Profit) AS total_profit
FROM orders
GROUP BY Product_Name
HAVING total_profit < 0
ORDER BY total_profit;

SELECT AVG(Sales) AS avg_order_value FROM orders;

SELECT Region, SUM(Profit) AS total_profit
FROM orders
GROUP BY Region
ORDER BY total_profit DESC
LIMIT 1;