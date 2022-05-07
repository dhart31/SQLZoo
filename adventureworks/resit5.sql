WITH CountryTotal AS (
	SELECT CompanyName,CountryRegion, SUM(SubTotal) AS 'SubTotal',
	    RANK() OVER (PARTITION BY CountryRegion ORDER BY  SUM(SubTotal) DESC) ranking
	FROM SalesLT.Address a
		INNER JOIN SalesLT.SalesOrderHeader soh ON a.AddressID = soh.BillToAddressID
		INNER JOIN SalesLT.Customer c ON c.CustomerID = soh.CustomerID
	GROUP BY CountryRegion, CompanyName
)
SELECT *
FROM CountryTotal
WHERE ranking = 1;