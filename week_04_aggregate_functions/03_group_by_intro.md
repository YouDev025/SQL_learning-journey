# Group By Intro

GROUP BY groups rows with the same values so aggregates can calculate per group.

Example:
```sql
SELECT department,
       COUNT(*) AS employee_count
FROM employees
GROUP BY department;
```
