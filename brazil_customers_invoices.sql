select C.CustomerId,
		FirstName || " " || LastName as "FullName ", 
		InvoiceId, 
		InvoiceDate, 
		BillingCountry
from Customer as C
Join Invoice as I  on I.CustomerId = C.CustomerId
where Country = 'Brazil'