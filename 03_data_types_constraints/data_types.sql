-- This table is created to understand different data types

CREATE TABLE products (
    product_id SERIAL,
    product_name VARCHAR(100),
    price NUMERIC(10, 2),
    quantity INT,
    in_stock BOOLEAN,
    created_date DATE
);
