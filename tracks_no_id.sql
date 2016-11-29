select t.Name as 'TrackName',
		al.Title as 'AlbumTitle',
		g.Name as 'GenreName',
		mt.Name as 'MediaType'
from Track t, Album al, MediaType mt, Genre g
where t.AlbumId = al.AlbumId and t.GenreId = g.GenreId and t.MediaTypeId = mt.MediaTypeId
group by t.Name 		
		