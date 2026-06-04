# Outer Joins

OUTER JOIN returns matching rows and unmatched rows from one or both tables.

Example:
```sql
SELECT c.name, o.order_date
FROM customers c
LEFT JOIN orders o
  ON c.id = o.customer_id;
```
