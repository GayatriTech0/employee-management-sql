CREATE DATABASE company_db;
USE campany_db;
CREATE TABLE departments ( 
dept_id INT PRIMARY KEY,
dept_name VARCHAR (50)
);

INSERT INTO departments VALUES 
(1, 'HR'),
(2, 'IT'), 
(3, 'Finance');

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
phone VARCHAR(20),
hire_date DATE,
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);




SELECT * FROM employee_data;




SELECT first_name, last_name
FROM employee_data
Where dept_id=2;

USE company_db;
SELECT departments.dept_name,
COUNT(employee_data.emp_id) AS 
total_employees
FROM employee_data
JOIN departments
ON employee_data.dept_id=
departments.dept_id
GROUP BY departments.dept_name;



SHOW DATABASES;
SHOW TABLES;

SELECT * FROM departments;

USE company_db;
CREATE TABLE salaries (
salary_id INT PRIMARY KEY,
emp_id INT, 
salary_amount INT,
bonus INT,
FOREIGN KEY (emp_id) REFERENCES employee_data(emp_id)
);

ALTER TABLE employee_data
ADD PRIMARY KEY (emp_id);


SELECT * FROM salaries;

SELECT employee_data.first_name,
employee_data.last_name,
departments.dept_name,
salaries.salary_amount,salaries.bonus
FROM employee_data
JOIN departments
ON employee_data.dept_id=departments.dept_id
JOIN salaries
ON employee_data.emp_id=salaries.emp_id;


