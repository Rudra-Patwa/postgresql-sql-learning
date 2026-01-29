-- Select all students
SELECT * FROM students;

-- Select students whose age is greater than 21
SELECT *
FROM students
WHERE age > 21;

-- Select students whose age is exactly 22
SELECT *
FROM students
WHERE age = 22;

-- Select students whose name is 'Rahul Verma'
SELECT *
FROM students
WHERE name = 'Rahul Verma';

-- Select students whose age is between 20 and 23
SELECT *
FROM students
WHERE age BETWEEN 20 AND 23;

-- Select students whose email is not null
SELECT *
FROM students
WHERE email IS NOT NULL;
