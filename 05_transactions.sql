USE online_shop;

-- PART 1: Order place cheyadam (COMMIT)
START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2026-10-12', 'Placed');

SET @new_order = LAST_INSERT_ID();

INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES (@new_order, 2, 1, 16999.00);

UPDATE products SET stock = stock - 1 WHERE product_id = 2;

INSERT INTO payments (order_id, amount, method, payment_date)
VALUES (@new_order, 16999.00, 'UPI', '2026-10-12');

COMMIT;

-- PART 2: Tappu jarigite ROLLBACK demo
START TRANSACTION;

UPDATE products SET stock = 0 WHERE product_id = 1;
SELECT product_name, stock FROM products WHERE product_id = 1;  -- stock 0 kanipistundi

ROLLBACK;

SELECT product_name, stock FROM products WHERE product_id = 1; -- malli 50 vachestundi