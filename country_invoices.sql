SELECT count() as "# of invoices", Invoice.BillingCountry
FROM Invoice
GROUP BY Invoice.BillingCountry