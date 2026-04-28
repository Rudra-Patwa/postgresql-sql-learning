use windows_function_practice;
select * from orders;
-- Assign a unique row number to each order ordered by amount (highest first)
select *, ROW_NUMBER() over(ORDER BY amount desc) from orders;

-- Get the latest order for each customer
select * from 
(select * , ROW_NUMBER() over(partition by customer_id order by order_date desc ) as recent_order from orders) t
where  t.recent_order =1

-- Top 2 highest orders per customer
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER(
               PARTITION BY customer_id
               ORDER BY amount DESC
           ) AS rn
    FROM orders
) t
WHERE rn <= 2;

-- 4. Rank orders by amount (with gaps)
select *, rank() over(order by amount desc) from orders;
-- 5. denserank orders by amount (with gaps)
select *, DENSE_RANK() over(order by amount desc) from orders;

-- 6. Rank cities by total sales
select * ,DENSE_RANK() over(order by total desc) from
(select *, sum(amount) over(partition by city) as total  from orders) t

-- 7. 2nd highest order per city

SELECT *
FROM (
    SELECT *,
           RANK() OVER(
               PARTITION BY city
               ORDER BY amount DESC
           ) AS rnk
    FROM orders
) t
WHERE rnk = 2;

SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER(
               PARTITION BY category
               ORDER BY order_date ASC
           ) AS rn
    FROM orders
) t
WHERE rn = 1;

-- Find customers whose latest order is also their highest order

select * from (select * , max(amount) over(partition by customer_id order by amount desc) hieght_amount ,
row_number() over(partition by customer_id order by order_date DESC ) rows_number_per_latest_order
from orders) t
where t.rows_number_per_latest_order =1 and t.amount >= t.hieght_amount ;

