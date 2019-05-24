--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.


SELECT i.invoiceId as 'InvoiceId', i.Total as 'Invoice Total', c.FirstName AS 'Customer First Name', c.LastName as 'Customer Last Name', c.Country, e.firstName as 'Sales Agent First Name', e.lastName as 'Sales Agent Last Name'  FROM Invoice i JOIN Customer c on i.CustomerId = c.CustomerId JOIN Employee e ON e.EmployeeId = c.SupportRepId

