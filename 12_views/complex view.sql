use zomato_case_study;


create view complex_view_example as
select t1.order_id, amount,date,delivery_time, delivery_rating , restaurant_rating from orders t1 
join order_details t2 
on t1.order_id = t2.order_id 
join restaurants t3
on t1.r_id = t3.r_id;