--using chinook;

/*1.) non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) 
who are not in the US.

--SELECT count (*)
--FROM customer

SELECT
	--FirstName + ' '+ LastName as FullName,
	FullName = FirstName + ' ' + LastName,
	CustomerId,
	Country
FROM Customer
WHERE Country != 'USA'*/

/*2.) brazil_customers.sql: Provide a query only showing the Customers from Brazil.

SELECT *
FROM Customer
Where Country = 'Brazil'*/

/*3.)brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. 
The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT 
FullName = c.FirstName + ' ' + c.LastName, 
i.InvoiceId, I.InvoiceDate, I.BillingCountry
FROM Customer c
left join Invoice I on c.CustomerId = I.CustomerId
WHERE Country = 'Brazil'*/

--4.) sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.

SELECT *
FROM Employee
WHERE Title LIKE '%Agent%'
	
 


