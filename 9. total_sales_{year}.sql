-- What are the respective total sales for each of those years?


SELECT 
SUM(Total) Total, YEAR(InvoiceDate) 'Year'
FROM Invoice
WHERE YEAR(InvoiceDate) = '2009'
OR YEAR(InvoiceDate) = '2011'
GROUP BY YEAR(InvoiceDate);