# Pattern Matching

Use `LIKE` to match text patterns and `IS NULL` to find missing values.

Example:
```sql
SELECT *
FROM products
WHERE name LIKE 'S%'
  AND discontinued IS NULL;
```
