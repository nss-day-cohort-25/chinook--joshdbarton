SELECT c.FirstName, c.LastName, i.InvoiceId, i.BillingCountry, i.InvoiceDate
FROM Customer as c
JOIN Invoice as i ON i.CustomerId=c.CustomerId
WHERE c.Country='Brazil'