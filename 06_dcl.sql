USE online_shop;

-- 1. Kotha user create cheyadam
CREATE USER IF NOT EXISTS 'analyst'@'localhost' IDENTIFIED BY 'Analyst@123';

-- 2. SELECT permission matrame ivvadam (GRANT)
GRANT SELECT ON online_shop.* TO 'analyst'@'localhost';

-- 3. Permissions check cheyadam
SHOW GRANTS FOR 'analyst'@'localhost';

-- 4. Permission teeseyadam (REVOKE)
REVOKE SELECT ON online_shop.* FROM 'analyst'@'localhost';

-- 5. Malli check cheyadam
SHOW GRANTS FOR 'analyst'@'localhost';