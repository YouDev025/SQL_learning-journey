# Having Clause

HAVING filters groups after aggregation. Use it with GROUP BY.

Example:
```sql
SELECT department,
       COUNT(*) AS team_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
```
