select p.Name,
	count(pt.TrackId)
from Playlist p, 
	PlaylistTrack pt
where p.PlaylistId = pt.PlaylistId
group by p.Name