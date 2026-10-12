# Online Shopping Database System

A relational database project built in MySQL for an online store. It stores customers, products, orders and payments, and answers business questions using SQL queries.

## Tools Used
- MySQL 8
- MySQL Workbench

## Database Tables
| Table | Purpose |
|---|---|
| customers | Customer details |
| categories | Product categories |
| products | Product details, price and stock |
| orders | Orders placed by customers |
| order_items | Products inside each order |
| payments | Payment details of each order |

## SQL Concepts Used
- DDL: CREATE DATABASE, CREATE TABLE
- DML: INSERT, UPDATE, DELETE
- DQL: SELECT with WHERE, ORDER BY, LIMIT, OFFSET, LIKE, BETWEEN
- Constraints: PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, CHECK, DEFAULT, AUTO_INCREMENT
- Aggregate functions: COUNT, SUM, AVG, MIN, MAX
- GROUP BY and HAVING
- Joins: INNER JOIN, LEFT JOIN
- UNION and UNION ALL
- TCL: START TRANSACTION, COMMIT, ROLLBACK (ACID properties)
- DCL: CREATE USER, GRANT, REVOKE

## Project Files
| File | Description |
|---|---|
| 01_create_tables.sql | Creates the database and 6 tables |
| 02_insert_data.sql | Inserts sample data |
| 03_crud_operations.sql | Insert, update and delete examples |
| 04_queries.sql | 10 business queries |
| 05_transactions.sql | Order placement with COMMIT and ROLLBACK |
| 06_dcl.sql | User permissions with GRANT and REVOKE |

## Sample Business Questions Answered
- Which are the top 5 costliest products?
- Which category earns the most revenue?
- Which customers placed more than one order?
- Which customers have never placed an order?
- Which products are out of stock?

## How to Run
1. Install MySQL and MySQL Workbench
2. Run the files in order from 01 to 06

## Author
Leela Amrutha Lakshmi Gopi
