USE online_shop;

-- CREATE: kotha customer ni add cheyadam
INSERT INTO customers (name, email, phone, city)
VALUES ('Test User', 'test@mail.com', '9876500011', 'Hyderabad');

-- READ: add ayyindo ledo chudadam
SELECT * FROM customers WHERE customer_id = 11;

-- UPDATE: customer city marchadam
UPDATE customers
SET city = 'Bangalore'
WHERE customer_id = 11;

-- UPDATE: Smartphone price marchadam
UPDATE products
SET price = 16999.00
WHERE product_id = 2;

-- DELETE: test customer ni teeseyadam
DELETE FROM customers
WHERE customer_id = 11;

-- READ: delete ayyindo ledo check cheyadam
SELECT * FROM customers;