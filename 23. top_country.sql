--Which country's customers spent the most?

SELECT 
i.BillingCountry AS 'Country',
SUM(i.Total) AS 'Customer Spending Total'
FROM Invoice i 
JOIN Customer c ON i.CustomerId = c.CustomerId
-- WHERE i.BillingCountry = 'Argentina'
GROUP BY i.BillingCountry;



