SELECT CA.CategoryID, CA.CategoryName, P.ProductID,P.ProductName,P.UnitsOnOrder,P.UnitsInStock 
FROM Categories AS CA, Products AS P
WHERE CA.CategoryID= P.CategoryID
AND P.UnitsOnOrder=0
AND P.UnitsInStock=0;