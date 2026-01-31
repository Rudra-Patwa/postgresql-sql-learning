-- Categorize students based on age
SELECT name, age,
    CASE
        WHEN age < 21 THEN 'Junior'
        WHEN age BETWEEN 21 AND 23 THEN 'Mid Level'
        ELSE 'Senior'
    END AS age_category
FROM students;

-- Label product price range
SELECT product_name, price,
    CASE
        WHEN price < 500 THEN 'Cheap'
        WHEN price BETWEEN 500 AND 2000 THEN 'Moderate'
        ELSE 'Expensive'
    END AS price_category
FROM products;

-- Check stock availability
SELECT product_name, quantity,
    CASE
        WHEN quantity = 0 THEN 'Out of Stock'
        WHEN quantity < 5 THEN 'Low Stock'
        ELSE 'Available'
    END AS stock_status
FROM products;
