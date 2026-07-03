-- ============================================
-- Week 3 Exercises — Solved
-- ============================================

-- 1. Select all products sorted by name ascending
SELECT *
FROM products
ORDER BY name ASC;


-- 2. Return the top 3 most expensive items from inventory
SELECT *
FROM inventory
ORDER BY price DESC
LIMIT 3;


-- 3. Use OFFSET to skip the first 5 rows
SELECT *
FROM products
ORDER BY id
OFFSET 5;
-- Note: some databases (e.g. MySQL) require LIMIT alongside OFFSET, e.g.:
-- SELECT * FROM products ORDER BY id LIMIT 18446744073709551615 OFFSET 5;
-- PostgreSQL and SQL Server accept OFFSET on its own as shown above.


-- 4. Select unique values from the category column
SELECT DISTINCT category
FROM products;


-- 5. Query with column aliases for first_name and last_name
SELECT first_name AS "First Name",
       last_name  AS "Last Name"
FROM employees;