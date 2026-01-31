-- Get ages where number of students is more than 1
SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age
HAVING COUNT(*) > 1;

-- Get in_stock groups where total quantity is more than 10
SELECT in_stock, SUM(quantity) AS total_quantity
FROM products
GROUP BY in_stock
HAVING SUM(quantity) > 10;

-- Using WHERE and HAVING together
SELECT age, COUNT(*) AS total_students
FROM students
WHERE age > 20
GROUP BY age
HAVING COUNT(*) >= 1;
