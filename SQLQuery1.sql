--use chinook;

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

/*-4.) sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.

SELECT *
FROM Employee
WHERE Title LIKE '%Agent%'*/

/*5.) unique_invoice_countries.sql: Provide a query showing a unique/distinct list of billing countries 
from the Invoice table.

SELECT DISTINCT BillingCountry
FROM INVOICE*/

/*6.) sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include the Sales Agent's full name.
7.) invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and 
Sale Agent name for all invoices and customers.
*SELECT  c.SupportRepId 
FROM Customer c
join Employee e on c.SupportRepId = e.EmployeeId

SELECT 
SaleAgentsFullName = e.FirstName + ' ' + e.LastName,
EmployeeTitle = e.Title,
	i.*
FROM Employee e 
join Customer c on c.SupportRepId = e.EmployeeId
join Invoice i on i.CustomerId = c.CustomerId*/

/*8.) total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?

SELECT 
	YEAR(InvoiceDate) AS InvoiceYear,
	COUNT(*) AS InvoiceCount
FROM Invoice
WHERE YEAR(InvoiceDate) = '2009' or YEAR(InvoiceDate) = '2011'
GROUP BY YEAR(InvoiceDate)*/ 

/*9.) total_sales_{year}.sql: What are the respective total sales for each of those years?
*/

/*10.) invoice_37_line_item_count.sql: Looking at the InvoiceLine table, provide a query that COUNTs the 
number of line items for Invoice ID 37.

SELECT 
	Count(*) as InvoiceLineCount
FROM InvoiceLine
WHERE InvoiceId = '37'*/

/*11.) line_items_per_invoice.sql: Looking at the InvoiceLine table, provide a query that 
COUNTs the number of line items for each Invoice. HINT: GROUP BY

SELECT 
	i.InvoiceId as InvoiceId,
	Count(*) as InvoiceLineCount
FROM InvoiceLine i
GROUP BY InvoiceId*/

/*12.)line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.

SELECT 
	i.TrackId as TrackId,
	t.Name as TrackName
FROM InvoiceLine i
left join Track t on i.TrackId = t.TrackId*/

/*13.) line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.*/


/*14.) country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT
	Count(*) as InvoiceCount,
	i.BillingCountry as InvoiceCountry
FROM Invoice i
GROUP BY i.BillingCountry*/


/*15.) playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be 
included on the resulant table.*/

/*16.tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name,
 Media type and Genre.*/

/*17: invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.*/














 






	
 

