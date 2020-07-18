CREATE PROCEDURE P3 @AI INT 
AS
IF EXISTS(SELECT * FROM  WRITES WHERE Au_ID = @AI )
BEGIN
	SELECT B.Book_Num, B.Book_Title, B.Book_Year, B.Book_Cost, B.Book_Subject, B.Pat_ID
	FROM BOOK AS B,  WRITES AS W
	WHERE W.Book_Num = B.Book_Num
	AND W.Au_ID = @AI
END
ELSE
	PRINT 'This author ID is not valid'