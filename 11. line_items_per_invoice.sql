--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

SELECT 
i.InvoiceId,
COUNT(il.Quantity) AS TotalInvoiceLines
FROM 
InvoiceLine il 
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId;