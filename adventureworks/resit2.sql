Select Product.Name, OrderQty
FROM SalesLT.Customer
	INNER JOIN SalesLT.SalesOrderHeader ON SalesLT.SalesOrderHeader.CustomerID = SalesLT.Customer.CustomerID
	INNER JOIN SalesLT.SalesOrderDetail ON SalesLT.SalesOrderDetail.SalesOrderID = SalesLT.SalesOrderHeader.SalesOrderID
	INNER JOIN SalesLT.Product ON SalesLT.Product.ProductID = SalesLT.SalesOrderDetail.ProductID
WHERE CompanyName = 'Futuristic Bikes'