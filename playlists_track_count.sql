SELECT count(PlaylistTrack.TrackId), Playlist.PlaylistId, Playlist.Name
FROM Playlist
LEFT JOIN PlaylistTrack ON PlaylistTrack.PlaylistId=Playlist.PlaylistId
GROUP BY Playlist.PlaylistId