# SQL Syntax Basics

## 🎯 Learning Objectives

After completing this lesson, you will be able to:

- Understand the basic structure of a SQL query
- Recognize common SQL keywords
- Follow the standard order of SQL clauses
- Write simple `SELECT` statements
- Apply filtering using the `WHERE` clause
- Format SQL queries for readability

---

# Introduction

SQL (Structured Query Language) follows a specific syntax and structure.

A SQL query is made up of **keywords**, **clauses**, **table names**, and **column names** that work together to retrieve or manipulate data.

Learning SQL syntax is similar to learning grammar in a language. Once you understand the structure, writing queries becomes much easier.

---

# Basic Query Structure

The most common SQL query follows this format:

```sql
SELECT columns
FROM table
WHERE condition;
```

### Example

```sql
SELECT product_name, price
FROM products
WHERE price > 20;
```

### Explanation

| Clause | Purpose                            |
|--------|------------------------------------|
| SELECT | Specifies which columns to retrieve |
| FROM   | Specifies the table to read from   |
| WHERE  | Filters rows based on a condition  |

---

# SQL Keywords

Keywords are reserved words that have special meaning in SQL.

### Common Keywords

```sql
SELECT
FROM
WHERE
INSERT
UPDATE
DELETE
CREATE
ALTER
DROP
ORDER BY
GROUP BY
HAVING
```

### Example

```sql
SELECT first_name
FROM employees;
```

Here:

- `SELECT` and `FROM` are SQL keywords.
- `first_name` is a column name.
- `employees` is a table name.

---

# SQL Is Not Case Sensitive

The following queries are equivalent:

```sql
SELECT * FROM employees;
```

```sql
select * from employees;
```

```sql
SeLeCt * FrOm employees;
```

### Best Practice

Write SQL keywords in uppercase.

```sql
SELECT *
FROM employees;
```

This improves readability.

---

# Understanding the SELECT Clause

The `SELECT` clause specifies which columns should appear in the result.

### Example

```sql
SELECT first_name, last_name
FROM employees;
```

Result:

| first_name | last_name |
|------------|-----------|
| John       | Smith     |
| Alice      | Brown     |

---

# Understanding the FROM Clause

The `FROM` clause tells SQL which table contains the data.

### Example

```sql
SELECT *
FROM employees;
```

The database looks for data inside the `employees` table.

---

# Understanding the WHERE Clause

The `WHERE` clause filters rows.

### Example

```sql
SELECT *
FROM employees
WHERE department = 'IT';
```

Only employees in the IT department are returned.

---

# SQL Statement Terminator

Most SQL systems use a semicolon (`;`) to indicate the end of a statement.

### Example

```sql
SELECT *
FROM employees;
```

### Why Use It?

It allows multiple SQL statements to be executed together.

```sql
SELECT * FROM employees;

SELECT * FROM departments;
```

---

# Query Execution Order

Although we write:

```sql
SELECT first_name
FROM employees
WHERE department = 'IT';
```

SQL processes it logically in this order:

1. `FROM`
2. `WHERE`
3. `SELECT`

### Visualization

```text
FROM employees
      ↓
WHERE department = 'IT'
      ↓
SELECT first_name
```

---

# Sample Table

### employees

| employee_id | first_name | department | salary |
|-------------|------------|------------|--------|
| 1           | John       | IT         | 5000   |
| 2           | Alice      | HR         | 4500   |
| 3           | Bob        | IT         | 6000   |

---

# Examples

## Example 1: Retrieve All Columns

```sql
SELECT *
FROM employees;
```

---

## Example 2: Retrieve Specific Columns

```sql
SELECT first_name, department
FROM employees;
```

---

## Example 3: Filter Data

```sql
SELECT first_name
FROM employees
WHERE department = 'IT';
```

Result:

| first_name |
|------------|
| John       |
| Bob        |

---

## Example 4: Numeric Condition

```sql
SELECT first_name, salary
FROM employees
WHERE salary > 5000;
```

Result:

| first_name | salary |
|------------|--------|
| Bob        | 6000   |

---

# SQL Formatting Best Practices

## Good Formatting

```sql
SELECT first_name,
       last_name,
       salary
FROM employees
WHERE salary > 5000;
```

### Benefits

- Easier to read
- Easier to debug
- More professional

---

## Poor Formatting

```sql
SELECT first_name,last_name,salary FROM employees WHERE salary>5000;
```

Although valid, it is harder to read.

---

# Common Syntax Errors

## Missing Comma

❌ Incorrect

```sql
SELECT first_name last_name
FROM employees;
```

✅ Correct

```sql
SELECT first_name, last_name
FROM employees;
```

---

## Misspelled Keyword

❌ Incorrect

```sql
SELEC first_name
FROM employees;
```

✅ Correct

```sql
SELECT first_name
FROM employees;
```

---

## Missing FROM Clause

❌ Incorrect

```sql
SELECT first_name;
```

✅ Correct

```sql
SELECT first_name
FROM employees;
```

---

## Missing Quotes Around Text

❌ Incorrect

```sql
SELECT *
FROM employees
WHERE department = IT;
```

✅ Correct

```sql
SELECT *
FROM employees
WHERE department = 'IT';
```

---

# SQL Syntax Rules

### Rule 1

Keywords can be uppercase or lowercase.

```sql
SELECT
```

or

```sql
select
```

---

### Rule 2

Text values are enclosed in single quotes.

```sql
'John'
```

```sql
'IT'
```

---

### Rule 3

Numbers are written without quotes.

```sql
salary > 5000
```

---

### Rule 4

Separate column names using commas.

```sql
SELECT first_name, last_name
FROM employees;
```

---

# Summary

SQL follows a structured syntax based on clauses.

Basic query structure:

```sql
SELECT columns
FROM table
WHERE condition;
```

Key concepts learned:

- SQL uses keywords and clauses.
- `SELECT` chooses columns.
- `FROM` specifies the table.
- `WHERE` filters rows.
- SQL is not case-sensitive.
- Good formatting improves readability.
- Most statements end with a semicolon.