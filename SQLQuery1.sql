--using chinook;

--non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) 
--who are not in the US.

--SELECT count (*)
--FROM customer

SELECT
	--FirstName + ' '+ LastName as FullName,
	FullName = FirstName + ' ' + LastName,
	CustomerId,
	Country
FROM Customer
WHERE Country != 'USA'

