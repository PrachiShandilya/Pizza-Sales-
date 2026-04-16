USE pizzadb;

-- KPI's Requirements 
-- 1. Total Revenue:
SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;
 
-- 2. Avg Order Value:
SELECT SUM(total_price) / COUNT(DISTINCT order_id) FROM pizza_sales;
 
-- 3. Total Pizzas Sold:
SELECT SUM(quantity) AS Total_Pizzas_Sold FROM pizza_sales;
 
-- 4. Total Orders:
SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales;
 
-- 5. Average Pizzas Per Order:
SELECT CAST(SUM(quantity) / COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS Avg_Pizzas_Per_Order FROM pizza_sales;
 

-- CHARTS REQUIREMENT
-- 1. Daily Trend for Total Orders:
SELECT DAYNAME(order_date) AS Order_Day, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DAYNAME(order_date)
ORDER BY MIN(DAYOFWEEK(order_date));
 
-- 2. Monthly Trend for Total Orders:
SELECT MONTHNAME(order_date) AS Month_Name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY MONTHNAME(order_date)
ORDER BY MIN(MONTH(order_date));
 
-- 3. Percentage of Sales by Pizza Category:
SELECT pizza_category AS Pizza_Category, ROUND((SUM(total_price) / (SELECT SUM(total_price) FROM pizza_sales)) * 100, 2) AS Revenue_Percentage
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Revenue_Percentage DESC;
 
-- 4. Percentage of Sales by Pizza Size:
SELECT pizza_size AS Pizza_Size, ROUND(SUM(total_price)/(SELECT SUM(total_price) FROM pizza_sales) * 100, 2) AS Revenue_Percentage
FROM pizza_sales
GROUP BY pizza_size
ORDER BY Revenue_Percentage DESC;
 
-- 5. Total Pizzas Sold by Pizzas Category:
SELECT pizza_category AS Pizza_Category, SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales
GROUP BY pizza_category;
 
-- 6. Top 5 Best Sellers by Revenue:
SELECT pizza_name AS Pizza_Name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC LIMIT 5;
 
-- 7. Top 5 Best Sellers by Quantity:
SELECT pizza_name AS Pizza_Name, SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC LIMIT 5;
 
-- 8. Top 5 Best Sellers by Orders:
SELECT pizza_name AS Pizza_Name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC LIMIT 5;
 
-- 9. Bottom 5 Pizzas by Revenue:
SELECT pizza_name AS Pizza_Name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC LIMIT 5;
 
-- 10. Bottom 5 Pizzas by Quantity:
SELECT pizza_name AS Pizza_Name, SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity ASC LIMIT 5;
 
-- 11. Bottom 5 Pizzas by Orders:
SELECT pizza_name AS Pizza_Name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC LIMIT 5;
 


