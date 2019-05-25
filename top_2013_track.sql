--Provide a query that shows the most purchased track of 2013.


--SELECT TOP 1 'track name' FROM(
SELECT t.name as 'track name', COUNT(il.invoiceLineId) as 'track count' 
FROM Invoice i 
FULL JOIN InvoiceLine il on il.InvoiceId = i.InvoiceId 
FULL JOIN Track t ON il.TrackId = t.TrackId
WHERE cast(i.InvoiceDate as datetime) between '2013-01-01 00:00:00.000' and '2013-12-31 23:59:00.999' 
GROUP BY t.name ORDER BY 'track count' DESC



