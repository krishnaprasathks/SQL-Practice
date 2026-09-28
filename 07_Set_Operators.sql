/*Combines the data from employees and 
customers into one table*/

SELECT
FirstName,
LastName
FROM Sales.Customers

UNION

SELECT
FirstName,
LastName
FROM Sales.Employees;


/*Combines the data from employees and 
customers into one table,including duplicates*/

SELECT
FirstName,
LastName
FROM Sales.Customers

UNION ALL

SELECT
FirstName,
LastName
FROM Sales.Employees;



--Find the employees who are not customers at the same time

SELECT
FirstName,
LastName
FROM Sales.Employees

EXCEPT

SELECT
FirstName,
LastName
FROM Sales.Customers;


--Find the employees who are also customers

SELECT
FirstName,
LastName
FROM Sales.Employees

INTERSECT

SELECT
FirstName,
LastName
FROM Sales.Customers;


--Orders are stored in seperate tables(Orders and OrdersArchive).
--Combine all orders data into one report without duplicates.

SELECT
'Orders' AS SourceTable,
 [OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.Orders

UNION

SELECT
'OrdersArchive' AS SourceTable,
 [OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.OrdersArchive
ORDER BY OrderID ;

