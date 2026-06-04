# Indexes and Constraints

Indexes speed up queries. Constraints enforce rules like unique values.

Example:
```sql
CREATE UNIQUE INDEX idx_email ON users(email);
ALTER TABLE products
  ADD CONSTRAINT chk_price_positive CHECK (price >= 0);
```
