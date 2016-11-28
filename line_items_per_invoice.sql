select il.InvoiceId, 
		Count(InvoiceId) as TotalLineItem
		from InvoiceLine as il
		Group by InvoiceId

