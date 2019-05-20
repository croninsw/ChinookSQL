--Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT 
i.BillingCountry,
COUNT(i.BillingCountry) AS Invoices_By_Country
FROM Invoice i 
GROUP BY i.BillingCountry;