-- RIGHT JOIN returns all rows from right table

SELECT
    c.customer_name,
    c.city,
    o.order_amount,
    o.order_date
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;
