
USE ecommerce_analytics;
-- Q1. What is the total revenue generated from completed orders?

SELECT
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'Completed';


-- Q2. What is the monthly sales revenue?

SELECT
    YEAR(o.order_date) AS order_year,
    MONTH(o.order_date) AS order_month,
    SUM(oi.quantity * oi.unit_price) AS monthly_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'Completed'
GROUP BY
    YEAR(o.order_date),
    MONTH(o.order_date)
ORDER BY order_year, order_month;


-- Q3. Which products generate the highest revenue?

SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;


-- Q4. Which product categories generate the highest revenue?

SELECT
    c.category_name,
    SUM(oi.quantity * oi.unit_price) AS category_revenue
FROM categories c
JOIN products p
    ON c.category_id = p.category_id
JOIN order_items oi
    ON p.product_id = oi.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY c.category_id, c.category_name
ORDER BY category_revenue DESC;


-- Q5. Who are the highest-spending customers?

SELECT
    c.customer_id,
    c.customer_name,
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'Completed'
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC;


-- Q6. How many completed orders has each customer placed?

SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS completed_orders
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
    AND o.order_status = 'Completed'
GROUP BY c.customer_id, c.customer_name
ORDER BY completed_orders DESC;


-- Q7. How many orders are completed or cancelled?

SELECT
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;


-- Q8. What are the payment method and payment status totals?

SELECT
    payment_method,
    payment_status,
    COUNT(*) AS payment_count
FROM payments
GROUP BY payment_method, payment_status
ORDER BY payment_method, payment_status;


-- Q9. Which products have low stock?

SELECT
    product_id,
    product_name,
    stock_quantity
FROM products
WHERE stock_quantity < 30
ORDER BY stock_quantity ASC;


-- Q10. What is the overall business performance?

SELECT
    COUNT(DISTINCT o.order_id) AS completed_orders,
    COUNT(DISTINCT o.customer_id) AS purchasing_customers,
    SUM(oi.quantity * oi.unit_price) AS total_revenue,
    SUM(oi.quantity) AS total_units_sold,
    AVG(oi.quantity * oi.unit_price) AS average_line_item_value
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'Completed';