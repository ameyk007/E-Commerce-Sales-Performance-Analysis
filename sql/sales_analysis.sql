-- Total Revenue
SELECT SUM(total_amount) AS total_revenue
FROM sales;

-- Monthly Revenue
SELECT 
    MONTH(order_date) AS month,
    SUM(total_amount) AS monthly_revenue
FROM sales
GROUP BY MONTH(order_date)
ORDER BY monthly_revenue DESC;

-- Category-wise Revenue
SELECT 
    category,
    SUM(total_amount) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;

-- Top 5 Selling Products
SELECT 
    product_name,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 5;

-- Top 10 Customers
SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- Average Order Value
SELECT 
    AVG(total_amount) AS avg_order_value
FROM sales;

-- Repeat Customers
SELECT 
    customer_id,
    COUNT(order_id) AS order_count
FROM sales
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

