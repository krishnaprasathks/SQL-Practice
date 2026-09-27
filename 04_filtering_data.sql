-- Retrieve all customers from Germany.

SELECT*
FROM customers
WHERE country = 'GERMANY';

/*Retrieve all customers who are not from Germany*/

SELECT*
FROM customers
WHERE country != 'GERMANY';

/*Retrieve all customers with a score greater than 500*/

SELECT*
FROM customers
WHERE score > 500;

/*Retrieve all customers with a score of 500 or more*/

SELECT*
FROM customers
WHERE score >= 500;

/*Retrieve all customers with a score less than 500 */

SELECT*
FROM customers
WHERE score < 500;

/*Retrieve all customers with a score of 500 or less */
SELECT*
FROM customers
WHERE score <= 500;


/*Retrieve all customers who are from the USA and have a score 
greater than 500*/

SELECT *
FROM customers
WHERE country = 'USA' AND score > 500;

/*Retrieve all customers who are from the USA or have a score 
greater than 500*/

SELECT *
FROM customers
WHERE country = 'USA' OR score > 500;

/*Retrieve all customers with a score not less than 500*/

SELECT *
FROM customers
WHERE NOT score < 500;


/*Retrieve all customers whose score falls in the range 
between 100 and 500*/

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500;

/*Retrieve all customers whose score falls in the range 
between 100 and 500*/

SELECT *
FROM customers
WHERE score >= 100 AND score<= 500;


/*Retrieve all customers from either Germany or USA*/

SELECT *
FROM customers
WHERE country IN ('Germany','USA');

/*Retrieve all customers from not either Germany or USA*/

SELECT *
FROM customers
WHERE country NOT IN ('Germany','USA');


--Find all customers whose first name start with 'n'

SELECT *
FROM customers
WHERE first_name LIKE 'm%'

--Find all customers whose first name end with 'n'

SELECT *
FROM customers
WHERE first_name LIKE '%n'

--Find all customers whose first name contains 'r'

SELECT *
FROM customers
WHERE first_name LIKE '%r%'

--Find all customers whose first name contains 'r' in the 3rd position

SELECT *
FROM customers
WHERE first_name LIKE '__r%'








