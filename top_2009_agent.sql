--Which sales agent made the most in sales in 2009?




SELECT MAX(sq.total_sales) as 'MaxSales' FROM 
(
SELECT e.FirstName, e.LastName, COUNT(i.total) as total_sales
FROM Invoice i 
JOIN Customer c on i.CustomerId = c.CustomerId 
JOIN Employee e ON c.SupportRepId = e.EmployeeId 
WHERE cast(i.InvoiceDate as datetime) between '2009-01-01 00:00:00.000' and '2009-12-31 23:59:00.999' 
GROUP BY e.FirstName, e.LastName
) sq 

SELECT TOP 1 sq.firstName, sq.LastName, total_sales FROM(
SELECT e.FirstName, e.LastName, COUNT(i.total) as total_sales
FROM Invoice i 
JOIN Customer c on i.CustomerId = c.CustomerId 
JOIN Employee e ON c.SupportRepId = e.EmployeeId 
WHERE cast(i.InvoiceDate as datetime) between '2009-01-01 00:00:00.000' and '2009-12-31 23:59:00.999' 
GROUP BY e.FirstName, e.LastName) sq ORDER BY total_sales DESC




