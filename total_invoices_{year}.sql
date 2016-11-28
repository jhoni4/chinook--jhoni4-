select 
	( select Count(*)
		from Invoice
		where InvoiceDate like '2009%') as TotalInvoiceIn2009,
	(select Count(*)
		from Invoice
		where InvoiceDate like '2011%') as TatalInvoicesIn2011
