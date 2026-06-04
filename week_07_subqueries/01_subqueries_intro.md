# Subqueries Intro

Subqueries are queries inside other queries. They can return values or result sets.

Example:
```sql
SELECT product_name
FROM products
WHERE category_id = (
  SELECT id
  FROM categories
  WHERE name = 'Electronics'
);
```
