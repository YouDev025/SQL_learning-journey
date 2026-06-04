# Inner Join

INNER JOIN returns rows that match in both tables.

Example:
```sql
SELECT e.first_name, d.department_name
FROM employees e
INNER JOIN departments d
  ON e.department_id = d.id;
```
