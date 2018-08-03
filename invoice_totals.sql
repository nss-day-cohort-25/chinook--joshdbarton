SELECT Invoice.Total, Customer.FirstName || " " || Customer.LastName AS "Name", Customer.Country, Employee.FirstName || " " || Employee.LastName AS "Agent"
FROM Invoice, Customer, Employee 
WHERE Invoice.CustomerId=Customer.CustomerId
AND Employee.EmployeeId=Customer.SupportRepId