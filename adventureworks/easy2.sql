SELECT CompanyName
FROM  SalesLT.Customer
	INNER JOIN SalesLT.CustomerAddress ON SalesLT.CustomerAddress.CustomerID = SalesLT.Customer.CustomerID
	INNER JOIN SalesLT.Address ON SalesLT.Address.AddressID = SalesLT.CustomerAddress.AddressID
WHERE
	City = 'Dallas'
	

