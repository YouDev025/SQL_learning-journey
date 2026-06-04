# Set Operations

Set operations combine results from multiple queries.
- `UNION` merges unique rows
- `INTERSECT` returns common rows
- `EXCEPT` returns rows from the first query not in the second

Example:
```sql
SELECT email FROM newsletter_subscribers
UNION
SELECT email FROM event_attendees;
```
