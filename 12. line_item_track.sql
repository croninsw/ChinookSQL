-- Provide a query that includes the purchased track name with each invoice line item.

SELECT 
t.Name,
il.InvoiceLineId
FROM Track t 
JOIN InvoiceLine il ON il.TrackId = t.TrackId
ORDER BY il.InvoiceLineId DESC;
