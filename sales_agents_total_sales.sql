SELECT sum(Invoice.Total) as "total sales", Employee.FirstName || " " || Employee.LastName as "name"
FROM Invoice, Customer, Employee
WHERE Invoice.CustomerId=Customer.CustomerId
AND Customer.SupportRepId=Employee.EmployeeId
GROUP BY "name"