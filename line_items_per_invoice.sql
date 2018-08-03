SELECT count() as "# of lines", Invoice.InvoiceId
FROM InvoiceLine
JOIN Invoice ON Invoice.InvoiceId=InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId