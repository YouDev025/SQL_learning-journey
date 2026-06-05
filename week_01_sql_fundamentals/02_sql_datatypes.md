# SQL Data Types

## 🎯 Learning Objectives

After completing this lesson, you will be able to:

- Understand what SQL data types are
- Choose the appropriate type for a column
- Distinguish between numeric, text, and date types
- Create tables using common SQL data types
- Understand why correct data types matter

---

# Introduction

A **data type** defines what kind of value a column can store.

Examples:

- Numbers
- Text
- Dates
- Decimal values
- Boolean values

Choosing the correct data type is important because it affects:

- Data validation
- Storage size
- Query performance
- Accuracy of calculations

---

# Why Data Types Matter

Imagine storing a product price.

❌ As text:

```text
"19.99"
```

Problems:

- Cannot calculate totals easily
- Incorrect sorting (`"100"` comes before `"20"`)

✅ As `DECIMAL`:

```text
19.99
```

Benefits:

- Accurate calculations
- Proper sorting
- Better performance

---

# Main Categories

| Category   | Purpose                    | Examples                   |
|------------|----------------------------|----------------------------|
| Numeric    | Store numbers              | INTEGER, DECIMAL           |
| Character  | Store text                 | CHAR, VARCHAR, TEXT        |
| Date & Time| Store dates and times      | DATE, TIME, TIMESTAMP      |
| Boolean    | Store true/false values    | BOOLEAN                    |

---

# Common Numeric Types

## INTEGER

Stores whole numbers.

### Examples

```text
0
15
-42
1000
```

### Use Cases

- IDs
- Quantities
- Counters
- Ages

### Example

```sql
quantity INTEGER
```

---

## DECIMAL(p, s)

Stores precise decimal numbers.

- `p` = total number of digits
- `s` = digits after the decimal point

### Example

```sql
price DECIMAL(10, 2)
```

This allows values such as:

```text
19.99
1500.50
0.75
```

### Why Use DECIMAL?

For money, accuracy is essential.

```text
0.1 + 0.2
```

Floating-point types may produce rounding issues, while `DECIMAL` stores exact values.

---

# Common Character Types

## CHAR(n)

Stores fixed-length text.

### Example

```sql
country_code CHAR(2)
```

Values:

```text
US
FR
MA
```

Always reserves the same length.

---

## VARCHAR(n)

Stores variable-length text.

### Example

```sql
name VARCHAR(100)
```

Values can be:

```text
Alice
Mohamed
Jean Dupont
```

Uses only the needed space (up to the limit).

### Most Common Choice

For names, emails, titles, and addresses.

---

## TEXT

Stores long text.

### Example

```sql
description TEXT
```

Useful for:

- Product descriptions
- Comments
- Articles
- Notes

---

# Date and Time Types

## DATE

Stores only a calendar date.

### Format

```text
YYYY-MM-DD
```

### Example

```text
2026-08-15
```

### Use Cases

- Birth dates
- Order dates
- Registration dates

---

## TIME

Stores only the time.

### Example

```text
14:30:00
```

---

## TIMESTAMP / DATETIME

Stores both date and time.

### Example

```text
2026-08-15 14:30:00
```

Useful for:

- Login times
- Order creation times
- Event timestamps

---

# Boolean Type

## BOOLEAN

Stores logical values.

### Values

```text
TRUE
FALSE
```

### Example

```sql
is_active BOOLEAN
```

---

# Creating a Table

## Example

```sql
CREATE TABLE inventory (
  item_id       INTEGER,
  name          VARCHAR(100),
  price         DECIMAL(10, 2),
  quantity      INTEGER,
  added_on      DATE,
  is_available  BOOLEAN
);
```

### Column Breakdown

| Column       | Type           | Meaning            |
|--------------|----------------|--------------------|
| item_id      | INTEGER        | Product identifier |
| name         | VARCHAR(100)   | Product name       |
| price        | DECIMAL(10,2)  | Product price      |
| quantity     | INTEGER        | Number in stock    |
| added_on     | DATE           | Date added         |
| is_available | BOOLEAN        | Available or not   |

---

# Sample Data

```sql
INSERT INTO inventory (item_id, name, price, quantity, added_on, is_available)
VALUES
  (1, 'Keyboard', 299.99, 15, '2026-08-01', TRUE),
  (2, 'Mouse',    149.50, 30, '2026-08-03', TRUE);
```

---

# How to Choose a Data Type

## Rule of Thumb

| Data               | Recommended Type  |
|--------------------|-------------------|
| ID                 | INTEGER           |
| Quantity           | INTEGER           |
| Price              | DECIMAL(10,2)     |
| Name               | VARCHAR(100)      |
| Email              | VARCHAR(255)      |
| Description        | TEXT              |
| Birth date         | DATE              |
| Creation timestamp | TIMESTAMP         |
| Active/Inactive    | BOOLEAN           |

---

# Common Mistakes

## Using VARCHAR for Numbers

❌ Incorrect

```sql
price VARCHAR(20)
```

✅ Correct

```sql
price DECIMAL(10,2)
```

---

## Using INTEGER for Prices

❌ Incorrect

```sql
price INTEGER
```

Cannot store:

```text
19.99
```

✅ Correct

```sql
price DECIMAL(10,2)
```

---

## Choosing Very Small VARCHAR Sizes

❌ Risky

```sql
name VARCHAR(10)
```

May reject:

```text
Christopher
```

✅ Better

```sql
name VARCHAR(100)
```

---

# Best Practices

- Use `INTEGER` for identifiers and counts.
- Use `DECIMAL` for money and precise values.
- Use `VARCHAR` for most text fields.
- Use `TEXT` only for large text.
- Use `DATE` or `TIMESTAMP` for temporal data.
- Keep sizes realistic (`VARCHAR(100)` instead of `VARCHAR(10000)`).

---

# Summary

SQL data types define what kind of data each column can store.

Key points:

- `INTEGER` → whole numbers
- `DECIMAL` → precise decimal numbers
- `VARCHAR` → variable-length text
- `TEXT` → long text
- `DATE` → dates
- `TIMESTAMP` → date and time
- `BOOLEAN` → true/false values

Choosing the correct data type improves accuracy, performance, and data integrity.

---

