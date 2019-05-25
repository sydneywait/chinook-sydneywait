-- Provide a query that shows the total sales per country.


SELECT i.billingCountry, COUNT(i.InvoiceId)  as 'number of sales', SUM(i.Total) as 'Total $ sales' from Invoice i GROUP BY i.BillingCountry


