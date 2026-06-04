# Distinct and Aliases

`DISTINCT` removes duplicate rows. Aliases rename columns or tables in results.

Example:
```sql
SELECT DISTINCT country
FROM customers;

SELECT first_name AS name, salary AS monthly_salary
FROM employees;
```
