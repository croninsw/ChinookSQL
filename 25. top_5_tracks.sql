--Provide a query that shows the top 5 most purchased songs.

SELECT TOP 5
t.Name AS 'Track Name',
SUM(il.Quantity) AS 'Times Purchased'
FROM Track t 
JOIN InvoiceLine il ON il.TrackId = t.TrackId
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY t.Name
ORDER BY SUM(il.Quantity) DESC;
