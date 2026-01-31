-- INNER JOIN returns only matching rows

SELECT
    c.customer_name,
    c.city,
    o.order_amount,
    o.order_date
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
