-- first_value() , lastvalue , nth VALUES

use windows_function_practice;
select * from orders;

-- For each customer, show their first (earliest) order amount
SELECT *,
       FIRST_VALUE(amount) OVER(
           PARTITION BY customer_id
           ORDER BY order_date
       ) AS first_order_amount
FROM orders;

-- For each city, show the amount of the first order placed in that city
select * , FIRST_VALUE(amount) over(partition by city order by order_date) from orders

-- For each category, display the first order date along with every row
select * , first_value(order_date) over(partition by category order by order_date) from orders

-- Show each order along with the minimum amount in its category using FIRST_VALUE()
select * , first_value(amount) over(partition by category order by amount) from orders;

-- For each customer, show their latest order amount
select *, LAST_VALUE(amount)over(partition by customer_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING ) from orders;

-- For each city, display the last order date
select *, last_value(order_date) over(partition by city order by order_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) from orders ;

-- For each category, show the highest amount using LAST_VALUE()
SELECT *,
       LAST_VALUE(amount) OVER(
           PARTITION BY category
           ORDER BY amount
           ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
       ) AS max_category_amount
FROM orders;

SELECT *,
       NTH_VALUE(amount, 2) OVER(
           PARTITION BY customer_id
           ORDER BY order_date
           ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
       ) AS second_order_amount
FROM orders;

select *, NTH_VALUE(amount , 3) over(partition by city order by amount desc ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) from orders;