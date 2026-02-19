# correlated subquery 

use subquery_db;
select * from employees ;
select * from departments;
select * from employees;
select * from orders;
select * from customers;

# Write query to return customers where an order exists for them

select * from customers c where exists (select 1 from orders o where o.cust_id = c.cust_id);
