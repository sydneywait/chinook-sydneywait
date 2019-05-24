--Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT 
e.FirstName, e.LastName, 
i.Invoiceid AS 'InvoiceId', i.InvoiceDate 
FROM Employee e 
FULL JOIN Customer c on c.SupportRepId = e.EmployeeId 
JOIN Invoice i ON i.CustomerId = c.CustomerId 
WHERE e.title LIKE 'Sale%' 

