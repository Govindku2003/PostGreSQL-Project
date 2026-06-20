CREATE TABLE student2(
		student_id INT PRIMARY KEY,
		first_name VARCHAR(100) NOT NULL,
		last_name VARCHAR(100) NOT NULL,
		department VARCHAR(50),
		ee 	NUMERIC(10,2),
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

SELECT * FROM student2;