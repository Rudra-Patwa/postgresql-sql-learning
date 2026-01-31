-- Count students by age
SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age;

-- Average age grouped by age (for learning purpose)
SELECT age, AVG(age) AS avg_age
FROM students
GROUP BY age;

-- Total quantity of products by in_stock status
SELECT in_stock, SUM(quantity) AS total_quantity
FROM products
GROUP BY in_stock;

-- Count products by created_date
SELECT created_date, COUNT(*) AS total_products
FROM products
GROUP BY created_date;
