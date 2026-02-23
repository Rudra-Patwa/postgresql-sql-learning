use practice_room ;
select * from employees;

# Show employee name with their manager name
SELECT e.emp_name AS employee,
       m.emp_name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;

# Show employees who do not have a manager
SELECT emp_name
FROM employees
WHERE manager_id IS NULL;

# Show employees who work under manager 'Amit'
SELECT e.emp_name
FROM employees e
JOIN employees m
ON e.manager_id = m.emp_id
WHERE m.emp_name = 'Amit';

# Show manager name and number of employees reporting to them
select * from employees;
SELECT m.emp_name AS manager,
       COUNT(e.emp_id) AS total_employees
FROM employees e
JOIN employees m
ON e.manager_id = m.emp_id
GROUP BY m.emp_name;

select m.emp_name , count(e.emp_id) from employees m join employees e on m.emp_id = e.manager_id group by m.emp_name;

# Show employees who report to managers in the same department
select * from employees;

select e.emp_name as employees, 
		m.emp_name as managers,
        m.department as department 
from employees e
join employees m 
on e.manager_id = m.emp_id 
where e.department = m.department;

# Show manager–employee pairs where manager salary > employee salary
select e.emp_name as employees,e.salary as emp_salary  , m.emp_name as manager , m.salary as manager_salary 
from employees e join employees m on m.emp_id = e.manager_id where m.salary > e.salary;

select e.emp_name as employees , m.emp_name as manager , tm.emp_name from employees e join employees m on m.emp_id = e.manager_id join employees tm on m.manager_id = tm.emp_id;
