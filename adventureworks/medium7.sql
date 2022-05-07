SELECT Product.Name, CompanyName
FROM SalesLT.ProductModel
	INNER JOIN SalesLT.Product ON SalesLT.ProductModel.ProductModelID = SalesLT.Product.ProductModelID
	INNER JOIN SalesLT.SalesOrderDetail ON SalesLT.SalesOrderDetail.ProductID = SalesLT.Product.ProductID
	INNER JOIN SalesLT.SalesOrderHeader ON SalesLT.SalesOrderDetail.SalesOrderID = SalesLT.SalesOrderHeader.SalesOrderID
	INNER JOIN SalesLT.Customer ON SalesLT.Customer.CustomerID = SalesLT.SalesOrderHeader.CustomerID
WHERE ProductModel.Name = 'Racing Socks'