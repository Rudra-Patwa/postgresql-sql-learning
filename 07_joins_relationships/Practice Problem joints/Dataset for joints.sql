# self join practice_ Problems

use practice_room;
# employees data set

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT,
    department VARCHAR(50),
    salary INT
);
INSERT INTO employees VALUES
(1, 'Amit', NULL, 'HR', 90000),
(2, 'Riya', 1, 'HR', 60000),
(3, 'Karan', 1, 'HR', 50000),
(4, 'Neha', NULL, 'IT', 120000),
(5, 'Arjun', 4, 'IT', 80000),
(6, 'Simran', 4, 'IT', 75000),
(7, 'Raj', 5, 'IT', 50000),
(8, 'Meera', 5, 'IT', 55000);