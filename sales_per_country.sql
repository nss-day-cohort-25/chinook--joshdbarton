SELECT Invoice.BillingCountry, sum(Invoice.Total)
FROM Invoice
GROUP BY Invoice.BillingCountry