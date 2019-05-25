--Provide a query that shows the top 5 most purchased songs.

SELECT TOP 5 sq.[track name] FROM (
SELECT t.name as 'track name', COUNT(il.invoiceLineId) as 'track count' 
FROM Invoice i 
FULL JOIN InvoiceLine il on il.InvoiceId = i.InvoiceId 
FULL JOIN Track t ON il.TrackId = t.TrackId
GROUP BY t.name) sq ORDER BY sq.[track count] DESC
