# What is a Database?

**English:** A database is an organized collection of structured data stored in a computer system. It allows efficient access, management, updating, and retrieval of data.

**Français :** Une base de données est une collection organisée de données structurées stockées dans un système informatique, permettant un accès, une gestion et une mise à jour efficaces.

---

## Real-World Analogy

Think of a library:

- Books → Data
- Catalog → Database
- Librarian → DBMS
- Search system → Queries

---

## Key Concepts

### Data

**English:** Raw facts and figures without meaning.

**Français :** Données brutes sans signification.

**Examples:**

- `42`
- `"Alice"`
- `2024-01-01`

---

### Information

**English:** Processed data that has meaning and context.

**Français :** Données traitées ayant un sens et un contexte.

**Examples:**

- "Alice joined on January 1, 2024"
- "Stock is 42 units"

---

### Database

**English:** An organized collection of structured data stored electronically.

**Français :** Une collection organisée de données structurées stockées électroniquement.

**Example Use:**

- E-commerce systems store users, products, and orders.

---

### Database Management System (DBMS)

**English:** Software used to create, manage, and interact with databases.

**Français :** Logiciel utilisé pour créer, gérer et interagir avec les bases de données.

**Examples:**

- MySQL
- PostgreSQL
- Oracle Database
- MongoDB
- SQLite

---

## Types of Databases

| Type | English Description | Français |
|------|-------------------|----------|
| Relational (SQL) | Data stored in tables (rows & columns) | Données stockées en tables |
| NoSQL | Flexible schema (documents, key-value, graph) | Schéma flexible |
| In-Memory | Data stored in RAM for speed | Données en mémoire vive |
| Cloud | Hosted in cloud platforms | Hébergées dans le cloud |
| Graph | Data stored as nodes & relationships | Données sous forme de graphes |

---

## Core Components

### Table

**English:** Structure that stores data in rows and columns.

**Français :** Structure stockant des données sous forme de lignes et colonnes.

**Example:**

| id | name | email |
|----|------|--------|
| 1 | Alice | alice@example.com |

---

### Row (Record)

**English:** A single entry in a table.

**Français :** Une seule entrée dans une table.

---

### Column (Field)

**English:** A property or attribute of data.

**Français :** Une propriété ou un attribut des données.

---

### Schema

**English:** Structure that defines database organization.

**Français :** Structure définissant l’organisation de la base de données.

**Example:**

```sql
CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100)
);
```

---

### Query

**English:** A request to retrieve or modify data.

**Français :** Une requête pour récupérer ou modifier des données.

**Example:**

```sql
SELECT * FROM users;
```

---

### Index

**English:** Improves speed of data retrieval.

**Français :** Améliore la vitesse de recherche des données.

**Example:**

```sql
CREATE INDEX idx_email ON users(email);
```

---

### Transaction

**English:** A set of operations executed as one unit.

**Français :** Ensemble d’opérations exécutées comme une seule unité.

**Example:**

Bank transfer:

1. Remove money from Account A
2. Add money to Account B

Both must succeed or fail together.

---

## Basic SQL Example

```sql
-- Create table
CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  joined DATE
);

-- Insert data
INSERT INTO users (id, name, email, joined)
VALUES
(1, 'Alice', 'alice@example.com', '2024-01-01'),
(2, 'Bob', 'bob@example.com', '2024-03-10');

-- Select data
SELECT name, email
FROM users
WHERE joined > '2024-01-01';
```

---

## ACID Properties

### Atomicity

**English:** All operations succeed or none.

**Français :** Toutes les opérations réussissent ou aucune.

---

### Consistency

**English:** Database must remain valid after transactions.

**Français :** La base de données doit rester valide après les transactions.

---

### Isolation

**English:** Transactions do not interfere with each other.

**Français :** Les transactions ne s’interfèrent pas entre elles.

---

### Durability

**English:** Once saved, data is permanent.

**Français :** Une fois enregistrées, les données sont permanentes.

---

## Common Use Cases

### E-commerce

- Customers
- Products
- Orders

### Banking

- Accounts
- Transactions
- Payments

### Social Media

- Users
- Posts
- Comments

### Healthcare

- Patients
- Appointments
- Doctors

---

## Summary

**English:** A database is the foundation of modern applications, enabling structured, secure, and efficient data storage.

**Français :** Une base de données est le fondement des applications modernes, permettant un stockage structuré, sécurisé et efficace des données.

---