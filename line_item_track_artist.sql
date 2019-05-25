--Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT il.InvoiceLineId, t.Name, ar.Name as 'Artist Name', al.Title as 'Album Title'  FROM InvoiceLine il JOIN Track t ON t.TrackId = il.TrackId JOIN Album al on t.AlbumId = al.AlbumId JOIN Artist ar on ar.ArtistId = al.ArtistId   


