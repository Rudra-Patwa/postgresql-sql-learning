-- Sort students by age (ascending - default)
SELECT *
FROM students
ORDER BY age;

-- Sort students by age in descending order
SELECT *
FROM students
ORDER BY age DESC;

-- Sort students by name alphabetically
SELECT *
FROM students
ORDER BY name;

-- Sort by age first, then by name
SELECT *
FROM students
ORDER BY age, name;
