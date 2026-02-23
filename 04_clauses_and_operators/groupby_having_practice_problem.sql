use practice_room;
select * from sales_data;
# Easy Level having questions 

# 1Find total sales (sum of quantity × price) for each city.
select city, sum(quantity * price) as total_sales from sales_data group by city ;

# Count total orders placed by each customer.
select customer_id ,count(order_id) from sales_data group by customer_id  ;

# Find average price of products in each category.
select category ,avg(price) as avg_price from sales_data group by category ;

# Find total quantity sold per product.
select product ,count(quantity) as total_quantity from sales_data group by product;

# Show cities where total quantity sold is more than 5.
select city , count(quantity) from sales_data group by city having count(quantity) > 5;