 --Which sales agent made the most in sales over all?

SELECT TOP 1
    e.FirstName + ' ' + e.LastName AS EmployeeName,
    '$' + CAST(SUM(i.Total) AS VARCHAR(50)) AS Total_Sales
FROM Employee e 
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY e.FirstName + ' ' + e.LastName;
