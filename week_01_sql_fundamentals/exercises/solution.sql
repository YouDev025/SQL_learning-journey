-- 1. Select id, name, and email from users
SELECT id, name, email
FROM users;


-- 2. Select all columns from orders
SELECT *
FROM orders;


-- 3. Select title and author from books
SELECT title, author
FROM books;


-- 4. Create a categories table with id and name
CREATE TABLE categories (
    id   INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);


-- 5. VARCHAR vs INTEGER (one sentence, as a comment)
-- VARCHAR stores variable-length text (like names or emails),
-- while INTEGER stores whole numbers (like an ID or a quantity).