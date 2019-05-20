 --Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT 
t.Name AS Track_Name,
al.Title AS Album,
mt.Name AS Media_Type,
g.Name AS Genre
FROM Track t 
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
JOIN Genre g ON t.GenreId = g.GenreId;