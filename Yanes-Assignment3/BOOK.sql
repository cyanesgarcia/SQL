CREATE TABLE BOOK (
BOOK_NUM INT PRIMARY KEY NOT NULL ,
BOOK_TITLE VARCHAR(75) NOT NULL,
BOOK_YEAR INT NOT NULL,
BOOK_COST INT NOT NULL,
BOOK_SUBJECT VARCHAR(15),
PAT_ID INT NOT NULL);


INSERT INTO BOOK VALUES (3146, 'Capture the Cloud', 2014, 75, 'Cloud', 2272);
INSERT INTO BOOK VALUES (3149, 'Starlight Applications', 2014, 75, 'Cloud', 2407);
INSERT INTO BOOK VALUES (3152, 'Beyond the Database Veil', 2014, 75, 'Database', 2429);
INSERT INTO BOOK VALUES (3138, 'Conceptual Programming', 2013, 60, 'Programming', 2429);

