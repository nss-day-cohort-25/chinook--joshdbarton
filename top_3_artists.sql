SELECT count(Track.TrackId)  as trackcount, Artist.Name
FROM InvoiceLine
JOIN Invoice on InvoiceLine.InvoiceId=Invoice.InvoiceId
JOIN Track ON Track.TrackId=InvoiceLine.TrackId
JOIN Album ON Track.AlbumId=Album.AlbumId
JOIN Artist ON Artist.ArtistId=Album.ArtistId
Group BY Artist.Name
ORDER BY trackcount DESC
LIMIT 3