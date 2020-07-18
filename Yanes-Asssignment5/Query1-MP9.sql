SELECT CustomerID, LEFT(CompanyName,10) AS [First Ten Letters], Country, City, RIGHT(Phone, 4) AS [Last Four Digits]
FROM Customers 