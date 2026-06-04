# Limit and Offset

LIMIT restricts the number of rows returned. OFFSET skips rows before returning results.

Example:
```sql
SELECT *
FROM products
ORDER BY price ASC
LIMIT 5 OFFSET 10;
```
