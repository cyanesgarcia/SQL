SELECT C.CustomerID, C.CompanyName, O.OrderID, O.OrderDate, O.ShippedDate, DATEDIFF(D,O.OrderDate, O.ShippedDate) AS [Number of Days]
FROM Customers AS C, Orders AS O
WHERE O.CustomerID=C.CustomerID
AND DATEDIFF(D,O.OrderDate,O.ShippedDate)>20
ORDER BY [Number of Days] DESC