Select CountryRegion, SUM(SubTotal) AS 'Total Order Value'
FROM SalesLT.Address a
	INNER JOIN SalesLT.SalesOrderHeader soh ON a.AddressID = soh.ShipToAddressID
GROUP BY CountryRegion
ORDER BY [Total Order Value] DESC;
