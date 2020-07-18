SELECT *
FROM Products AS P
WHERE CHARINDEX('Mix', ProductName) <>0
OR CHARINDEX('Syrup', ProductName) <>0