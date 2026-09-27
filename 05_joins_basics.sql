-- Retrieve all data from customers and orders as seperate results

SELECT*
FROM customers;

SELECT*
FROM orders;

/*Get all customers along with thier orders,but only for customers 
who have placed an order*/

SELECT
id,
first_name,
order_id,
sales
FROM customers
INNER JOIN orders
ON id= customer_id;

/*Get all customers along with thier orders,but only for customers 
who have placed an order*/

SELECT
c.id,
c.first_name,
o.order_id,
o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id= o.customer_id;


/*Get all customers along with their orders, including those 
without orders*/

SELECT
c.id,
c.first_name,
o.order_id,
o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id;


/*Get all customers along with thier orders,
including orders without matching customers*/

SELECT
c.id,
c.first_name,
o.order_id,
o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id;

/*Get all customers along with their orders,including orders 
without matching customers using LEFT JOIN*/

SELECT
c.id,
c.first_name,
o.order_id,
o.sales
FROM orders AS o 
LEFT JOIN customers AS c
ON c.id = o.customer_id;


/*Get all customers and all orders, even if there's no match.*/

SELECT
c.id,
c.first_name,
o.order_id,
o.sales
FROM orders AS o 
FULL JOIN customers AS c
ON c.id = o.customer_id;




