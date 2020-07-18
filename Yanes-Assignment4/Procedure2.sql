CREATE PROCEDURE P2 @ID INT

AS
IF EXISTS(SELECT * FROM CHECKOUT WHERE Pat_ID = @ID )
BEGIN
	IF EXISTS(SELECT * FROM CHECKOUT WHERE Pat_ID = @ID HAVING COUNT(Check_Out_Date)> 0)
	BEGIN
		SELECT B.Book_Num, B.Book_Title, C.Check_Due_Date
		FROM BOOK AS B, CHECKOUT AS C
		WHERE C.Pat_ID = B.Pat_ID 
		AND B.Pat_ID = @ID
	
	END
		ELSE 
		PRINT 'This patron has no books checked out'
END		
ELSE 
	PRINT 'This patron ID is not valid'

		


