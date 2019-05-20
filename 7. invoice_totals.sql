--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT
i.Total,
c.FirstName + ' ' + c.LastName FullName,
i.BillingCountry,
e.FirstName + ' ' + e.LastName SalesAgentName
FROM Invoice i 
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId;