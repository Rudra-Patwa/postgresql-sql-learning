-- Customers table (parent table)

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

-- Orders table (child table)

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_amount NUMERIC(10, 2),
    order_date DATE
);
