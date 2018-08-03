SELECT count() as "line items", Invoice.*
FROM InvoiceLine, Invoice 
WHERE InvoiceLine.InvoiceId=Invoice.InvoiceId
GROUP BY Invoice.InvoiceId
