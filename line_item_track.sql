Select InvoiceLine.InvoiceLineId, Track.Name
FROM InvoiceLine
LEFT JOIN Track ON Track.TrackId=InvoiceLine.TrackId