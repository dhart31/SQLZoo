SELECT CompanyName,
MAX(CASE WHEN AddressType = 'Main Office' THEN AddressLine1 ELSE '' END) AS 'Main Office',
MAX(CASE WHEN AddressType = 'Shipping' THEN AddressLine1 ELSE '' END) AS 'Shipping' 
FROM SalesLT.Address
	INNER JOIN SalesLT.CustomerAddress ON SalesLT.Address.AddressID = SalesLT.CustomerAddress.AddressID
	INNER JOIN SalesLT.Customer ON SalesLT.Customer.CustomerID = SalesLT.CustomerAddress.CustomerID
WHERE City = 'Dallas'
GROUP BY SalesLT.Customer.CompanyName