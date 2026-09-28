/*Show a list of customers first name togrther with their
country in one column*/

SELECT
first_name,
country,
CONCAT(first_name,'-', country) AS name_country
FROM customers;

--Convert the first name to lowercase

SELECT 
first_name,
LOWER(first_name) AS low_name
FROM customers;

--Convert the first name to uppercase

SELECT 
first_name,
UPPER(first_name) AS up_name
FROM customers;


/*Find customers whose first name contains leading or 
trailing spaces*/

SELECT
first_name
FROM customers
WHERE first_name != TRIM(first_name);

/*Find customers whose first name contains leading or 
trailing spaces*/


SELECT
first_name,
LEN(first_name) AS len_name,
LEN(TRIM(first_name)) AS len_trim_name,
LEN(first_name) - LEN(TRIM(first_name)) AS flag
FROM customers
WHERE LEN(first_name) != LEN(TRIM(first_name));


/*Remove dashes (-) from a phone number*/

SELECT
'123-456-7890' AS phone,
REPLACE('123-456-7890', '-' , '') AS clean_phone;

--Replace file extence from pdf to docs

SELECT
'book.pdf' AS old_filename ,
REPLACE('book.pdf','.pdf', '.docs') AS new_filename;


--Calculate the length of each customers first name

SELECT
first_name,
LEN(first_name) AS length_name
FROM customers;


--Retrieve the first two characters of each first name 

SELECT
first_name,
LEFT(TRIM(first_name), 2 ) AS first_2_characters
FROM customers;

--Retrieve the last two characters of each first name 

SELECT
first_name,
RIGHT(first_name, 2 ) AS last_2_characters
FROM customers;


/*Retrieve a list of customerd firts names removing the 
first character*/

SELECT
first_name,
SUBSTRING(first_name,2, LEN(first_name)) AS sub_name
FROM customers;


/*Retrieve a list of customers firts names removing the 
first character*/

SELECT
first_name,
SUBSTRING(TRIM(first_name),2, LEN(first_name)) AS sub_name
FROM customers;

/**/
SELECT 
3.516,
ROUND (3.516, 2) AS round_2,
ROUND (3.516, 1) AS round_1,
ROUND (3.516, 0) AS round_0;