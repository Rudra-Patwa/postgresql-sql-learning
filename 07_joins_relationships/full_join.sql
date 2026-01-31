-- FULL JOIN returns all rows from both tables

SELECT
    c.customer_name,
    c.city,
    o.order_amount,
    o.order_date
FROM customers c
FULL JOIN orders o
ON c.customer_id = o.customer_id;
