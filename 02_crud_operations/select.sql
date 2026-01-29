-- Select all records from students table
SELECT * FROM students;

-- Select specific columns
SELECT name, age FROM students;

-- Select students older than 21
SELECT *
FROM students
WHERE age > 21;
