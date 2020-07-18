SELECT O.OrderID, C.ContactName, O.OrderDate, SUM(UnitPrice*Quantity) AS [Total]
FROM Orders AS O, Customers AS C, [Order Details] AS OD
WHERE OD.OrderID=O.OrderID
AND  C.CustomerID=O.CustomerID
AND DATENAME(DW, OrderDate)= 'wednesday'
GROUP BY  O.OrderID, C.ContactName, O.OrderDate