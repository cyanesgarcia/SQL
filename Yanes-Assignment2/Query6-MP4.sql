SELECT  S.SupplierID, S.CompanyName, COUNT( DISTINCT P.ProductID) AS [Number of distinct products]
FROM Suppliers AS S, [Order Details] AS OD, Products AS P
WHERE S.SupplierID= P.SupplierID
AND P.ProductID= OD.ProductID
AND OD.UnitPrice>=22.00
GROUP BY S.SupplierID, S.CompanyName
ORDER BY S.SupplierID 