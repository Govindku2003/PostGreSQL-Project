 CREATE TABLE IF NOT EXISTS users(
		user_ID SERIAL PRIMARY KEY,
		username VARCHAR(100) NOT NULL,
		email VARCHAR(100) UNIQUE,
		age INT,
		city VARCHAR(50)
 );

 SELECT *  FROM users ;

 -- INSRETING THE ELEMENT HERE

 INSERT INTO users(username, email, age, city) 
 			VALUES('Govind Kumar','gkk@gmail.com',23,'Lucknow');

INSERT INTO users(username, email, age, city) VALUES
			      ('Govind Kumar','gkk1@gmail.com',23,'Lucknow');
				  
-- ADD COLUMN
ALTER TABLE users ADD COLUMN id_number INT UNIQUE;

-- UPDATE THE NULL VALUE OR FILL THE NULL VALUE
UPDATE users
SET id_number = 5001
WHERE user_id = 1;

 SELECT *  FROM users ;

UPDATE users
SET id_number = 5002
WHERE user_id = 3;

INSERT INTO users(username, email, age, city,id_number) VALUES
				  ('Amit Kumar','gkk3@gmail.com',25,'Lucknow',231),
				  ('Raju Kumar','gkk4@gmail.com',53,'Lucknow',123),
				  ('Shiv Kumar','gkk5@gmail.com',73,'Lucknow',543),
				  ('Good Kumar','gkk6@gmail.com',63,'Lucknow',654);

SELECT * FROM users WHERE user_id=2;

DELETE  FROM users WHERE user_id=5;

 SELECT *  FROM users ;

 UPDATE users SET age=46 WHERE username='Good Kumar';

 SELECT * FROM users ORDER BY user_id ASC;


 UPDATE users SET city='Mumbai' WHERE age>=40;

 INSERT INTO users(username, email, age, city,id_number) VALUES
				  ('Anjur Kumar','gkk3@hotmail.com',25,'Lucknow',531),
				  ('Rajesh Kumar','gkk4@yahoo.com',56,'Lucknow',823),
				  ('Shivansh Kumar','gkk8@gmail.com',43,'Lucknow',573),
				  ('Goodom Kumar','gkk6@yahoo.com',33,'Lucknow',684);


 SELECT *  FROM users;

 update users
 	set age=age+1
	 where email like '%yahoo.com';

-- RENAME THE TABLE COLUMN NAME TO OTHER NAME 

ALTER TABLE users
RENAME COLUMN username TO fullname; 

 SELECT *  FROM users;



 -- TO CHANGE THE AGE DATA TYPE 
 
 ALTER TABLE users
 ALTER COLUMN age TYPE SMALLINT;

  SELECT *  FROM users;

  -- ADD NOT NULL CONSTRAINT TO CITY COLUMN

  ALTER TABLE users
  ALTER COLUMN city SET NOT NULL;

   SELECT *  FROM users;

   INSERT INTO users(fullname, email, age, city,id_number) VALUES
				  ('Anjur Kumar','gkk373@hotmail.com',25,'Banarash',5871);

	-- TO ADD CHEACK CONSTRAINT TO A SPECIFIC COLOMN

	ALTER TABLE users
	ADD CONSTRAINT age CHECK (age>=18);

 -- TO DELETE CONSTRAINT TO A SPECIFIC COLOMN

	ALTER TABLE users
	DROP CONSTRAINT age;


	-- TO CHANGE THE TABLE NAME 

	
	ALTER TABLE USERS
	RENAME TO costumers

 SELECT *  FROM costumers;


 ALTER TABLE costumers
 RENAME TO users;
	
  SELECT *  FROM users;
				  

