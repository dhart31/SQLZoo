SELECT SalesOrderHeader.SalesOrderID, SubTotal AS 'Subtotal',
SUM(UnitPrice*OrderQty) AS 'Order Quantity * Unit Price',
SUM(ListPrice*OrderQty) AS 'Order Quantity * List Price'
FROM SalesLT.SalesOrderHeader
	INNER JOIN SalesLT.SalesOrderDetail ON SalesLT.SalesOrderDetail.SalesOrderID = SalesLT.SalesOrderHeader.SalesOrderID
	INNER JOIN SalesLT.Product ON SalesLT.Product.ProductID = SalesLT.SalesOrderDetail.ProductID
GROUP BY SubTotal, SalesOrderHeader.SalesOrderID