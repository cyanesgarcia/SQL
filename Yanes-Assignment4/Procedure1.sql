CREATE PROCEDURE P1 @BS VARCHAR(15)
AS
IF EXISTS(SELECT*FROM BOOK WHERE Book_Subject= @BS)
BEGIN
	SELECT *
	FROM BOOK
	WHERE Book_Subject= @BS
END
ELSE
	PRINT 'There are no books on this subject'
	