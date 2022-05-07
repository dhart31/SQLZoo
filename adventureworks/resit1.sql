SELECT 
SalesLT.SalesOrderHeader.SalesOrderID,
SalesLT.Customer.CompanyName	
FROM SalesLT.SalesOrderHeader
	LEFT JOIN SalesLT.Customer ON SalesLT.SalesOrderHeader.CustomerID = SalesLT.Customer.CustomerID
WHERE (CompanyName = 'Bike World') OR (CompanyName = 'Good Toys');
