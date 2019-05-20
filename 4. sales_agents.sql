-- Provide a query showing only the Employees who are Sales Agents.

SELECT
e.FirstName + ' ' + e.LastName FullName,
e.EmployeeId,
e.Title
FROM Employee e
WHERE e.Title LIKE '%sales%';
