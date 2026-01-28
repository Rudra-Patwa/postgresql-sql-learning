# Database Basics

In this section, I am learning how databases and tables work in PostgreSQL.
This is the first step where actual SQL commands start.

The goal of this section is to understand:
- what a database is
- what a table is
- how data is stored in rows and columns

---

## What is a Database?

A database is a container that stores data.

In PostgreSQL, a database holds:
- tables
- schemas
- views
- other database objects

Usually, one application uses one main database.

---

## What is a Table?

A table is where actual data is stored.

A table:
- has columns (fields)
- has rows (records)

Example:
- A `students` table can store student information
- Each row represents one student
- Each column represents one detail (name, age, email, etc.)

---

## Difference Between Database and Table

- **Database**: holds multiple tables
- **Table**: holds actual data

You must create a database first before creating tables.

---

## What I Practice in This Section

- Creating a database
- Creating a table
- Understanding column names and data types

---

## What to Do Next

After this section:
1. Learn CRUD operations
2. Insert data into tables
3. Fetch and modify data using SQL

This will be covered in `02_crud_operations`.
