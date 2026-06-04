# SQL Data Types

SQL data types define the type of data a column can store. Common types include:
- `INTEGER` for whole numbers
- `VARCHAR` for text
- `DATE` for dates
- `DECIMAL` for precise numbers

Example:
```sql
CREATE TABLE inventory (
  item_id INTEGER,
  name VARCHAR(100),
  price DECIMAL(10, 2),
  added_on DATE
);
```
