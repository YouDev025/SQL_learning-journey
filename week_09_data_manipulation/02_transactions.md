# Transactions

Transactions group statements into a single unit. Use `BEGIN`, `COMMIT`, and `ROLLBACK`.

Example:
```sql
BEGIN;
UPDATE accounts SET balance = balance - 50 WHERE id = 1;
UPDATE accounts SET balance = balance + 50 WHERE id = 2;
COMMIT;
```
