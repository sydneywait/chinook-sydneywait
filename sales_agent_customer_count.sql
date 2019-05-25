--Provide a query that shows the count of customers assigned to each sales agent.

--SELECT * from Employee
--select * from customer

SELECT e.firstName, e.LastName, COUNT(c.CustomerId) as 'number of customers' from Employee e JOIN Customer c ON e.EmployeeId = c.SupportRepId GROUP BY e.firstName, e.lastName