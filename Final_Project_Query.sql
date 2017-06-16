
USE final_project;
GO

--1.--

SELECT tbl_book_copies.NumberOfCopies, tbl_book_copies.BookId, tbl_book_copies.BranchId, tbl_library_branch.BranchId, tbl_library_branch.BranchName, tbl_book.Title, tbl_book.BookId
FROM tbl_book_copies
INNER JOIN tbl_library_branch ON tbl_book_copies.BranchId = tbl_library_branch.BranchId
INNER JOIN tbl_book ON tbl_book.BookId = tbl_book_copies.BookId
WHERE BranchName = 'Sharpstown' and title ='The Lost Tribe'
;

--ANSWER = 7--

--2.--

SELECT tbl_book_copies.NumberOfCopies, tbl_book_copies.BookId, tbl_book_copies.BranchId, tbl_library_branch.BranchId, tbl_library_branch.BranchName, tbl_book.Title, tbl_book.BookId
FROM tbl_book_copies
INNER JOIN tbl_library_branch ON tbl_book_copies.BranchId = tbl_library_branch.BranchId
INNER JOIN tbl_book ON tbl_book.BookId = tbl_book_copies.BookId
WHERE title ='The Lost Tribe';

--ANSWER: Sharpstown = 7, West = 7, East = 3, Central = 7--

--3.--  

SELECT tbl_borrower.CardNo, tbl_borrower.Name, tbl_book_loans.CardNo,tbl_book_loans.DueDate
FROM tbl_book_loans
INNER JOIN tbl_borrower ON tbl_book_loans.CardNo = tbl_borrower.CardNo
WHERE tbl_Book_loans.DueDate > '2017-06-16'
Order by tbl_borrower.Name

--I made a line of code that pulls up all the name's of people that have books that are due later than today. Since it includes all listed borrowers, than there are no borrowers that don't have a book out because they all have a due date listed in the future. 


--4.--


SELECT tbl_book_loans.DueDate, tbl_book_loans.BranchId, tbl_book_loans.BookId, tbl_book_loans.CardNo, tbl_borrower.Name, tbl_borrower.PrimaryAddress, tbl_borrower.CardNo, tbl_book.Title, tbl_book.BookId, tbl_library_branch.BranchId
FROM tbl_book_loans
INNER JOIN tbl_borrower ON tbl_borrower.CardNo = tbl_book_loans.CardNo
INNER JOIN tbl_book ON tbl_book.BookId = tbl_book_loans.BookId
INNER JOIN tbl_library_branch ON tbl_library_branch.BranchId = tbl_book_loans.BranchId 
WHERE tbl_library_branch.BranchId=1 AND  tbl_Book_loans.DueDate = '2017-06-16'

--No books at BranchId=1 (Sharpstown) that are due today.--

--5.--

SELECT tbl_library_branch.BranchId, tbl_library_branch.BranchName, tbl_book_loans.BranchId, tbl_book_loans.CardNo
FROM tbl_library_branch
INNER JOIN tbl_book_loans ON tbl_book_loans.BranchId = tbl_library_branch.BranchId
WHERE BranchName='west' 


SELECT tbl_library_branch.BranchId, tbl_library_branch.BranchName, tbl_book_loans.BranchId, tbl_book_loans.CardNo
FROM tbl_library_branch
INNER JOIN tbl_book_loans ON tbl_book_loans.BranchId = tbl_library_branch.BranchId
WHERE BranchName='central' 

SELECT tbl_library_branch.BranchId, tbl_library_branch.BranchName, tbl_book_loans.BranchId, tbl_book_loans.CardNo
FROM tbl_library_branch
INNER JOIN tbl_book_loans ON tbl_book_loans.BranchId = tbl_library_branch.BranchId
WHERE BranchName='sharpstown'

SELECT tbl_library_branch.BranchId, tbl_library_branch.BranchName, tbl_book_loans.BranchId, tbl_book_loans.CardNo
FROM tbl_library_branch
INNER JOIN tbl_book_loans ON tbl_book_loans.BranchId = tbl_library_branch.BranchId
WHERE BranchName='east'  
;

--6.--


SELECT tbl_book_loans.CardNo, tbl_borrower.CardNo,tbl_borrower.Name, tbl_borrower.PrimaryAddress
FROM tbl_book_loans
INNER JOIN tbl_borrower ON tbl_book_loans.CardNo = tbl_borrower.CardNo
Order by tbl_borrower.CardNo 




--7.--

SELECT tbl_book.BookId, tbl_book.Title, tbl_book_authors.BookId, tbl_book_authors.AuthorName, tbl_book_loans.BookId, tbl_book_loans.BranchId
FROM tbl_book
INNER JOIN tbl_book_authors ON tbl_book_authors.BookId = tbl_book.BookId
INNER JOIN tbl_book_loans ON tbl_book_loans.BookId = tbl_book.BookId

WHERE tbl_book_authors.AuthorName='Stephen King' and tbl_book_loans.BranchId=4

--2 copies of Stephen book 'the Pleasures Healer' at Central (whose BranchId = 4)--
