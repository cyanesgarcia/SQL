SELECT P.ProductID, P.ProductName, MIN(O.OrderDate) AS [First date] 
FROM Products AS P, Orders AS O, [Order Details] AS OD
WHERE P.ProductID= OD.ProductID
AND OD.OrderID=O.OrderID
AND P.UnitsInStock >0
GROUP BY  P.ProductID, P.ProductName, P.UnitsInStock