--Provide a query that shows the most purchased Media Type.

SELECT TOP 1
mt.Name AS 'Top Media Type',
SUM(il.Quantity) AS 'Gross Sales'
FROM MediaType mt
JOIN Track t ON t.MediaTypeId = mt.MediaTypeId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY mt.Name
ORDER BY [Gross Sales] DESC;

