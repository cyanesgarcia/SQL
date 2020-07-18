SELECT O.OrderID, C.ContactName, O.OrderDate, SUM(OD.UnitPrice * OD.Quantity) AS Total
FROM Orders AS O, Customers AS C, [Order Details] AS OD
WHERE C.CustomerID=O.CustomerID
AND O.OrderID=OD.OrderID
AND O.OrderDate BETWEEN '08/01/1996' AND '08/31/1996'
GROUP BY O.OrderID, C.ContactName, O.OrderDate
