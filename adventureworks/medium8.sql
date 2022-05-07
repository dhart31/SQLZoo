SELECT Description
FROM SalesLT.ProductDescription pd
	INNER JOIN SalesLT.ProductModelProductDescription pmpd
	ON pd.ProductDescriptionID = pmpd.ProductDescriptionID
	INNER JOIN SalesLT.ProductModel pm
	ON pmpd.ProductModelID = pm.ProductModelID
	INNER JOIN SalesLT.Product p
	ON pm.ProductModelID = p.ProductModelID
WHERE Culture = 'fr' AND ProductID = 736
