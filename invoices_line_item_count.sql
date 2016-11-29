select i.InvoiceId,
	count(il.InvoiceLineId) as 'Countof LineItem'
from Invoice i, 
	InvoiceLine il
where il.InvoiceId = i.InvoiceId
group by i.InvoiceId