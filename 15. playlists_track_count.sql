 --Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT 
pl.Name,
COUNT(plt.TrackId) AS Track_Count
FROM Playlist pl
JOIN PlaylistTrack plt ON pl.PlaylistId = plt.PlaylistId
GROUP BY pl.Name
ORDER BY Track_Count DESC;