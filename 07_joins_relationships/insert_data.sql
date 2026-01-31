-- Insert data into customers table

INSERT INTO customers (customer_name, city)
VALUES
    ('Amit', 'Delhi'),
    ('Priya', 'Mumbai'),
    ('Rahul', 'Pune'),
    ('Neha', 'Bangalore');

-- Insert data into orders table

INSERT INTO orders (customer_id, order_amount, order_date)
VALUES
    (1, 1500, '2024-01-10'),
    (1, 2500, '2024-01-15'),
    (2, 3000, '2024-01-12'),
    (4, 1200, '2024-01-18');
