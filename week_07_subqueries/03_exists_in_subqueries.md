# Exists in Subqueries

`EXISTS` checks if a subquery returns any rows. It is useful for conditional filters.

Example:
```sql
SELECT name
FROM customers c
WHERE EXISTS (
  SELECT 1
  FROM orders o
  WHERE o.customer_id = c.id
);
```
