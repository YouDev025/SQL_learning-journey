# Scalar and Row Subqueries

A scalar subquery returns one value. A row subquery returns a single row.

Example:
```sql
SELECT name
FROM users
WHERE city = (
  SELECT city
  FROM offices
  WHERE id = 1
);
```
