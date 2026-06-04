# Primary and Foreign Keys

A primary key uniquely identifies each row. A foreign key links related rows between tables.

Example:
```sql
CREATE TABLE customers (
  id INTEGER PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE orders (
  id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customers(id)
);
```
