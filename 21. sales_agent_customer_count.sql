--Provide a query that shows the count of customers assigned to each sales agent.

SELECT 
e.FirstName + ' ' + e.LastName AS 'Employee Name',
count(c.CustomerId) AS 'Number of Customers'
FROM Employee e 
JOIN Customer c ON e.EmployeeId = c.SupportRepId
GROUP BY e.FirstName + ' ' +e.LastName;

SELECT Employee.EmployeeId, COUNT(Customer.SupportRepId) FROM Employee JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId GROUP BY Employee.EmployeeId;
