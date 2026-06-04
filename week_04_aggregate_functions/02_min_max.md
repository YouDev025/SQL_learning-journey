# Min and Max

`MIN` and `MAX` return the smallest and largest values in a column.

Example:
```sql
SELECT MIN(price) AS lowest_price,
       MAX(price) AS highest_price
FROM products;
```
