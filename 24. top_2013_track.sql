--Provide a query that shows the most purchased track of 2013.

SELECT TOP 10
t.Name AS 'Track Name',
SUM(il.Quantity) AS 'Total Sales'
FROM Track t 
JOIN InvoiceLine il ON il.TrackId = t.TrackId
JOIN Invoice i ON i.InvoiceId  = il.InvoiceId
WHERE YEAR(i.InvoiceDate) = '2013'
GROUP BY t.Name
ORDER BY [Total Sales] DESC;