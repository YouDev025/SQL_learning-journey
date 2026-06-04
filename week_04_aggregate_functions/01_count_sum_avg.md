# Count, Sum, and Avg

Aggregate functions summarize values across rows.
- `COUNT` counts rows
- `SUM` totals numeric values
- `AVG` calculates the average

Example:
```sql
SELECT COUNT(*) AS total_orders,
       SUM(amount) AS total_sales,
       AVG(amount) AS average_order
FROM orders;
```
