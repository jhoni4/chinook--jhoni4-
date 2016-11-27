SELECT Employee.FirstName || " " || Employee.LastName as "Full Name",
     Invoice. *
FROM Employee
JOIN Customer on Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice on Invoice.CustomerId = Customer.CustomerId
ORDER BY Employee.LastName
