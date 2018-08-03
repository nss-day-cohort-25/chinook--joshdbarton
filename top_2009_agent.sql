SELECT "name" 
from(
SELECT max(yearTotals), "name"
FROM 
(
SELECT sum(Invoice.Total) as yearTotals, Employee.FirstName || " " || Employee.LastName as "name"
FROM Invoice, Customer, Employee
WHERE Invoice.CustomerId=Customer.CustomerId
AND Customer.SupportRepId=Employee.EmployeeId
AND Invoice.InvoiceDate LIKE "2009%"
GROUP BY "name"
))