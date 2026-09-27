-- Add the new customers to existing customers table 

INSERT INTO customers (id, first_name,country, score)
VALUES 
(6, 'Anna', 'USA',NULL),
(7, 'Sam', NULL, 100 );

-- Insert data from 'customers' table into 'persons'

INSERT INTO persons (id, person_name, birth_date, phone)
SELECT 
id,
first_name,
NULL,
'Unknown'
FROM customers;

--Change the score of customer 6 to 0

UPDATE customers 
SET score =0
WHERE id = 6;

/*Change the score of customer with id 10 to 0 and update the country
to 'UK'*/

UPDATE customers
SET country = 'UK', score = 0
WHERE id = 10;

/*Update all customers with a NULL score by setting their score to 0*/

UPDATE customers
SET score = 0 
WHERE score IS NULL;

-- Delete all customers with an ID greater than 5

DELETE FROM customers
WHERE id > 5

-- Delete all data from table persons

DELETE FROM persons;

-- Delete all data from table persons

TRUNCATE TABLE persons