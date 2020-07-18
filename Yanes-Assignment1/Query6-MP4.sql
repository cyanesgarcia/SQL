SELECT O.OrderID, Cu.ContactName, O.ShipCountry, E.FirstName, S.CompanyName
FROM Orders AS O, Customers AS Cu, Employees AS E, Suppliers AS S, [Order Details] AS OD, Products AS P
WHERE S.SupplierID= P.SupplierID
AND P.ProductID= OD.ProductID
AND OD.OrderID= O.OrderID
AND  O.EmployeeID=E.EmployeeID
AND O.CustomerID = Cu.CustomerID
AND S.CompanyName IN ('Ma Maison', 'Bigfoot Breweries');