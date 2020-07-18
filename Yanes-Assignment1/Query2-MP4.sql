SELECT Cu.CustomerID, Cu.ContactName, P.CategoryID, P.UnitPrice 
FROM Customers AS Cu, Products AS P, Orders AS O, [Order Details] AS OD
WHERE Cu.CustomerID =O.CustomerID
AND O.OrderID = OD.OrderID
AND OD.ProductID= P.ProductID
AND P.CategoryID= 2
AND P.UnitPrice>= 20.00;