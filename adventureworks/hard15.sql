SELECT 
City, 
ProductCategory.Name AS 'Product Category Name',
SUM(SalesOrderDetail.OrderQty*SalesOrderDetail.UnitPrice) AS 'Total Value'
FROM
	SalesLT.ProductCategory
	INNER JOIN SalesLT.Product ON SalesLT.ProductCategory.ProductCategoryID = SalesLT.Product.ProductCategoryID
	INNER JOIN SalesLT.SalesOrderDetail ON SalesLT.SalesOrderDetail.ProductID = SalesLT.Product.ProductID
	INNER JOIN SalesLT.SalesOrderHeader ON SalesLT.SalesOrderHeader.SalesOrderID = SalesLT.SalesOrderDetail.SalesOrderID
	INNER JOIN SalesLT.Address ON SalesLT.Address.AddressID = SalesLT.SalesOrderHeader.ShipToAddressID
WHERE City IN 
	(
		SELECT t.City
		FROM
		(
			SELECT TOP 3 City, SUM(SalesLT.SalesOrderHeader.SubTotal) AS 'CitySubtotal'
			FROM 
				SalesLT.Address
				INNER JOIN SalesLT.SalesOrderHeader ON SalesLT.Address.AddressID = SalesLT.SalesOrderHeader.ShipToAddressID
				INNER JOIN SalesLT.SalesOrderDetail ON SalesLT.SalesOrderDetail.SalesOrderID = SalesLT.SalesOrderDetail.SalesOrderID
			GROUP BY SalesLT.Address.City
			ORDER BY CitySubtotal DESC
		) AS t
	)
GROUP BY City, ProductCategory.Name
ORDER BY City, [Total Value] DESC;
