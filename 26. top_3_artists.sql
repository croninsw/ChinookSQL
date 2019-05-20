--Provide a query that shows the top 3 best selling artists.

SELECT TOP 3
a.Name AS 'Artist Name',
SUM(i.Total) AS 'Gross Sales'
FROM Artist a 
JOIN Album al ON a.ArtistId = al.ArtistId
JOIN Track t ON t.AlbumId = al.AlbumId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY a.Name
ORDER BY SUM(i.Total) DESC;
