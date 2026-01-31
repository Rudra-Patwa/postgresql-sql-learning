-- Count total number of students
SELECT COUNT(*) AS total_students
FROM students;

-- Count students with email
SELECT COUNT(email) AS students_with_email
FROM students;

-- Find average age of students
SELECT AVG(age) AS average_age
FROM students;

-- Find minimum age
SELECT MIN(age) AS youngest_student
FROM students;

-- Find maximum age
SELECT MAX(age) AS oldest_student
FROM students;
