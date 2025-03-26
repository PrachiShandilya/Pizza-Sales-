# Pizza Sales Analysis (SQL + Power BI)

### Overview
This project is a Pizza Sales Analysis Dashboard built using SQL and Power BI. The goal is to analyze sales trends, identify top-performing products, and gain business insights using data-driven decision-making.

### Key Objectives
- Analyze total sales, revenue, and order trends.
- Identify busiest sales periods (daily, monthly trends).
- Categorize sales based on pizza types and sizes.
- Determine best-selling and worst-selling pizzas.

### Dataset
Source: 

Tables: pizza_sales

### Metrics Used:

- Total Revenue
- Total Orders
- Total Pizzas Sold
- Average Order Value
- Sales Trends (Daily & Monthly)
- Sales by Category & Size

### Tech Stack
- SQL (PostgreSQL/MySQL) - Data extraction and transformation
- Power BI - Data visualization and dashboard creation
- DAX - Creating Measures & Calculations

### SQL Analysis
The data was pre-processed using SQL queries, including:

- Sales trend analysis (GROUP BY month, day)
- Revenue by pizza type (SUM(revenue))
- Bestsellers & worst sellers (ORDER BY revenue DESC)

### Power BI Dashboard Features
The dashboard consists of two main pages:

1. Sales Overview Page

- KPIs: Total revenue, total orders, average pizzas per order
- Sales Trends: Daily and monthly trends
- Sales Distribution: By pizza category and size

2. Best & Worst Sellers Page

- Top-selling pizzas (by revenue, quantity, total orders)
- Worst-performing pizzas

### DAX Calculations & Measures

Several DAX Measures were created to perform calculations, including:

- Total Revenue: SUM(pizza_sales[total_price])
- Total Orders: DISTINCTCOUNT(pizza_sales[order_id])
- Total Pizzas Sold: SUM(pizza_sales[quantity])
- Average Order Value: DIVIDE([Total Revenue], [Total Orders])
- Average Pizzas per Order: DIVIDE([Total Pizzas Sold], [Total Orders])


### Dashboard Screenshots
- Sales Overview

- Best & Worst Sellers


### Insights & Business Impact
- Peak sales days: Friday & Saturday
- Best-selling pizza category: Classic
- Best-selling pizza size: Large
- Highest revenue pizza: Thai Chicken Pizza

### Conclusion
This project demonstrates end-to-end data analysis using SQL + Power BI. It helps businesses optimize inventory, pricing, and promotions based on sales trends.
