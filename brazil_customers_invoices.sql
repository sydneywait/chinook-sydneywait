--Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT c.firstName, c.lastName, i.InvoiceId as 'Invoice Id', i.InvoiceDate as 'Invoice Date', i.BillingCountry FROM Customer c JOIN INVOICE i on c.CustomerId = i.InvoiceId WHERE c.Country = 'Brazil'