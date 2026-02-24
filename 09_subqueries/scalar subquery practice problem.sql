# Scalar Subquery
# Find employees earning more than company average salary.
select * from employees;

SELECT *
FROM employees
WHERE salary > (
        SELECT AVG(salary)
        FROM employees
);

# Show each employee with company average salary.
select emp_name , salary , (select avg(salary) from employees) as company_avg from employees ;

# Departments whose avg salary > company average.
select department , avg(salary) from employees group by department having avg(salary) > (select avg(salary) from employees) ;

# Find employees earning more than average salary of HR department.
SELECT *
FROM employees
WHERE salary > (
        SELECT AVG(salary)
        FROM employees
        WHERE department = 'HR'
);
# Show employee name and difference between their salary and company average
SELECT emp_name,
       salary,
       salary - (
            SELECT AVG(salary)
            FROM employees
       ) AS difference_from_avg
FROM employees;


