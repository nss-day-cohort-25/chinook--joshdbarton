SELECT Employee.FirstName || " " || Employee.LastName as "name", count(Customer.CustomerId)
FROM Customer, Employee
WHERE Customer.SupportRepId=Employee.EmployeeId
GROUP BY "name"