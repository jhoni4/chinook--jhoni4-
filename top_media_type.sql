select mt.Name, 
	total(t.TrackId) 
from InvoiceLine il 
join Track t on t.TrackId = il.TrackId
join MediaType mt on mt.MediaTypeId = t.MediaTypeId
group by mt.Name
order by total(t.TrackId) 
desc limit 1
