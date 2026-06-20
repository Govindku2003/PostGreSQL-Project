CREATE DATABASE employees6;
DROP DATABASE IF EXISTS employees6

CREATE TABLE Employees6 (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

SELECT * FROM EMPLOYEES6;


INSERT INTO Employees6 (first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Ankit', 'Verma', 103),
('Simran', 'Kaur', NULL),
('Aman', 'Singh', 101);


CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);


INSERT INTO Departments (department_id, department_name)
VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');


SELECT *FROM Departments;



SELECT e.employee_id, e.first_name, e.last_name, e.department_id,
		d.department_id, d.department_name
FROM Employees6 e
INNER JOIN 
      Departments d
ON 
  e.department_id=d.department_id;



SELECT e.employee_id, e.first_name, e.last_name, e.department_id,
		d.department_id, d.department_name
FROM Employees6 e
LEFT JOIN 
      Departments d
ON 
  e.department_id=d.department_id;


SELECT e.employee_id, e.first_name, e.last_name, e.department_id,
		d.department_id, d.department_name
FROM Employees6 e
RIGHT JOIN
      Departments d
ON 
  e.department_id=d.department_id;




SELECT e.employee_id, e.first_name, e.last_name, e.department_id,
		d.department_id, d.department_name
FROM Employees6 e
FULL OUTER JOIN
      Departments d
ON 
  e.department_id=d.department_id;




SELECT e.employee_id, e.first_name, e.last_name, e.department_id,
		d.department_id, d.department_name
FROM Employees6 e
CROSS  JOIN
      Departments d;


SELECT e.employee_id, e.first_name,
		d.department_id, d.department_name
FROM Employees6 e
CROSS  JOIN
      Departments d;

-----------------------------------------------------------------------------
-- SELF JOIN


SELECT e1.first_name AS Employee_name1,
	   e2.first_name AS Employee_name2
FROM employees6 e1 JOIN employees6 e2
ON e1.department_id = e2.department_id AND e1.employee_id != e2.employee_id;





SELECT e1.first_name AS Employee_name1,
	   e2.first_name AS Employee_name2,
	   d.department_name
FROM employees6 e1 JOIN employees6 e2
ON e1.department_id = e2.department_id AND e1.employee_id != e2.employee_id
JOIN 
departments d
ON
e1.department_id = d.department_id;
	   