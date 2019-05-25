--Which sales agent made the most in sales over all?


SELECT TOP 1 sq.firstName, sq.LastName, total_sales FROM(
SELECT e.FirstName, e.LastName, COUNT(i.total) as total_sales
FROM Invoice i 
JOIN Customer c on i.CustomerId = c.CustomerId 
JOIN Employee e ON c.SupportRepId = e.EmployeeId 
GROUP BY e.FirstName, e.LastName) sq ORDER BY total_sales DESC