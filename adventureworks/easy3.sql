SELECT COUNT(*) AS 'Number of Items'
FROM SalesLT.SalesOrderDetail
	INNER JOIN SalesLT.Product 
	ON SalesLT.SalesOrderDetail.ProductID = SalesLT.Product.ProductID
WHERE ListPrice > 1000
