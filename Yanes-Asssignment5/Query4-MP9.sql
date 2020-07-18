SELECT O.OrderID, C.CustomerID, C.ContactName, O.OrderDate, O.RequiredDate, O.ShippedDate
FROM Orders AS O, Customers AS C
WHERE O.CustomerID =C.CustomerID 
AND DATEDIFF(D, O.OrderDate, O.RequiredDate)<=25