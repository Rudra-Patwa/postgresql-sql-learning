# Views and Procedures

In this section, I am learning about views and procedures in PostgreSQL.
These concepts are used to make SQL code reusable, clean, and easy to manage.

Views and procedures are commonly used in real projects and production systems.

---

## What is a View?

A view is a saved SQL query.
It behaves like a virtual table.

A view:
- does not store data
- always shows updated data
- helps hide complex queries

Views make queries easier to read and reuse.

---

## Why Use Views?

Views are useful when:
- the same query is used again and again
- queries are long and complex
- we want to simplify data access

---

## What is a Procedure?

A procedure is a stored block of SQL logic.
It is used to perform operations like:
- inserting data
- updating data
- deleting data

Procedures help move logic into the database.

---

## Why Use Procedures?

Procedures are useful when:
- multiple SQL statements are needed
- logic needs to be reused
- database operations must be controlled

---

## Tables Used

This section uses tables created earlier:
- students
- products
- customers
- orders
