USE online_shop;

-- Query 1: Top 5 costly products (ORDER BY, LIMIT)
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 5;

-- Query 2: Next 5 products (OFFSET)
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 5 OFFSET 5;

-- Query 3: Name 'R' tho start ayye customers (LIKE)
SELECT name, city
FROM customers
WHERE name LIKE 'R%';

-- Query 4: Jan-Mar lo jarigina orders (BETWEEN)
SELECT order_id, customer_id, order_date, status
FROM orders
WHERE order_date BETWEEN '2026-01-01' AND '2026-03-31';

-- Query 5: Products summary (Aggregate functions)
SELECT COUNT(*) AS total_products,
       MIN(price) AS lowest_price,
       MAX(price) AS highest_price,
       ROUND(AVG(price), 2) AS average_price
FROM products;

-- Query 6: City wise customers (GROUP BY)
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC;

-- Query 7: Category wise revenue (JOIN + GROUP BY)
SELECT c.category_name,
       SUM(oi.quantity * oi.price) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY revenue DESC;

-- Query 8: 1 kante ekkuva orders chesina customers (HAVING)
SELECT cu.name, COUNT(o.order_id) AS total_orders
FROM customers cu
JOIN orders o ON cu.customer_id = o.customer_id
GROUP BY cu.name
HAVING COUNT(o.order_id) > 1;

-- Query 9: Orders cheyani customers (LEFT JOIN)
SELECT cu.name, cu.city
FROM customers cu
LEFT JOIN orders o ON cu.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Query 10: Costly leda out-of-stock products (UNION)
SELECT product_name, 'Price above 10000' AS reason
FROM products WHERE price > 10000
UNION
SELECT product_name, 'Out of stock'
FROM products WHERE stock = 0;