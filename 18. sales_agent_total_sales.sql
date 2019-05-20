 --Provide a query that shows total sales made by each sales agent.

SELECT
e.FirstName + ' ' + e.LastName AS EmployeeName,
SUM(i.Total) AS Total_Sales
FROM Employee e 
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY e.FirstName + ' ' + e.LastName;