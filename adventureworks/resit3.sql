WITH Names_Addresses AS (
	SELECT 
		CompanyName, 
		Address.AddressID,
		AddressLine1,
		AddressLine2,
		City,
		StateProvince,
		CountryRegion,
		PostalCode
	FROM SalesLT.Customer
	INNER JOIN SalesLT.CustomerAddress ON SalesLT.CustomerAddress.CustomerID = SalesLT.Customer.CustomerID
	INNER JOIN SalesLT.Address ON SalesLT.Address.AddressID = SalesLT.CustomerAddress.AddressID		
),
bikes AS (
SELECT *, 1 AS 'Rank'
FROM Names_Addresses
WHERE LOWER(CompanyName) LIKE '%bikes%'
),
cycles AS (
SELECT *, 2 AS 'Rank'
FROM Names_Addresses
WHERE LOWER(CompanyName) LIKE '%cycles%'
)

SELECT *
FROM bikes 
UNION 
SELECT *
FROM Cycles
ORDER BY Rank
