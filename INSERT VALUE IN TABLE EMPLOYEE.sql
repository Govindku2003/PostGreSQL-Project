SELECT * FROM employee;


INSERT INTO employee (name, position, department, hire_date, salary)
 	VALUES ('Govind','Full-stack', 'IT','2022-08-01',1000000.00),
			('Amit','DataAnalytiscs', 'CSE','2022-09-01',4000000.00),
			('Aman','Full-stack', 'IT','2022-08-01',1000000.00),
			('Rahul','DataAnalytiscs', 'CSE','2022-09-01',4000000.00);


ALTER TABLE employee RENAME postion to position;

TRUNCATE TABLE employee;
TRUNCATE TABLE employee RESTART IDENTITY;