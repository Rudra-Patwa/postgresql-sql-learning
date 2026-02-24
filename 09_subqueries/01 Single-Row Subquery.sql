 use subquery_types_db;
 
 select * from employees;
 
 # 1 single line subquery 
 # (May return one or more columns)
 
 select * from employees where salary = (select max(salary)from employees);
 
 # 2 Multi-Row Subquery
 # Used with IN, ANY, ALL
SELECT *
FROM employees
WHERE department IN (
        SELECT department
        FROM employees
        WHERE salary > 75000
);

# 3 Multi-column subquery

SELECT *
FROM employees
WHERE (department, salary) IN (
        SELECT department, MAX(salary)
        FROM employees
        GROUP BY department
);

#4 Correlated Subquery 
# Depends on outer query row
#  Runs once per row
SELECT e.emp_name, e.salary
FROM employees e
WHERE e.salary > (
        SELECT AVG(e2.salary)
        FROM employees e2
        WHERE e2.department = e.department
);

# 5 Inline Subquery (Derived Table)
# Subquery inside FROM
# Acts like temporary table
SELECT department, avg_salary
FROM (
        SELECT department, AVG(salary) AS avg_salary
        FROM employees
        GROUP BY department
) t;