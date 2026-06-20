SELECT * FROM employee;

INSERT INTO employee(first_name ,last_name ,department ,salary,joining_date,age)
		VALUES
		('Amit','Sharma','IT',600000.00,'2022-05-01',29),
		('Neha','Patel','HR',500000.00,'2022-04-01',23),
		('Suraj','Kumar','CSE',560000.00,'2022-05-12',39),
		('Anuj','Sharma','IT',640000.00,'2021-12-01',25),
		('Sumit','Sigh','EE',680000.00,'2024-05-11',45);

SELECT * FROM employee;

-- retrive all employye name and department

SELECT first_name ,last_name,department FROM employee;

-- -Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.

 UPDATE employee
  SET salary = salary+(Salary*0.1)
  WHERE department='IT';

SELECT * FROM employee;

--Q3: Delete all employees who are older than 34 years.

DELETE FROM employee
WHERE age>=44;


-- NOW ADD DELETED VALUE
INSERT INTO employee(first_name ,last_name ,department ,salary,joining_date,age)
		VALUES
         ('Sumit','Sigh','EE',680000.00,'2024-05-11',45);


-- PLACE THE DATA IN ORDER WAISE

SELECT * FROM employee ORDER BY employee_ID ASC;

--Q4: Add a new column `email` to the `employees` table.

ALTER TABLE employee
ADD COLUMN email VARCHAR(50);

SELECT * FROM employee;

-- Q5 UPDATE EMAIL IN THE EXISTING ROW OR ADD DATA IN EXSTING ROW

UPDATE employee
SET email = CASE
    WHEN employee_id = 1 THEN 'rahul.verma728@gmail.com'
    WHEN employee_id = 2 THEN 'neha.kapoor391@gmail.com'
    WHEN employee_id = 3 THEN 'amit.singh540@gmail.com'
    WHEN employee_id = 4 THEN 'priya.sharma862@gmail.com'
    WHEN employee_id= 5 THEN 'rohit.yadav173@gmail.com'
END;

-- -Q5: Rename the `department` column to `dept_name`.

ALTER TABLE employee
RENAME department TO dept_name;

SELECT * FROM employee;

--Q6: Retrieve the names of employees who joined after January 1, 2021.

SELECT first_name, last_name, joining_date FROM employee
WHERE joining_date > '2021-01-01';

--Q7: Change the data type of the `salary` column to `INTEGER`.

ALTER TABLE employees 
ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER;

--Q8: List all employees with their age and salary in descending order of salary.

SELECT first_name, age, salary FROM employees 
ORDER BY salary DESC;

--Q9: Insert a new employee with the following details: 
		-- ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)

INSERT INTO employees(first_name, last_name, dept_name, salary, joining_date, age)
VALUES('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);
		
--Q10: Update age of employee +1 to every employee 

UPDATE employees
SET age=age+1;



