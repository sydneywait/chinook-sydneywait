--Provide a query that shows total sales made by each sales agent.

SELECT e.FirstName, e.LastName, SUM(i.total) as 'total sales' FROM Invoice i JOIN Customer c on i.CustomerId = c.CustomerId JOIN Employee e ON c.SupportRepId = e.EmployeeId GROUP BY e.FirstName, e.LastName