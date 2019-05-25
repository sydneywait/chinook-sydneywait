--Provide a query that shows the most purchased Media Type.

SELECT TOP 1 sq.[media type] FROM (
SELECT mt.Name as 'media type', COUNT(il.InvoiceLineId) as 'media count' FROM InvoiceLine il
JOIN Track t on t.TrackId = il.TrackId
JOIN MediaType mt on mt.MediaTypeId = t.MediaTypeId  
GROUP BY mt.name) sq ORDER BY sq.[media count] desc


 