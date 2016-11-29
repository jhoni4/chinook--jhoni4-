select e.FirstName || " " || e.LastName as "Sales FullName",
	total(i.Total) as 'Total Invoice'
from Employee e
join Customer c on c.SupportRepId = e.EmployeeId
join Invoice i on i.CustomerId = c.CustomerId where e.Title = 'Sales Support Agent'
group by e.EmployeeId
