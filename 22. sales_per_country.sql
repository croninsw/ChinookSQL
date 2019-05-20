--Provide a query that shows the total sales per country.

SELECT 
i.BillingCountry AS 'Country',
COUNT(i.Total) AS 'Total Sales Per Country'
FROM Invoice i 
GROUP BY i.BillingCountry
ORDER BY COUNT(i.Total) DESC;
