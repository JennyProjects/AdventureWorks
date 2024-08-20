-- Database: AdventureWorks

-- From the following table write a query in SQL to retrieve all rows and columns from the employee table in the Adventureworks database. Sort the result set in ascending order on jobtitle.
-- Sample table: HumanResources.Employee

SELECT * 
FROM HumanResources.Employee
ORDER BY JobTitle ASC;

-- From the following table write a query in SQL to return all rows and a subset of the columns (FirstName, LastName, businessentityid) from the person table in the AdventureWorks database. The third column heading is renamed to Employee_id. Arranged the output in ascending order by lastname.
-- Sample table: Person.Person

SELECT FirstName, LastName, BusinessEntityID AS Employee_id
FROM Person.Person
ORDER BY LastName ASC;

-- From the following table write a query in SQL to return only the rows for product that have a sellstartdate that is not NULL and a productline of 'T'. Return productid, productnumber, and name. Arranged the output in ascending order on name.
-- Sample table: Production.Product

SELECT ProductID, ProductNumber, Name
FROM Production.Product
WHERE SellStartDate IS NOT NULL
AND ProductLine = 'T'
ORDER BY name ASC;

-- From the following table write a query in SQL to return all rows from the salesorderheader table in Adventureworks database and calculate the percentage of tax on the subtotal have decided. Return salesorderid, customerid, orderdate, subtotal, percentage of tax column. Arranged the result set in descending order on subtotal.
-- Sample table: Sales.SalesOrderHeader

SELECT SalesOrderID, CustomerID, OrderDate, SubTotal, (TaxAmt*100)/SubTotal AS Tax_Percent
FROM Sales.SalesOrderHeader
ORDER BY SubTotal DESC;

-- From the following table write a query in SQL to create a list of unique jobtitles in the employee table in Adventureworks database. Return jobtitle column and arranged the resultset in ascending order.
-- Sample table: HumanResources.Employee

SELECT DISTINCT JobTitle
FROM HumanResources.Employee
ORDER BY JobTitle ASC;

-- From the following table write a query in SQL to calculate the total freight paid by each customer. Return customerid and total freight. Sort the output in ascending order on customerid.
-- Sample table: Sales.SalesOrderHeader

SELECT CustomerID, SUM(Freight) AS Total_Freight
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY CustomerID ASC;

-- From the following table write a query in SQL to find the average and the sum of the subtotal for every customer. Return customerid, salespersonid, average and sum of the subtotal. Grouped the result on customerid and salespersonid. Sort the result on customerid column in descending order.
-- Sample table: Sales.SalesOrderHeader

SELECT CustomerID, SalesPersonID, AVG(SubTotal) AS Avg_Subtotal, SUM(SubTotal) AS Sum_Subtotal
FROM Sales.SalesOrderHeader
GROUP BY CustomerID, SalesPersonID
ORDER BY CustomerID DESC;

-- From the following table write a query in SQL to retrieve total quantity of each productid which are in shelf of 'A' or 'C' or 'H'. Filter the results for sum quantity is more than 500. Return productid and sum of the quantity. Sort the results according to the productid in ascending order.
-- Sample table: Production.ProductInventory

SELECT ProductID, SUM(Quantity) AS total_quanity
FROM Production.ProductInventory
WHERE Shelf IN ('A', 'C', 'H')
GROUP BY ProductID
HAVING SUM(Quantity) > 500
ORDER BY ProductID ASC;

-- From the following tables write a query in SQL to find the persons whose last name starts with letter 'L'. Return BusinessEntityID, FirstName, LastName, and PhoneNumber. Sort the result on lastname and firstname.
-- Sample table: Person.PersonPhone

SELECT ph.BusinessEntityID, p.FirstName, p.LastName, ph.PhoneNumber
FROM Person.PersonPhone ph
JOIN Person.Person p ON ph.BusinessEntityID=p.BusinessEntityID
WHERE p.LastName LIKE 'L%'
ORDER BY p.LastName, p.FirstName;


