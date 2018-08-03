SELECT "name" 
from(
SELECT max(totals), "name"
FROM 
(
SELECT sum(Invoice.Total) as totals, Employee.FirstName || " " || Employee.LastName as "name"
FROM Invoice, Customer, Employee
WHERE Invoice.CustomerId=Customer.CustomerId
AND Customer.SupportRepId=Employee.EmployeeId
GROUP BY "name"
))