SELECT Employee.FirstName || " " || Employee.LastName AS "Agent Name"
, Invoice.InvoiceId 
FROM Employee, Invoice, Customer
WHERE Employee.EmployeeId=Customer.SupportRepId
AND Customer.CustomerId=Invoice.CustomerId