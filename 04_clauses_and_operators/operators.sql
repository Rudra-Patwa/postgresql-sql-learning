-- Using AND operator
SELECT *
FROM students
WHERE age > 20 AND age < 23;

-- Using OR operator
SELECT *
FROM students
WHERE age = 20 OR age = 23;

-- Using NOT operator
SELECT *
FROM students
WHERE NOT age = 21;

-- Using IN operator
SELECT *
FROM students
WHERE age IN (20, 22, 24);

-- Using LIKE operator
SELECT *
FROM students
WHERE name LIKE 'R%';
