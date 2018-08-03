SELECT Track.Name, Album.Title as "album", MediaType.Name as "media", Genre.Name  as "genre"
FROM Track, Album, MediaType, Genre
WHERE Track.AlbumId=Album.AlbumId
AND MediaType.MediaTypeId = Track.MediaTypeId
AND Genre.GenreId = Track.GenreId