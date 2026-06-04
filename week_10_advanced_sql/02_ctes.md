# Common Table Expressions

CTEs make queries easier to read by defining temporary result sets.

Example:
```sql
WITH recent_orders AS (
  SELECT *
  FROM orders
  WHERE order_date >= '2024-01-01'
)
SELECT customer_id, COUNT(*) AS order_count
FROM recent_orders
GROUP BY customer_id;
```
