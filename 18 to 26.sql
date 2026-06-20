DROP TABLE IF EXISTS product;

CREATE TABLE product(
		product_id SERIAL PRIMARY KEY,
		product_name VARCHAR(100),
		category VARCHAR(50),
		price NUMERIC(10,2),
		quantity INT,
		added_rate NUMERIC (5,2)
);

SELECT * FROM product;

ALTER TABLE product
ADD COLUMN discounted_rate NUMERIC(5,2);

ALTER TABLE product
RENAME COLUMN added_rate TO added_date;

ALTER TABLE product
ALTER COLUMN added_date TYPE DATE
USING CURRENT_DATE;

INSERT INTO product( product_name, category , price, quantity,added_date,discounted_rate)
	     VALUES('Laptop','Electronics',75000.00,10,'2024-01-15',10.00);



SELECT * FROM product;



INSERT INTO product (product_name, category, price, quantity, added_date, discounted_rate)
VALUES
('Mobile','Electronics',25000.00,20,'2024-02-10',5.00),
('Headphones','Electronics',3000.00,50,'2024-03-05',8.00),
('Chair','Furniture',4500.00,15,'2024-01-20',12.00),
('Table','Furniture',8000.00,10,'2024-02-25',10.00),
('Shoes','Fashion',2000.00,30,'2024-03-15',7.00),
('Watch','Accessories',5000.00,25,'2024-01-30',6.00),
('Bag','Fashion',1500.00,40,'2024-02-18',9.00);

INSERT INTO product (product_name, category, price, quantity, added_date, discounted_rate)
VALUES
('Refrigerator','Electronics',30000.00,5,'2024-04-01',12.00),
('Sofa','Furniture',25000.00,3,'2024-04-05',15.00);


SELECT * FROM product;










select now() as current_datetime

 -- OR
SELECT NOW() AS CURRENT_DATETIME;

SELECT CURRENT_DATE AS today_date;


SELECT Added_date, Current_Date, (CURRENT_DATE- Added_date)AS DAYS_DIFFENCE
FROM product;

----------------------------------

SELECT product_name,
		EXTRACT( YEAR FROM added_date)AS year_added,
		EXTRACT( MONTH FROM added_date)AS Month_added,
		EXTRACT( DAY FROM added_date)AS Day_added

FROM product;

--------------------------------------------------------------

SELECT product_name,
		AGE (CURRENT_DATE , added_date) AS Age_since_added
FROM product;
-------------------------------------------------------------


SELECT product_name,
		TO_CHAR(added_date , 'DD-MM-YYYY') AS Formated_date
FROM product;


SELECT product_name,
		TO_CHAR(added_date , 'DD-Mon-YYYY') AS Frormated_date
FROM product;

-----------------------------------------------------------------
SELECT product_name, added_date,
		DATE_PART('dow', added_date) AS day_of_week
FROM product;


SELECT product_name, added_date,
		DATE_PART('month', added_date) AS moth_of_year
FROM product;


SELECT product_name, added_date,
		DATE_PART('Year', added_date) AS year
FROM product

------------------------------------------------------------


SELECT product_name, added_date,
		DATE_TRUNC('month', added_date) AS moth_of_year,
		DATE_TRUNC('week', added_date) AS week_of_moth,
		DATE_PART('isodow', added_date) AS date_of_year
FROM product;

SELECT * FROM product;




----------------------------------------

SELECT product_name , price,
		CASE
		  	WHEN price>= 10000 THEN 'Epansive'
			  WHEN price >= 5000 AND price<=9999 THEN 'Modarate'
			  ELSE 'Affordable'
		END As price_category
FROM product;


---------------------------------------------------------

-- Assignment



SELECT product_name ,price, quantity,
	CASE
	WHEN  quantity >= 15 THEN ' IN STCOK'
	WHEN quantity >=5 AND quantity<= 14 THEN 'LIMTED stock'
	ELSE 'OUT oF Stock soon ..'
 END AS stock_status
FROM product;



SELECT product_name ,price, quantity,
	CASE
	WHEN  quantity >= 15 THEN ' IN STCOK'
	WHEN quantity >=5 BETWEEN 14 THEN 'LIMTED stock'
	ELSE 'OUT oF Stock soon ..'
 END AS stock_status
FROM product;

SELECT * FROM product;


------------------------------------------------------------

SELECT product_name , category,
		CASE
		WHEN category LIKE 'Electronics%' THEN 'ELECTRONIC-items'
		WHEN category LIKE 'Furniture%' THEN 'FURNITURE-items'
		ELSE 'Accessories'
	END As category_status
FROM product;

----------------------------------------------------------------


ALTER TABLE product
ADD COLUMN discounted_price  NUMERIC(5,2);

ALTER TABLE product
ALTER COLUMN discounted_price TYPE NUMERIC(10,2);


UPDATE product
SET discounted_price = NULL
WHERE product_name IN ('Leptop', 'Mobile');




UPDATE product
SET discounted_price = price*0.9
WHERE product_name NOT IN ( 'Mobile');

SELECT product_name, price,
		COALESCE(discounted_price, price) As Final_price
FROM product;


--------------------------------------------------------------- 
SELECT * FROM product;


UPDATE product