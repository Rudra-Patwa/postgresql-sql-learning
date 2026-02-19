# multi-row subquery
use subquery_db;
select * from employees ;
select * from departments;
select * from employees;
select * from orders;
select * from customers;
# Employees working in IT or HR departments

select e.emp_name , d.dept_name from employees e
 join departments d on e.dept_id = d.dept_id 
 where d.dept_id in (select dept_id from departments where dept_name in ('It','HR'));
 
 # customers who placed orders 
select * from customers where cust_id in (select cust_id from orders);
 
 # Employees earning more than ANY employee in HR
SELECT *
FROM employees
WHERE salary > ANY (
    SELECT salary
    FROM employees
    WHERE dept_id = (
        SELECT dept_id
        FROM departments
        WHERE dept_name = 'HR'
    )
);

# Customers from cities where at least one order exists
SELECT *
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.cust_id = c.cust_id
);

