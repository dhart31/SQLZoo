SELECT SUM(SalesOrderDetail.OrderQty)
FROM SalesLT.SalesOrderDetail
	INNER JOIN SalesLT.SalesOrderHeader ON SalesLT.SalesOrderDetail.SalesOrderID = SalesLT.SalesOrderHeader.SalesOrderID
	INNER JOIN SalesLT.Address ON SalesLT.SalesOrderHeader.ShipToAddressID = SalesLT.Address.AddressID
	INNER JOIN SalesLT.Product ON SalesLT.Product.ProductID = SalesLT.SalesOrderDetail.ProductID
	INNER JOIN SalesLT.ProductCategory ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID
WHERE Address.City = 'London' AND ProductCategory.Name = 'Cranksets'