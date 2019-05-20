-- Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.

SELECT
e.FirstName + ' ' + e.LastName FullName,
e.EmployeeId,
i.InvoiceId
FROM 
Customer c
JOIN Invoice i ON i.CustomerId = c.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
WHERE e.Title LIKE '%agent%';
