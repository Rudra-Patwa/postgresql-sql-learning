# correlated subquery 

use subquery_db;
select * from employees ;
select * from departments;

select * from orders;
select * from customers;

# Write query to return customers where an order exists for them

select cust_name c from customers c where exists (select 1 cust_id from orders);

# Employees earning more than average salary of their department
select * from departments;
select * from employees;
select e.emp_name ,e.salary from employees e where salary > (select avg(salary) from employees where employees.dept_id = e.dept_id);

# Employees who earn the highest salary in their department
select * from departments;
select * from employees;
SELECT e.emp_id,
       e.emp_name,
       e.salary,
       e.dept_id
FROM employees e
WHERE e.salary = (
        SELECT MAX(e2.salary)
        FROM employees e2
        WHERE e2.dept_id = e.dept_id
);

# Customers who placed more orders than average number of orders per customer
select * from orders;
select * from customers;
select c.customer_id , c.customer_name 
from customers c 
where (
		select count(*)
        from orders o
        where o.customer_id = c.customer_id
        ) > (
        select avg(order_count)
        from (
				select count(*) as order_count # created new table named order_count
                from orders 
                group by customer_id
                )t
	);
    
    # list down the employees who's avg salary is greateer than there deparatment
select * from employees ;
select * from departments;
select e.emp_name ,e.salary ,d.dept_name from employees e join departments d on d.dept_id = e.dept_id
where salary > (select avg(salary) from employees e2 where e.dept_id = e2.dept_id)  ; 

# find employeees who have the highest salary in their department

select e.emp_name , e.salary from employees e where salary = (select max(salary) from employees e2 where e.dept_id = e2.dept_id);
