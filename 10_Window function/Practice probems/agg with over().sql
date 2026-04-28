-- dataset with problem question - agg() and over()
use windows_function_practice;
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    city VARCHAR(50),
    category VARCHAR(50),
    amount DECIMAL(10,2)
);

INSERT INTO orders VALUES
(1, 101, '2024-01-01', 'Mumbai', 'Electronics', 1200),
(2, 102, '2024-01-02', 'Delhi', 'Clothing', 800),
(3, 101, '2024-01-03', 'Mumbai', 'Electronics', 1500),
(4, 103, '2024-01-04', 'Pune', 'Furniture', 2000),
(5, 102, '2024-01-05', 'Delhi', 'Clothing', 700),
(6, 104, '2024-01-06', 'Mumbai', 'Electronics', 2200),
(7, 101, '2024-01-07', 'Mumbai', 'Furniture', 1800),
(8, 103, '2024-01-08', 'Pune', 'Furniture', 2500),
(9, 102, '2024-01-09', 'Delhi', 'Electronics', 900),
(10, 104, '2024-01-10', 'Mumbai', 'Clothing', 600);



select * from orders;
-- Q1 Show each order along with the total sales (amount) across all orders using SUM() with OVER()
SELECT *,
       SUM(amount) OVER() AS total_sales
FROM orders;
-- Q2 Display each order with the average order amount across the entire table
SELECT *,
       AVG(amount) OVER() AS avg_order_amount
FROM orders;
-- Q3 For each order, show total sales per city using window function
SELECT *,
       SUM(amount) OVER(PARTITION BY city) AS city_total
FROM orders;
-- Q4 Show each order along with total sales per category
SELECT *,
       SUM(amount) OVER(PARTITION BY category) AS category_total
FROM orders;
-- Q5 For each order, calculate the cumulative (running) total of sales ordered by order_date
select *, sum(amount) over(order by order_date) as running_total from orders ; -- default frame is start to current row

-- Q6 Show cumulative sales per customer_id ordered by date
select * , sum(amount) over(partition by customer_id order by order_date) as customer_running_total from orders;

-- Q7 For each order, show the maximum order amount within the same city
select * , max(amount) over(partition by city) from orders
-- Q8 For each order, display the minimum order amount per category
select * , min(amount) over(partition by category) AS min_category_amount from orders;

-- Q9  For each order, calculate percentage contribution of that order to total sales
-- 		(Hint: amount / total_sum)
select * ,  amount / (sum(amount) over(partition by city))  *100 from orders


-- Q10 For each order, calculate percentage contribution within its city
--     (Partition by city)
select * ,amount / ( sum(amount) over(partition by city) ) * 100  from orders;

-- Q11 Order greater than the customer avg
select * from 
(select *, avg(amount) over(partition by customer_id ) as avg_spend from orders)t
where amount > avg_spend;
