SELECT
x.Ranges,
COUNT(x.Total) AS 'Number of Orders',
SUM(x.Total) AS 'Total Value'
FROM
	(SELECT
	CASE 
		WHEN OrderQty*UnitPrice BETWEEN 0 AND 99 THEN '0 to 99'
		WHEN OrderQty*UnitPrice BETWEEN 100 AND 999 THEN '100 to 999'
		WHEN OrderQty*UnitPrice BETWEEN 1000 AND 9999 THEN '1000 to 9999'
		WHEN OrderQty*UnitPrice > 10000 THEN ' > 10000'
		ELSE 'None'
	END AS 'Ranges',
	OrderQty*UnitPrice As 'Total'
	FROM SalesLT.SalesOrderDetail) AS x

GROUP BY x.Ranges;
