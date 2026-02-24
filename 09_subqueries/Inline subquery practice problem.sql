# Inline subquery 
SELECT *
FROM (
        SELECT department, AVG(salary) AS avg_salary
        FROM employees
        GROUP BY department
     ) dept_avg
WHERE avg_salary > (
        SELECT AVG(salary)
        FROM employees
     );
     

# Departments Where Average Salary > Company Average
SELECT *
FROM (
        SELECT department, AVG(salary) AS avg_salary
        FROM employees
        GROUP BY department
     ) dept_avg
WHERE avg_salary > (
        SELECT AVG(salary);

# Join inline subquery with original table 
# Find employees earning more than their department average:
select * from employees;
select e.emp_name , e.salary , d.avg_salary from employees e join 
(select department , avg(salary ) as avg_salary from employees group by department) as d 
on e.emp_id  = d.emp_id
where e.salary > d.avg_salary ;

# Find department with highest average salary
select * from employees;
SELECT department, avg_salary
FROM (
        SELECT department, AVG(salary) AS avg_salary
        FROM employees
        GROUP BY department
     ) dept_avg
ORDER BY avg_salary DESC
LIMIT 1;

# Count Employees in Departments Where Avg Salary > 70000
SELECT COUNT(*) AS total_employees
FROM employees
WHERE department IN (
        SELECT department
        FROM (
                SELECT department, AVG(salary) AS avg_salary
                FROM employees
                GROUP BY department
             ) dept_avg
        WHERE avg_salary > 70000
);

select count(*) from employees 
where department in (
  select department from (SELECT department, AVG(salary) AS avg_salary
                FROM employees
                GROUP BY department) as dept_avg 
where avg_salary > 70000);