SELECT C.customerId, 
	FirstName || " " || LastName as "Full Name", 
	BillingCountry,
	invoiceId,
	invoiceDate
FROM Customer AS C
JOIN Invoice AS I
	ON I. CustomerId = C.CustomerId
WHERE country = 'Brazil'
ORDER BY country asc
