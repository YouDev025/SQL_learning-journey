# Nulls in Aggregation

NULL values are ignored by many aggregate functions. Use `COALESCE` to provide defaults.

Example:
```sql
SELECT category,
       SUM(COALESCE(quantity, 0)) AS total_quantity
FROM inventory
GROUP BY category;
```
