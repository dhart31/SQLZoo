SELECT CompanyName
FROM SalesLT.Customer
	INNER JOIN SalesLT.SalesOrderHeader
	ON SalesLT.SalesOrderHeader.CustomerID = SalesLT.Customer.CustomerID
WHERE (SubTotal+TaxAmt+Freight)>100000
