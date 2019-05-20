--How many Invoices were there in 2009 and 2011?

SELECT
    COUNT(i.Total) NumberOfInvoices,
    YEAR(i.InvoiceDate) InvoiceYear
FROM Invoice i
WHERE YEAR(InvoiceDate) = '2009'
OR YEAR(InvoiceDate) = '2011'
GROUP BY YEAR(i.InvoiceDate);