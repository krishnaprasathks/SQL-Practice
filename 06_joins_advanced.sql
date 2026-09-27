-- SECTION 1: Queries on MyDatabase


/*Get all customers who haven't placed any order*/

SELECT*
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;

/*Get all orders without matching customers*/

SELECT*
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id  IS NULL;

/*Get all orders without matching customers using LEFT JOIN*/

SELECT*
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id  IS NULL;


/*Find customers without orders and orders without customers*/

SELECT*
FROM orders AS o
FULL JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id  IS NULL OR o.customer_id IS NULL;


/*Get all customers along with their orders,
but only for customers who have placed an orders without using 
INNER JOIN */

SELECT*
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id  IS NOT NULL;


/*Generate all possible combinations of customers amd orders*/

SELECT *
FROM customers
CROSS JOIN orders;


-- SECTION 2: Queries on SalesDB

/*Track: Using salesDB,Retrieve a list of all orders,
along with therelated customer, product and employee details.
For each order,display: Order ID, customer's name, product name,
price,sales person's name*/

SELECT 
o.OrderID,
o.Sales,
c.FirstName AS CustomerFirstName,
c.LastName AS CustomerLastName,
p.Product AS ProductName,
p.Price,
e.FirstName AS EmployeeFirstName,
e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.ProductS AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID