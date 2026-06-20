SELECT* FROM PRODUCT;


SELECT product_name,category, price,
 DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS Ranking
FROM product; 
