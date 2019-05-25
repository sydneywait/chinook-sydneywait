--Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT t.name as 'Track Name', a.Title as 'Album Name', mt.Name as 'Media Type', g.Name as 'Genre' FROM Track t JOIN Album a ON t.AlbumId = a.AlbumId JOIN MediaType mt on t.MediaTypeId=mt.MediaTypeId JOIN Genre g ON g.GenreId = t.GenreId 