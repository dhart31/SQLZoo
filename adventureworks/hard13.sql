SELECT 
Product.Name,
SUM(SalesOrderDetail.OrderQty*SalesOrderDetail.UnitPrice) AS 'Total Value'
FROM SalesLT.SalesOrderDetail
	INNER JOIN SalesLT.Product ON SalesLT.SalesOrderDetail.ProductID = SalesLT.Product.ProductID
GROUP BY SalesLT.Product.Name
ORDER BY 'Total Value' DESC