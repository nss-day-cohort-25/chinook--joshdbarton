WITH winners as 
(
SELECT count(InvoiceLine.TrackId)  as trackcount, Track.Name as "winner"
FROM InvoiceLine
JOIN Invoice on InvoiceLine.InvoiceId=Invoice.InvoiceId
JOIN Track ON Track.TrackId=InvoiceLine.TrackId
WHERE Invoice.InvoiceDate LIKE "2013%"
Group BY Track.Name
)
SELECT trackcount, "winner"
FROM "winners"
WHERE (SELECT MAX(trackcount) FROM "winners")=trackcount