--Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT 
t.Name Title,
a.Name Artist,
il.InvoiceLineId
FROM InvoiceLine il 
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist a ON al.ArtistId = a.ArtistId
ORDER BY il.InvoiceLineId DESC;
