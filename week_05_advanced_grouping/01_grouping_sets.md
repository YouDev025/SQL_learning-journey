# Grouping Sets

Grouping sets allow multiple grouping combinations in one query.

Example:
```sql
SELECT region, product,
       SUM(sales) AS total_sales
FROM sales_data
GROUP BY GROUPING SETS ((region, product), (region), (product));
```
