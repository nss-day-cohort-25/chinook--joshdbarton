SELECT max(total), "country"
FROM 
(
SELECT Invoice.BillingCountry as "country", sum(Invoice.Total) as total
FROM Invoice
GROUP BY Invoice.BillingCountry
)