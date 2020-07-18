CREATE VIEW  VIEW2
AS
	SELECT B.BOOK_NUM, B.BOOK_TITLE, COUNT(C.CHECK_OUT_DATE) AS [TIMES CHECKED OUT]
	FROM BOOK AS B, CHECKOUT AS C
	WHERE  B.BOOK_NUM = C.BOOK_NUM
	GROUP BY B.BOOK_NUM, B.BOOK_TITLE