CREATE TABLE employee(
		employee_ID SERIAL PRIMARY KEY,
		name VARCHAR(100) NOT NULL,
		postion VARCHAR(100),
		department VARCHAR(50),
		hire_date DATE,
		salary NUMERIC(10,2)
		
);

SELECT * FROM employee;