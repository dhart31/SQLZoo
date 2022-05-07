SELECT SUM(OrderQty) AS 'Number Ordered'
FROM SalesLT.Product
	INNER JOIN SalesLT.SalesOrderDetail
	ON SalesLT.SalesOrderDetail.ProductID = SalesLT.Product.ProductID
	INNER JOIN SalesLT.SalesOrderHeader 
	ON SalesLT.SalesOrderDetail.SalesOrderID = SalesLT.SalesOrderHeader.SalesOrderID
	INNER JOIN SalesLT.Customer
	ON SalesLT.SalesOrderHeader.CustomerID = SalesLT.Customer.CustomerID
WHERE Name = 'Racing Socks, L' AND CompanyName = 'Riding Cycles'


