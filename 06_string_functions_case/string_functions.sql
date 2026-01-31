-- Convert names to uppercase
SELECT UPPER(name) AS name_upper
FROM students;

-- Convert names to lowercase
SELECT LOWER(name) AS name_lower
FROM students;

-- Find length of student names
SELECT name, LENGTH(name) AS name_length
FROM students;

-- Remove extra spaces from text
SELECT TRIM('   SQL Learning   ') AS trimmed_text;

-- Get first 3 characters of name
SELECT name, SUBSTRING(name FROM 1 FOR 3) AS short_name
FROM students;

-- Replace part of text
SELECT REPLACE(email, 'gmail.com', 'email.com') AS updated_email
FROM students;

-- Concatenate name and email
SELECT name || ' - ' || email AS student_info
FROM students;
