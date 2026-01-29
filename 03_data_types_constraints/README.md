# Data Types and Constraints

In this section, I am learning about data types and constraints in PostgreSQL.
This is important because choosing the correct data type and rules makes the database reliable.

Bad data design can cause problems later, even if queries are correct.

---

## What are Data Types?

Data types define what kind of value a column can store.

Examples:
- numbers
- text
- dates
- true or false values

Using the correct data type helps:
- save storage
- avoid wrong data
- improve performance

---

## Common Data Types Used Here

### Numeric Types
- INT → whole numbers (age, quantity)
- NUMERIC → decimal values (price, salary)

### Text Types
- VARCHAR(n) → text with limit
- TEXT → text without limit

### Boolean
- BOOLEAN → true or false

### Date and Time
- DATE → stores date
- TIMESTAMP → stores date and time

---

## What are Constraints?

Constraints are rules applied to columns to protect data.

They make sure:
- required data is not missing
- values are unique
- wrong data is not inserted

---

## Constraints Covered in This Section

- PRIMARY KEY
- NOT NULL
- UNIQUE
