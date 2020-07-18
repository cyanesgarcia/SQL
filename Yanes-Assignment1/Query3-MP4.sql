SELECT P.ProductID, P.ProductName, O.ShipCountry
FROM Products AS P, Orders AS O, [Order Details] AS OD
WHERE P.ProductID= OD.ProductID
AND OD.OrderID= O.OrderID
AND O.ShipCountry <> 'USA';