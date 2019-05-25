-- Which country's customers spent the most?

SELECT TOP 1 sq.billingCountry, sq.[Total $ sales] FROM (
SELECT i.billingCountry, COUNT(i.InvoiceId)  as 'number of sales', SUM(i.Total) as 'Total $ sales' from Invoice i 
GROUP BY i.BillingCountry) sq
ORDER BY [Total $ sales] DESC


