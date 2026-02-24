 create database subquery_types_db;
 use subquery_types_db;
 CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);
INSERT INTO employees VALUES
(1, 'Amit', 'HR', 50000),
(2, 'Riya', 'HR', 60000),
(3, 'Karan', 'IT', 70000),
(4, 'Neha', 'IT', 90000),
(5, 'Arjun', 'Finance', 80000),
(6, 'Simran', 'Finance', 75000);