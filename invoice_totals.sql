select i.Total as InvoiceTotal,
	  c.FirstName || " " || c.LastName as CustomerName,
	  c.Country as CustomersCountry,
	  i.BillingCountry as InvoiveCountry,
	  e.FirstName || " " || e.LastName as Salesagent
from Employee as e
join Customer as c on e.EmployeeId = c.SupportRepId
join Invoice as i on c.CustomerId = i.CustomerId
where e.Title = 'Sales Support Agent'	
order by CustomerName  
	  