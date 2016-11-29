select c.Country, count(InvoiceId) as '#ofInvoice'
from Customer c
join Invoice i on i.CustomerId =c.CustomerId
group by Country

