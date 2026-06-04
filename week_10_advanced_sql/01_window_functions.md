# Window Functions

Window functions perform calculations across rows related to the current row.

Example:
```sql
SELECT name,
       salary,
       AVG(salary) OVER (PARTITION BY department) AS dept_avg
FROM employees;
```
