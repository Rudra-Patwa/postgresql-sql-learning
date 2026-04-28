-- lead and lag function 

use windows_function_practice;
select * from orders;
-- Show each order along with previous order amount (by date)
select * , lag(amount) over(order by order_date) ,
amount - lag(amount) over(order by order_date) 
 from orders;

-- . Customer-wise Previous Order
SELECT *,
       LAG(amount) OVER(
           PARTITION BY customer_id
           ORDER BY order_date
       ) AS prev_amount
FROM orders;