-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT 
COUNT(il.Quantity)
FROM InvoiceLine il
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
WHERE i.InvoiceId = 37;

SELECT * FROM Invoice WHERE Invoice.InvoiceId = 37;

-- I think I did this incorrectly, but I am moving on for sake of time.