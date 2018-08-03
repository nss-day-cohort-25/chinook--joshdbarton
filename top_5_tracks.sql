SELECT count(InvoiceLine.TrackId)  as trackcount, Track.Name
FROM InvoiceLine
JOIN Invoice on InvoiceLine.InvoiceId=Invoice.InvoiceId
JOIN Track ON Track.TrackId=InvoiceLine.TrackId
Group BY Track.Name
ORDER BY trackcount DESC
LIMIT 5