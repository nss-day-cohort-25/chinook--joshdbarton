SELECT c.FirstName, c.LastName, c.CustomerId, c.Country
FROM Customer as c
WHERE c.Country<>'USA'