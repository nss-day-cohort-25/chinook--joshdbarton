Select InvoiceLine.InvoiceLineId, Track.Name, Artist.Name
FROM InvoiceLine
LEFT JOIN Track ON Track.TrackId=InvoiceLine.TrackId
LEFT JOIN Album ON Track.AlbumId=Album.AlbumId
LEFT JOIN Artist ON Artist.ArtistId=Album.ArtistId