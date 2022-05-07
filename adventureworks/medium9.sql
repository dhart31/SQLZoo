SELECT Customer.CompanyName, SUM(SalesOrderDetail.OrderQty * Product.Weight), SubTotal
FROM SalesLT.Customer
	INNER JOIN SalesLT.SalesOrderHeader ON SalesLT.SalesOrderHeader.CustomerID = SalesLT.Customer.CustomerID
	INNER JOIN SalesLT.SalesOrderDetail ON SalesLT.SalesOrderDetail.SalesOrderID = SalesLT.SalesOrderHeader.SalesOrderID
	INNER JOIN SalesLT.Product ON SalesLT.SalesOrderDetail.ProductID = SalesLT.Product.ProductID
GROUP BY SalesOrderHeader.SubTotal, Customer.CompanyName
ORDER BY SalesOrderHeader.SubTotal