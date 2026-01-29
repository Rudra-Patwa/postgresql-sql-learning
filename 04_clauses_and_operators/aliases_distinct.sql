-- Use alias for column
SELECT name AS student_name, age AS student_age
FROM students;

-- Use alias for table
SELECT s.name, s.age
FROM students s;

-- Select unique ages
SELECT DISTINCT age
FROM students;
