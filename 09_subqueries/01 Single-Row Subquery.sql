# Single-Row Subquery Practice Problems
use subquery_db;
select * from employees ;
select * from departments;
select * from employees;
select * from orders;

# 1Employees earning more than average salary
select emp_name from employees where salary > (select avg(salary) from employees);

# Employee with highest salary
select emp_name from employees where salary >= (select max(salary) from employees);

#Customers who placed the highest order amount
select * from orders where amount >= (select max(amount) from orders);

# Employees earning more than Bob
select * from employees where salary > (select salary from employees where emp_name = 'Bob' );

# Employees working in the same department as Alice
select * from employees where dept_id = (select dept_id from employees where emp_name = 'Alice');

# Orders above average order value
select * from orders where amount > (select avg(amount) from orders);

# Department with highest average salary 
SELECT d.dept_name
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING AVG(e.salary) = (
        SELECT MAX(avg_sal)
        FROM (
                SELECT AVG(salary) AS avg_sal
                FROM employees
                GROUP BY dept_id
        ) AS dept_avg
);


