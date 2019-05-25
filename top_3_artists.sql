--Provide a query that shows the top 3 best selling artists.


SELECT TOP 3 sq.[artist name] FROM (
SELECT a.Name as 'artist name', COUNT(il.InvoiceLineId) as 'tracks sold'  FROM InvoiceLine il
JOIN Track t on t.TrackId = il.TrackId
JOIN Album al on al.AlbumId = t.AlbumId
JOIN Artist a on a.ArtistId = al.ArtistId
GROUP BY a.name
) sq 
ORDER BY 
sq.
[tracks sold] DESC 

