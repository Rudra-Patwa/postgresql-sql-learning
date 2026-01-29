-- Get only first 2 students
SELECT *
FROM students
LIMIT 2;

-- Get top 3 oldest students
SELECT *
FROM students
ORDER BY age DESC
LIMIT 3;

-- Skip first 2 rows and get next 2 rows
SELECT *
FROM students
LIMIT 2 OFFSET 2;
