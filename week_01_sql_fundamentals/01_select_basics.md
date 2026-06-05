# Select Basics

## 🎯 Learning Objectives

After completing this lesson, you will be able to:

- Understand the purpose of the `SELECT` statement
- Retrieve data from one or more columns
- Retrieve all columns from a table
- Rename columns using aliases
- Perform simple calculations in queries
- Understand the basic structure of a SQL query

---

# Introduction

The `SELECT` statement is the most commonly used SQL command.

It is used to retrieve data from a database table without modifying the stored data.

Think of `SELECT` as asking the database a question:

> "Show me the information I need."

---

# Basic Syntax

```sql
SELECT column_name
FROM table_name;
```

### Example

```sql
SELECT first_name
FROM employees;
```

This query retrieves all values from the `first_name` column in the `employees` table.

---

# Selecting Multiple Columns

You can retrieve multiple columns by separating them with commas.

### Example

```sql
SELECT first_name, last_name
FROM employees;
```

### Result

| first_name | last_name |
|------------|-----------|
| John | Smith |
| Alice | Brown |
| Bob | Wilson |

This query returns only the specified columns.

---

# Selecting All Columns

Use the asterisk (`*`) to retrieve every column from a table.

### Syntax

```sql
SELECT *
FROM table_name;
```

### Example

```sql
SELECT *
FROM employees;
```

### Result

| employee_id | first_name | last_name | salary |
|------------|------------|-----------|---------|
| 1 | John | Smith | 5000 |
| 2 | Alice | Brown | 6000 |

### Note

Although convenient, using `SELECT *` is not recommended in production because it may:

- Return unnecessary data
- Reduce performance
- Make queries harder to maintain

It is usually better to select only the columns you need.

---

# Using Column Aliases

Aliases allow you to rename columns in the result.

### Syntax

```sql
SELECT column_name AS alias_name
FROM table_name;
```

### Example

```sql
SELECT first_name AS employee_name
FROM employees;
```

### Result

| employee_name |
|---------------|
| John |
| Alice |

The actual column name remains unchanged in the database.

---

# Aliases Without AS

The `AS` keyword is optional.

### Example

```sql
SELECT first_name employee_name
FROM employees;
```

Produces the same result as:

```sql
SELECT first_name AS employee_name
FROM employees;
```

---

# Selecting Constant Values

SQL can return fixed values without reading them from a table.

### Example

```sql
SELECT 'Hello World';
```

### Result

| Hello World |
|-------------|
| Hello World |

---

# Performing Calculations

SQL can perform mathematical operations inside a `SELECT` statement.

### Example

```sql
SELECT 10 + 5;
```

### Result

| 10 + 5 |
|---------|
| 15 |

---

### Example

```sql
SELECT salary * 12 AS annual_salary
FROM employees;
```

### Result

| annual_salary |
|--------------|
| 60000 |
| 72000 |

This calculates yearly salary from monthly salary.

---

# Query Execution Flow

When SQL executes a basic query:

```sql
SELECT first_name
FROM employees;
```

The database:

1. Finds the `employees` table.
2. Reads all rows.
3. Retrieves the `first_name` column.
4. Returns the result.

---

# Sample Table

### employees

| employee_id | first_name | last_name | department |
|------------|------------|-----------|------------|
| 1 | John | Smith | IT |
| 2 | Alice | Brown | HR |
| 3 | Bob | Wilson | Finance |

---

# Practice Examples

## Example 1

Retrieve all employee first names.

```sql
SELECT first_name
FROM employees;
```

---

## Example 2

Retrieve first and last names.

```sql
SELECT first_name, last_name
FROM employees;
```

---

## Example 3

Retrieve all columns.

```sql
SELECT *
FROM employees;
```

---

## Example 4

Rename a column.

```sql
SELECT first_name AS name
FROM employees;
```

---

## Example 5

Calculate annual salary.

```sql
SELECT salary * 12 AS annual_salary
FROM employees;
```

---

# Common Mistakes

## Forgetting Commas

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

## Misspelling Column Names

❌ Incorrect

```sql
SELECT fist_name
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

# Best Practices

- Select only the columns you need.
- Avoid excessive use of `SELECT *`.
- Use meaningful aliases.
- Format queries for readability.
- Use uppercase for SQL keywords.

Example:

```sql
SELECT first_name,
       last_name
FROM employees;
```

---

# Summary

The `SELECT` statement is the foundation of SQL and is used to retrieve data from database tables.

Key concepts learned:

- `SELECT` retrieves data.
- Multiple columns can be selected.
- `*` returns all columns.
- Aliases rename columns in results.
- SQL can perform calculations within queries.
