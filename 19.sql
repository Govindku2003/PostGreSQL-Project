CREATE TABLE student2(
		student_id INT PRIMARY KEY,
		first_name VARCHAR(100) NOT NULL,
		last_name VARCHAR(100) NOT NULL,
		department VARCHAR(50),
		fee 	NUMERIC(10,2),
		joining_date DATE,
		age INT
		);


INSERT INTO student1(student_id, first_name, last_name, department, fee, joining_date, age)
			  VALUES(1, 'Rahul', 'Verma', 'CSE', 50000, '2024-01-15', 22),
					(2, 'Amit', 'Sharma', 'IT', 45000, '2023-06-10', 23),
					(3, 'Neha', 'Singh', 'ECE', 48000, '2023-07-20', 22),
					(4, 'Priya', 'Yadav', 'CSE', 52000, '2024-02-01', 21),
					(5, 'Rohit', 'Kumar', 'ME', 40000, '2023-05-18', 24),
					(6, 'Sneha', 'Gupta', 'IT', 47000, '2023-08-25', 22),
					(7, 'Ankit', 'Mishra', 'CE', 42000, '2024-03-10', 23);

SELECT * FROM student1;



INSERT INTO student2(student_id, first_name, last_name, department, fee, joining_date, age)
VALUES 
(1, 'Karan', 'Mehta', 'CSE', 53000, '2024-04-01', 22),
(2, 'Neha', 'Singh', 'ECE', 48000, '2023-07-20', 22),
(3, 'Pooja', 'Agarwal', 'IT', 46000, '2023-09-15', 23),
(4, 'Vikas', 'Pandey', 'ME', 41000, '2023-10-20', 24),
(5, 'Sneha', 'Gupta', 'IT', 47000, '2023-08-25', 22),
(6, 'Riya', 'Srivastava', 'ECE', 49000, '2024-02-18', 21),
(7, 'Ankit', 'Mishra', 'CE', 42000, '2024-03-10', 23);


SELECT * FROM STUDENT2;

----------------------------------------
-- UNOIN
---------------------------------------
SELECT * FROM student1
UNION
SELECT * FROM student2;


SELECT first_name, last_name, age FROM student1
UNION
SELECT first_name ,last_name ,age FROM student2;



SELECT first_name, last_name, age FROM student1
UNION ALL
SELECT first_name ,last_name ,age FROM student2;


---------------------------------------------------
-------      INSERTION       --------
---------------------------------------------------




