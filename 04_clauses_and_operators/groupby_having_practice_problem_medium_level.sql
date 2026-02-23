use practice_room;
select * from sales_data;
# 🟡 Medium Level

# show customers who placed more than 2 orders.
select customer_name from sales_data group by customer_name having count(order_id) > 2;

# Find categories where total sales amount is greater than 1,00,000.
select category from sales_data group by category having sum(quantity * price) > 100000;
# Show cities where average product price is above 20,000.
select city, avg(price) as avg_price
from sales_data
group by city
having avg(price) > 20000;
# Find products that were sold more than 3 times in total.
select product , sum(quantity) from sales_data group by product having sum(quantity) > 3;
# Show customers whose total spending is more than 70,000.
select customer_name,
       sum(quantity * price) as total_spending
from sales_data
group by customer_name
having sum(quantity * price) > 70000
order by total_spending asc;