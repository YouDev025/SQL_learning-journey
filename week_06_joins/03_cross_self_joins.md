# Cross and Self Joins

CROSS JOIN returns all combinations. SELF JOIN joins a table to itself.

Example:
```sql
SELECT a.name AS manager, b.name AS employee
FROM employees a
INNER JOIN employees b
  ON a.id = b.manager_id;
```
