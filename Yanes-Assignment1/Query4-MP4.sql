SELECT DISTINCT P.ProductID, P.ProductName, OD.Quantity
FROM Products AS P, [Order Details] AS OD
WHERE P.ProductID = OD.ProductID
AND OD.Quantity >=1
ORDER BY P.ProductName;