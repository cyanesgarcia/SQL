SELECT E.EmployeeID, FirstName, LastName, COUNT(O.OrderID) AS NumOrders
FROM Employees AS E, Orders AS O, Customers AS C
WHERE E.EmployeeID = O.EmployeeID
AND O.CustomerID= C.CustomerID
AND C.Country='USA'
GROUP BY E.EmployeeID, FirstName, LastName
ORDER BY NumOrders DESC