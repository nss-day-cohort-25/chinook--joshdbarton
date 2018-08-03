SELECT count(InvoiceLine.InvoiceLineId) as "count", MediaType.Name as "type"
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId=Track.TrackId
JOIN  MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY "type"
ORDER BY "count" DESC
LIMIT 1