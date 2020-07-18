SELECT C.CustomerID, C.CompanyName, C.City, COUNT(O.OrderID) AS [Number of Orders], SUM(UnitPrice * Quantity) AS Total
FROM Customers AS C, Orders AS O, [Order Details] AS OD
WHERE C.CustomerID= O.CustomerID
AND O.OrderID=OD.OrderID
GROUP BY C.CustomerID, C.CompanyName, C.City
HAVING SUM(UnitPrice * Quantity) >=500.00
ORDER BY C.City, C.CustomerID