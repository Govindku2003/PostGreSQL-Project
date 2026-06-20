CREATE DATABASE joined;


CREATE TABLE employees(
				employee_id INT PRIMARY KEY,
				firts_name VARCHAR(100) NOT NULL,
				last_name VARCHAR(100),
				department_id INT
);

SELECT * FROM EMPLOYEES;


INSERT INTO employees(employee_id,firts_name,last_name,department_id)
			VALUES(1, 'Rahul','Sharma',101),
					
INSERT INTO employees(employee_id,firts_name,last_name,department_id)
			VALUES(2, 'Priya','varma',102),
					(3, 'Ankit','Kaur',103),
					(4, 'Simran','Saini',104),
					(5,'Aman', 'Singh',105);


UPDATE employees
SET  department_id = NULL
WHERE  department_id = 104;


SELECT * FROM employees ORDER BY employee_id ASC;

CREATE TABLE department(
				department_id INT,
				depart_name VARCHAR(100)
);

INSERT INTO DEPARTMENT(department_id, depart_name)
		VALUES(101,'Sales'),
				(102,'Marketing'),
				(103,'IT'),
				(104,'HR');

SELECT * FROM department;

SELECT * FROM EMPLOYEES;
-------------------------------------------------------
SELECT e.employee_id, e.firts_name, e.last_name,
	d.department_id, d.depart_name
FROM employees e
INNER JOIN 
department d
ON e.employee_id = d.department_id;
----------------------------------------------------------


SELECT e.employee_id, e.firts_name, e.last_name,
	d.department_id, d.depart_name
FROM employees e
LEFT JOIN
department d
ON e.employee_id = d.department_id;

------------------------------------------------------------------

SELECT e.employee_id, e.firts_name, e.last_name,
	d.department_id, d.depart_name
FROM employees e
RIGHT JOIN
department d
ON e.employee_id = d.department_id;










