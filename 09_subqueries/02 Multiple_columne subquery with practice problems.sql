# multiple-columne subquery 
 use subquery_types_db;
 
select * from employees ;
# Highest Paid Employee Per Department 

select * from employees 
where (department, salary) in 
(SELECT department, MAX(salary)
FROM employees
GROUP BY department);

# subquery output from above
SELECT department, MAX(salary)
FROM employees
GROUP BY department;

# Find employee having same department and salary as Amit.
SELECT *
FROM employees
WHERE (department, salary) = (
        SELECT department, salary
        FROM employees
        WHERE emp_name = 'Amit'
);

# Find lowest paid employee per department
select * from employees ;
SELECT *
FROM employees
WHERE (department, salary) IN (
        SELECT department, MIN(salary)
        FROM employees
        GROUP BY department
);

# Find Employee Whose Salary = Department Average
SELECT e.*
FROM employees e
WHERE e.salary > (
        SELECT AVG(e2.salary)
        FROM employees e2
        WHERE e2.department = e.department
        );
select avg(salary) , department from employees group by department ;
