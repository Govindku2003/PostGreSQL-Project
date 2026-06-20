CREATE TABLE teachers(
		teacher_ID INT PRIMARY KEY,
		name VARCHAR(100) NOT NULL,
		postion VARCHAR(50),
		department VARCHAR(50) NOT NULL,
		branch VARCHAR(50),
		hire_date DATE,
		salary NUMERIC
)