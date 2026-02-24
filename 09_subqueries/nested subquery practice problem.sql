# nested subquery 

# Employees Earning Highest Salary in Company
select * from employees ;
SELECT *
FROM employees
WHERE salary = (
        SELECT MAX(salary)
        FROM employees
);

# Department With Highest Average Salary

select department , avg(salary) from employees group by department 
having avg(salary) = (select max(salary) from  (select department , avg(salary) as salary from employees group by department )t) ;

# Employees in Department With Highest Average Salary

SELECT *
FROM employees
WHERE department = (
        SELECT department
        FROM (
                SELECT department, AVG(salary) AS avg_salary
                FROM employees
                GROUP BY department
                ORDER BY avg_salary DESC
                LIMIT 1
             ) top_dept
);