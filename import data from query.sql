
COPY
employee4(employee_id, first_name, last_name, department, salary, joining_date, age)
FROM 'C:/Desktop/PostgreSQL/employee_data.csv'
DELIMITER ','
CSV HEADER;


SELECT * FROM employee4;


SELECT first_name, salary,
			(salary*0.1) AS Diwal_bonus 
			FROM employee4;

SELECT first_name , last_name, salary,
								(salary*.25) As Bonus
				FROM employee4;


SELECT first_name , last_name , salary,
						(salary*12) As annual_salary,
						(salary*0.5)As Incremented_salary,
						(salary+ salary*0.05) As new_salary
			FROM employee4;

SELECT first_name, last_name,salary 
			FROM employee4
		WHERE salary >= 500000;


SELECT first_name  ,last_name, salary, age FROM employee4
		WHERE age !=30;


SELECT *FROM employee4
	WHERE age>=30 AND salary >=50000;

SELECT *FROM employee4
	WHERE age>=50 AND salary >=100000;


SELECT *FROM employee4
	WHERE salary>=50000 AND salary <=100000;

SELECT *FROM employee4
	WHERE age>=50 OR salary >=10000;

SELECT *FROM employee4
	WHERE NOT (department='IT');



------------------------------------

SELECT *FROM employee4
	WHERE salary>=50000 AND salary <=100000;

	-- OR
SELECT *FROM employee4
	WHERE salary BETWEEN 80000 AND 100000;



----------------------------------
SELECT *FROM employee4
	WHERE first_name LIKE '%g';

SELECT *FROM employee4
	WHERE first_name LIKE '%g';
	
	-- Case senstive hota hai

SELECT *FROM employee4
	WHERE first_name LIKE 'G%';

SELECT * FROM employee4
	WHERE department IN ('Finance');


SELECT first_name, last_name,  FROM employee4
		WHERE department IN ('Finance' ,'Marketing','IT');
	

SELECT first_name, last_name, department FROM employee4
		WHERE department IN ('Finance' ,'Marketing','IT');

SELECT *FROM employee4
	ORDER BY salary ASC;


	
SELECT first_name,last_name ,salary From employee4
	ORDER BY salary ASC;


SELECT first_name,last_name ,salary From employee4
	ORDER BY salary DESC;

SELECT first_name,last_name ,salary From employee4
	ORDER BY salary DESC
	LIMIT 5;


SELECT DISTINCT department
FROM employee4;

SELECT COUNT(DISTINCT department) 
FROM employee4;