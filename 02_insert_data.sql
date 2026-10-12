USE online_shop;

-- Categories
INSERT INTO categories (category_name) VALUES
('Electronics'), ('Clothing'), ('Books'), ('Home & Kitchen');

-- Customers
INSERT INTO customers (name, email, phone, city) VALUES
('Ravi Kumar',    'ravi@mail.com',   '9876500001', 'Hyderabad'),
('Sneha Reddy',   'sneha@mail.com',  '9876500002', 'Vijayawada'),
('Anil Varma',    'anil@mail.com',   '9876500003', 'Visakhapatnam'),
('Priya Sharma',  'priya@mail.com',  '9876500004', 'Hyderabad'),
('Kiran Babu',    'kiran@mail.com',  '9876500005', 'Guntur'),
('Divya Lakshmi', 'divya@mail.com',  '9876500006', 'Vijayawada'),
('Suresh Naidu',  'suresh@mail.com', '9876500007', 'Tirupati'),
('Meena Kumari',  'meena@mail.com',  '9876500008', 'Hyderabad'),
('Rahul Verma',   'rahul@mail.com',  '9876500009', 'Chennai'),
('Anjali Devi',   'anjali@mail.com', '9876500010', 'Guntur');

-- Products
INSERT INTO products (product_name, category_id, price, stock) VALUES
('Wireless Earbuds',        1, 1999.00,  50),
('Smartphone',              1, 15999.00, 30),
('Bluetooth Speaker',       1, 2499.00,  40),
('Men''s T-Shirt',          2, 599.00,   100),
('Jeans',                   2, 1299.00,  80),
('Saree',                   2, 2499.00,  25),
('SQL Basics Book',         3, 399.00,   60),
('Python Programming Book', 3, 499.00,   45),
('Novel Collection',        3, 699.00,   0),
('Mixer Grinder',           4, 3499.00,  20),
('Cookware Set',            4, 1899.00,  35),
('Water Bottle',            4, 349.00,   150);

-- Orders
INSERT INTO orders (customer_id, order_date, status) VALUES
(1, '2026-01-05', 'Delivered'),
(2, '2026-01-12', 'Delivered'),
(3, '2026-02-03', 'Delivered'),
(1, '2026-02-18', 'Delivered'),
(4, '2026-03-07', 'Delivered'),
(5, '2026-03-21', 'Cancelled'),
(2, '2026-04-02', 'Delivered'),
(6, '2026-04-15', 'Delivered'),
(7, '2026-05-09', 'Delivered'),
(1, '2026-05-25', 'Placed'),
(8, '2026-06-10', 'Delivered'),
(4, '2026-07-04', 'Delivered'),
(9, '2026-08-19', 'Shipped'),
(2, '2026-09-08', 'Delivered'),
(3, '2026-09-27', 'Placed');

-- Order items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1999.00),  (1, 12, 2, 349.00),
(2, 4, 2, 599.00),   (2, 5, 1, 1299.00),
(3, 2, 1, 15999.00),
(4, 7, 1, 399.00),   (4, 8, 1, 499.00),
(5, 10, 1, 3499.00),
(6, 3, 1, 2499.00),
(7, 11, 1, 1899.00), (7, 12, 1, 349.00),
(8, 5, 2, 1299.00),
(9, 1, 1, 1999.00),  (9, 3, 1, 2499.00),
(10, 8, 2, 499.00),
(11, 10, 1, 3499.00), (11, 11, 1, 1899.00),
(12, 2, 1, 15999.00),
(13, 4, 3, 599.00),
(14, 7, 2, 399.00),  (14, 1, 1, 1999.00),
(15, 12, 4, 349.00);

-- Payments
INSERT INTO payments (order_id, amount, method, payment_date) VALUES
(1, 2697.00,  'UPI',        '2026-01-05'),
(2, 2497.00,  'Card',       '2026-01-12'),
(3, 15999.00, 'NetBanking', '2026-02-03'),
(4, 898.00,   'UPI',        '2026-02-18'),
(5, 3499.00,  'COD',        '2026-03-10'),
(7, 2248.00,  'UPI',        '2026-04-02'),
(8, 2598.00,  'Card',       '2026-04-15'),
(9, 4498.00,  'UPI',        '2026-05-09'),
(10, 998.00,  'COD',        '2026-05-28'),
(11, 5398.00, 'Card',       '2026-06-10'),
(12, 15999.00,'NetBanking', '2026-07-04'),
(13, 1797.00, 'UPI',        '2026-08-19'),
(14, 2797.00, 'Card',       '2026-09-08');