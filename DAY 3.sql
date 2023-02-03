use lms_db;

--1
select member_id,member_name,city,membership_status from LMS_MEMBERS where membership_status='permanent';

--3
select member_id,member_name from LMS_MEMBERS where MEMBER_id IN(select member_id from LMS_BOOK_ISSUE where book_code = 'BL000002');

--4
select book_code,book_title,author from lms_book_details where author like 'p%';

--5
select CATEGORY,count(category) AS NO_OF_BOOKS from LMS_BOOK_DETAILS  WHERE CATEGORY='JAVA' GROUP BY CATEGORY;

--6
select CATEGORY,count(category) AS NO_OF_BOOKS from LMS_BOOK_DETAILS GROUP BY CATEGORY;

--7
SELECT COUNT(PUBLICATION) AS NO_OF_BOOKS FROM LMS_BOOK_DETAILS WHERE PUBLICATION='PRENTICE HALL';

--8
select BOOK_CODE,BOOK_TITLE from LMS_BOOK_DETAILS WHERE BOOK_CODE IN(SELECT BOOK_CODE FROM LMS_BOOK_ISSUE WHERE DATE_ISSUE='2012-04-01');

--9
SELECT MEMBER_ID,MEMBER_NAME,DATE_REGISTER,DATE_EXPIRE FROM LMS_MEMBERS WHERE DATE_EXPIRE<CAST('APR 2013' AS DATE);

--12
SELECT CONCAT(BOOK_TITLE,'_IS_WRITTEN_BY_',AUTHOR) FROM LMS_BOOK_DETAILS;
