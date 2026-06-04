# Insert, Update, Delete

Data manipulation commands change table contents.
- `INSERT` adds rows
- `UPDATE` changes rows
- `DELETE` removes rows

Example:
```sql
INSERT INTO users (name, email)
VALUES ('Alice', 'alice@example.com');

UPDATE users
SET email = 'alice@new.com'
WHERE id = 1;

DELETE FROM users
WHERE id = 1;
```
