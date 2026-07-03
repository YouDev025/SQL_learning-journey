-- ============================================
-- Week 2 Exercises — Solved
-- ============================================

-- 1. Select rows from employees where department is 'Sales'
SELECT *
FROM employees
WHERE department = 'Sales';


-- 2. Select customers where country is 'Canada' AND status is 'active'
SELECT *
FROM customers
WHERE country = 'Canada'
  AND status = 'active';


-- 3. Find products where the name starts with 'A'
SELECT *
FROM products
WHERE name LIKE 'A%';


-- 4. Select orders where shipped_date is NULL
SELECT *
FROM orders
WHERE shipped_date IS NULL;


-- 5. Return rows where price is between 10 and 50 (inclusive)
SELECT *
FROM products
WHERE price BETWEEN 10 AND 50;