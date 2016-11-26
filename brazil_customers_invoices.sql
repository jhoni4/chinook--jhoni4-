Select count (Total) as "# of sales",
	sum(Total) as "Total sales",
	BillingCountry
from Invoice
group by BillingCountry
Order by "Total sales" desc
limit 5