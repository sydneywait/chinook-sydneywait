--Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resultant table.

SELECT  pl.Name as 'PlaylistName', pl.PlaylistId, COUNT(plt.TrackId) as 'Playlist Track' FROM PlaylistTrack plt JOIN Track t on t.TrackId = plt.TrackId JOIN Playlist pl on pl.PlaylistId = plt.PlaylistId GROUP BY pl.PlaylistId, pl.name 
