-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT i.InvoiceId, i.CustomerId, i.InvoiceDate, i.BillingAddress, i.BillingCity, I.BillingState, i.BillingCountry, i.BillingPostalCode, i.total, COUNT(il.InvoiceLineId) as 'Number of line items' FROM InvoiceLine il JOIN Invoice i ON il.InvoiceId = i.InvoiceId GROUP BY i.invoiceId, i.CustomerId, i.InvoiceDate, i.BillingAddress, i.BillingCity, I.BillingState, i.BillingCountry, i.BillingPostalCode, i.total

