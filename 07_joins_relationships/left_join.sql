-- LEFT JOIN returns all rows from left table

SELECT
    c.customer_name,
    c.city,
    o.order_amount,
    o.order_date
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;
