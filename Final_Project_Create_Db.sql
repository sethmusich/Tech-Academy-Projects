CREATE DATABASE final_project;
USE final_project;
GO


CREATE TABLE tbl_publisher (
	PublisherName VARCHAR(50) PRIMARY KEY NOT NULL,
	PrimaryAddress  VARCHAR(50) NOT NULL,
	PhoneNumber VARCHAR(10) NOT NULL
);

CREATE TABLE tbl_book (
	BookId int PRIMARY KEY NOT NULL, 
	Title VARCHAR(100) NOT NULL, 
	PublisherName VARCHAR(50) FOREIGN KEY REFERENCES tbl_publisher(PublisherName) NOT NULL 
);

CREATE TABLE tbl_book_authors (
	BookId int FOREIGN KEY REFERENCES tbl_book(BookID) NOT NULL, 
	AuthorName VARCHAR(70) NOT NULL) 
;

CREATE TABLE tbl_borrower (
	CardNo INT PRIMARY KEY NOT NULL,
	Name VARCHAR (50) NOT NULL,
	PrimaryAddress VARCHAR (50) NOT NULL,
	PhoneNumber BIGINT NOT NULL
);

CREATE TABLE tbl_library_branch (
	BranchId Int PRIMARY KEY NOT NULL,
	BranchName VARCHAR (50) NOT NULL,
	PrimaryAddress VARCHAR (50) NOT NULL
);

CREATE TABLE tbl_book_loans (
	BookId int FOREIGN KEY REFERENCES tbl_book(BookId) NOT NULL,
	BranchId int FOREIGN KEY REFERENCES tbl_library_branch(BranchId) NOT NULL,
	CardNo int FOREIGN KEY REFERENCES tbl_borrower(CardNo) NOT NULL,
	DateOut DATE NOT NULL,
	DueDate DATE NOT NULL,
);

CREATE TABLE tbl_book_copies (
	BookId int FOREIGN KEY REFERENCES tbl_book(BookId) NOT NULL,
	BranchId int FOREIGN KEY REFERENCES tbl_library_branch(BranchId) NOT NULL,
	NumberOfCopies INT NOT NULL,
);



INSERT INTO tbl_publisher (PublisherName, PrimaryAddress, PhoneNumber)
	VALUES
	('Pub1','123 6th St. Melbourne, FL 32904','1112229999'),
	('Pub2','70 Bowman St. South Windsor, CT 06074','2223330000'),
	('Pub3','44 Shirley Ave. West Chicago, IL 60185s','5550005555'),
	('Pub4','71 Pilgrim Avenue Chevy Chase, MD 20815','2224446666'),
	('Pub5','4 Goldfield Rd. Honolulu, HI 96815','3336661111'),
	('Pub6','7455 S. Arlington Dr. Elizabethtown, PA 17022n','4447772222'),
	('Pub7','514 S. Magnolia St. Orlando, FL 32806','1110006666'),
	('Pub8','4 Tarkiln Hill St. Quincy, MA 02169','4445556666'),
	('Pub9','36 Peninsula Lane Mount Airy, MD 21771','1110002222'),
	('Pub10','459 Penn Street Wayne, NJ 07470','8889994444'),
	('Pub11','8459 Wood St. Warwick, RI 02886','7778884444'),
	('Pub12','546 Shore Street Lombard, IL 60148','2224446666'),
	('Pub13','532 Court Street Minot, ND 58701','1113338888'),
	('Pub14','880 Prince Lane Brentwood, NY 11717','7773339999'),
	('Pub15','621 NE. Pilgrim Avenue Winona, MN 55987','2221119999'),
	('Pub16','8798C Kingston St. Romeoville, IL 60446','9991113333'),
	('Pub17','20 St Margarets St. Apt 59 Desoto, TX 75115','7778881111'),
	('Pub18','600 West Sheffield Lane North Bergen, NJ 07047','3331119999'),
	('Pub19','8541 Valley View St. West Hempstead, NY 11552','8881110101'),
	('Pub20','3331 Valley View St. West Hempstead, NY 11552','2220002222')
;

INSERT INTO tbl_book(BookId, Title, PublisherName)
	VALUES
	( 1,'The Lost Tribe','Pub1'),
	( 2,'The Green Abyss','Pub2'),
	( 3,'Moon of Secrets','Pub3'),
	( 4,'The Hearts Gate','Pub4'),
	( 5,'The Lover of the Spirit','Pub5'),
	( 6,'Prophecy in the Man','Pub6'),
	( 7,'Forgotten Savior','Pub7'),
	( 8,'The Smooth Gift','Pub8'),
	( 9,'Gate of Touch','Pub9'),
	( 10,'The Thoughts Return','Pub10'),
	( 11,'The Crying of the Willow','Pub11'),
	( 12,'Servant in the Wave','Pub12'),
	( 13,'Burning Healer','Pub13'),
	( 14,'The Luscious Swords','Pub14'),
	( 15,'Person of Force','Pub15'),
	( 16,'The Silences Fairy','Pub16'),
	( 17,'Forgotten Gift','Pub17'),
	( 18,'Ice in the Ice','Pub18'),
	( 19,'Wife of Stars','Pub19'),
	( 20,'The Pleasures Healer','Pub20')
;

INSERT INTO tbl_book_authors (BookId, AuthorName)
	VALUES
	(1,'Chelsea Walsh'),
	(2,'Nadine Cobb'),
	(3,'Benjamin Gordon'),
	(4,'Erica Dennis'),
	(5,'Jackie Harris'),
	(6,'Shawn Webster'),
	(7,'Krista Adams'),
	(8,'Don Ray'),
	(9,'Ebony Bryan'),
	(10,'Jaime Kelley'),
	(11,'William Hayes'),
	(12,'Franklin Clayton'),
	(13,'Doyle Peterson'),
	(14,'Celia Beck'),
	(15,'Heather Cook'),
	(16,'Cora Riley'),
	(17,'Levi Williams'),
	(18,'John Williams'),
	(19,'George Warren'),
	(20,'Stephen King')
;

INSERT INTO tbl_borrower (CardNo,Name,PrimaryAddress,PhoneNumber)
	VALUES
	(121,'Gregory J Luton','3104 Doctors Drive',3103413870),
	(323,'Jonathan M Stamey','331 Arbor Court',3073353844),
	(444,'Ruth T Lee','2744 Science Center Drive',2086028522),
	(313,'Julianne F Franck','1198 Old Dear Lane',6147574818),
	(999,'Blanca G Pabst','3679 Collins Avenue',8458007525),
	(111,'Brian C Sullivan','23 Dane Street',5092654891),
	(331,'Luis S Powell','1569 Metz Lane',8574983570),
	(222,'Mavis R Knop','1344 Washington Avenue',6019410703)
;

INSERT INTO tbl_library_branch(BranchId,BranchName,PrimaryAddress)
	VALUES
	(1,'Sharpstown','4 Academy St'),
	(2,'West','8 Pine St.'),
	(3,'East','5 Oak St.'),
	(4,'Central','2 Maine St.')
;

INSERT INTO tbl_book_loans (BookId, BranchId, CardNo, DateOut, DueDate)
	VALUES
	(1,1,121,'2017-06-19','2017-06-23'),
	(2,1,323,'2017-06-26','2017-07-06'),
	(3,1,444,'2017-07-07','2017-07-11'),
	(4,1,313,'2017-08-31','2017-09-12'),
	(5,1,999,'2017-12-18','2017-12-28'),
	(6,1,111,'2017-07-21','2017-08-08'),
	(7,1,999,'2017-08-09','2017-08-14'),
	(8,1,222,'2017-08-21','2017-08-28'),
	(9,1,999,'2017-12-07','2017-12-28'),
	(10,1,111,'2017-12-07','2017-12-28'),
	(11,1,999,'2017-07-28','2017-08-21'),
	(12,1,111,'2017-08-23','2017-08-30'),
	(13,1,121,'2017-09-13','2017-09-28'),
	(14,1,222,'2017-11-01','2017-11-27'),
	(15,1,111,'2017-06-14','2017-06-29'),
	(16,1,313,'2017-07-12','2017-08-14'),
	(17,1,444,'2017-09-06','2017-09-11'),
	(18,1,121,'2017-10-02','2017-10-18'),
	(19,1,331,'2017-10-30','2017-11-03'),
	(20,1,323,'2017-07-14','2017-08-08'),
	(1,2,111,'2017-09-06','2017-09-08'),
	(2,2,111,'2017-10-17','2017-11-03'),
	(3,2,111,'2017-12-13','2017-12-20'),
	(4,2,111,'2017-06-16','2017-06-16'),
	(5,2,444,'2017-07-20','2017-08-30'),
	(6,2,111,'2017-09-07','2017-09-11'),
	(7,2,111,'2017-10-11','2017-10-17'),
	(8,2,121,'2017-12-05','2017-12-07'),
	(9,2,222,'2017-06-29','2017-07-05'),
	(10,2,313,'2017-07-07','2017-06-16'),
	(11,2,323,'2017-07-28','2017-10-26'),
	(12,2,331,'2017-11-22','2017-11-28'),
	(13,2,444,'2017-11-30','2017-12-05'),
	(14,2,999,'2017-06-16','2017-07-19'),
	(15,2,111,'2017-07-20','2017-07-24'),
	(16,2,121,'2017-07-31','2017-09-05'),
	(17,2,222,'2017-10-16','2017-10-25'),
	(18,2,313,'2017-11-01','2017-12-21'),
	(19,2,323,'2017-07-20','2017-09-14'),
	(20,2,331,'2017-09-27','2017-10-25'),
	(1,3,111,'2017-10-27','2017-10-30'),
	(2,3,999,'2017-12-06','2017-12-07'),
	(3,3,111,'2017-12-13','2017-12-15'),
	(4,3,121,'2017-06-19','2017-07-07'),
	(5,3,222,'2017-07-11','2017-08-01'),
	(6,3,313,'2017-08-07','2017-09-14'),
	(7,3,323,'2017-09-15','2017-09-27'),
	(8,3,331,'2017-11-06','2017-11-15'),
	(9,3,444,'2017-06-29','2017-07-26'),
	(10,3,999,'2017-09-11','2017-09-18'),
	(11,3,323,'2017-07-28','2017-10-26'),
	(12,3,331,'2017-11-22','2017-11-28'),
	(13,3,444,'2017-11-30','2017-12-05'),
	(14,3,999,'2017-06-16','2017-07-19'),
	(15,3,111,'2017-07-20','2017-07-24'),
	(16,3,121,'2017-07-31','2017-09-05'),
	(17,3,222,'2017-10-16','2017-10-25'),
	(18,3,313,'2017-11-01','2017-12-21'),
	(19,3,323,'2017-07-20','2017-09-14'),
	(20,3,331,'2017-09-27','2017-10-25'),
	(1,4,111,'2017-10-27','2017-10-30'),
	(2,4,999,'2017-12-06','2017-12-07'),
	(3,4,111,'2017-12-13','2017-12-15'),
	(4,4,121,'2017-06-19','2017-07-07'),
	(5,4,222,'2017-07-11','2017-08-01'),
	(6,4,313,'2017-08-07','2017-09-14'),
	(7,4,323,'2017-09-15','2017-09-27'),
	(8,4,331,'2017-11-06','2017-11-15'),
	(9,4,444,'2017-06-29','2017-07-26'),
	(10,4,999,'2017-09-11','2017-09-18'),
	(11,4,323,'2017-07-28','2017-10-26'),
	(12,4,331,'2017-11-22','2017-11-28'),
	(13,4,444,'2017-11-30','2017-12-05'),
	(14,4,999,'2017-06-16','2017-07-19'),
	(15,4,111,'2017-07-20','2017-07-24'),
	(16,4,121,'2017-07-31','2017-09-05'),
	(17,4,222,'2017-10-16','2017-10-25'),
	(18,4,313,'2017-11-01','2017-12-21'),
	(19,4,323,'2017-07-20','2017-09-14'),
	(20,4,331,'2017-09-27','2017-10-25')
;

INSERT INTO tbl_book_copies (BookId, BranchId, NumberOfCopies)
	VALUES
	(1,1,7),
	(2,1,6),
	(3,1,9),
	(4,1,2),
	(5,1,6),
	(6,1,4),
	(7,1,6),
	(8,1,14),
	(9,1,15),
	(10,1,2),
	(11,1,6),
	(12,1,8),
	(13,1,11),
	(14,1,14),
	(15,1,17),
	(16,1,5),
	(17,1,4),
	(18,1,9),
	(19,1,20),
	(20,1,8),
	(1,2,7),
	(2,2,6),
	(3,2,9),
	(4,2,2),
	(5,2,6),
	(6,2,4),
	(7,2,6),
	(8,2,14),
	(9,2,15),
	(10,2,2),
	(11,2,6),
	(12,2,8),
	(13,2,11),
	(14,2,14),
	(15,2,17),
	(16,2,53),
	(17,2,14),
	(18,2,19),
	(19,2,21),
	(20,2,8),
	(1,3,3),
	(2,3,1),
	(3,3,88),
	(4,3,1),
	(5,3,63),
	(6,3,5),
	(7,3,6),
	(8,3,14),
	(9,3,15),
	(10,3,2),
	(11,3,6),
	(12,3,8),
	(13,3,11),
	(14,3,14),
	(15,3,17),
	(16,3,5),
	(17,3,4),
	(18,3,9),
	(19,3,20),
	(20,3,8),
	(1,4,7),
	(2,4,6),
	(3,4,9),
	(4,4,2),
	(5,4,6),
	(6,4,4),
	(7,4,6),
	(8,4,1),
	(9,4,15),
	(10,4,4),
	(11,4,3),
	(12,4,3),
	(13,4,11),
	(14,4,14),
	(15,4,17),
	(16,4,5),
	(17,4,4),
	(18,4,9),
	(19,4,20),
	(20,4,8)
;



--Part. 2: Query--


USE final_project;
GO

--1.--


Create Procedure LostTribe 
AS

SELECT tbl_book_copies.NumberOfCopies, tbl_book_copies.BookId, tbl_book_copies.BranchId, tbl_library_branch.BranchId, tbl_library_branch.BranchName, tbl_book.Title, tbl_book.BookId
FROM tbl_book_copies
INNER JOIN tbl_library_branch ON tbl_book_copies.BranchId = tbl_library_branch.BranchId
INNER JOIN tbl_book ON tbl_book.BookId = tbl_book_copies.BookId
WHERE BranchName = 'Sharpstown' and title ='The Lost Tribe'

GO

Exec LostTribe

--ANSWER = 7--

--2.--


Create Procedure AllBranches
AS

SELECT tbl_book_copies.NumberOfCopies, tbl_book_copies.BookId, tbl_book_copies.BranchId, tbl_library_branch.BranchId, tbl_library_branch.BranchName, tbl_book.Title, tbl_book.BookId
FROM tbl_book_copies
INNER JOIN tbl_library_branch ON tbl_book_copies.BranchId = tbl_library_branch.BranchId
INNER JOIN tbl_book ON tbl_book.BookId = tbl_book_copies.BookId
WHERE title ='The Lost Tribe'

GO

EXEC AllBranches

--ANSWER: Sharpstown = 7, West = 7, East = 3, Central = 7--

--3.--  

CREATE PROCEDURE AllBorrowers
AS



SELECT tbl_borrower.CardNo, tbl_borrower.Name, tbl_book_loans.DueDate, tbl_book_loans.CardNo
FROM tbl_book_loans
INNER JOIN tbl_borrower ON tbl_book_loans.CardNo = tbl_borrower.CardNo
WHERE tbl_Book_loans.DueDate < '2017-06-16'




GO

EXEC AllBorrowers

--I made a line of code that pulls up all the name's of people that have books that are due later than today. Since it includes all listed borrowers, than there are no borrowers that don't have a book out because they all have a due date listed in the future. 


--4.--

CREATE PROCEDURE AllSharpstown
AS

SELECT tbl_book_loans.DueDate, tbl_book_loans.BranchId, tbl_book_loans.BookId, tbl_book_loans.CardNo, tbl_borrower.Name, tbl_borrower.PrimaryAddress, tbl_borrower.CardNo, tbl_book.Title, tbl_book.BookId, tbl_library_branch.BranchId
FROM tbl_book_loans
INNER JOIN tbl_borrower ON tbl_borrower.CardNo = tbl_book_loans.CardNo
INNER JOIN tbl_book ON tbl_book.BookId = tbl_book_loans.BookId
INNER JOIN tbl_library_branch ON tbl_library_branch.BranchId = tbl_book_loans.BranchId 
WHERE tbl_library_branch.BranchId=1 AND  tbl_Book_loans.DueDate = '2017-06-16'

GO 

EXEC AllSharpstown

--No books at BranchId=1 (Sharpstown) that are due today.--

--5.--

CREATE PROCEDURE AllLoans
AS

 SELECT  tbl_library_branch.BranchName,COUNT(tbl_book_loans.CardNo) AS bookDue
FROM tbl_library_branch
INNER JOIN tbl_book_loans ON tbl_book_loans.BranchId = tbl_library_branch.BranchId
GROUP BY tbl_library_branch.BranchName;

GO

EXEC AllLoans

--6.--

CREATE PROCEDURE FiveBooksLoaned
AS

SELECT tbl_book_loans.CardNo, tbl_borrower.CardNo,tbl_borrower.Name, tbl_borrower.PrimaryAddress
FROM tbl_book_loans
INNER JOIN tbl_borrower ON tbl_book_loans.CardNo = tbl_borrower.CardNo
Order by tbl_borrower.CardNo 



SELECT tbl_borrower.Name, tbl_borrower.PrimaryAddress, COUNT(tbl_book_loans.CardNo) AS BooksOut 
FROM tbl_book_loans
INNER JOIN tbl_borrower ON tbl_book_loans.CardNo = tbl_borrower.CardNo
GROUP BY tbl_borrower.Name, tbl_borrower.PrimaryAddress
ORDER BY BooksOut Desc


GO

EXEC FiveBooksLoaned




--7.--


CREATE Procedure StephenKing
AS

SELECT tbl_book.BookId, tbl_book.Title, tbl_book_authors.BookId, tbl_book_authors.AuthorName, tbl_book_loans.BookId, tbl_book_loans.BranchId
FROM tbl_book
INNER JOIN tbl_book_authors ON tbl_book_authors.BookId = tbl_book.BookId
INNER JOIN tbl_book_loans ON tbl_book_loans.BookId = tbl_book.BookId

WHERE tbl_book_authors.AuthorName='Stephen King' and tbl_book_loans.BranchId=4

GO
EXEC StephenKing


--2 copies of Stephen book 'the Pleasures Healer' at Central (whose BranchId = 4)--	
