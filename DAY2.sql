USE EMPLOYEE_DB;

1.Write a query to display the id, entire street address and the first word of the street address of all 
entries in the location table. Give an alias to the first word as 'first_word'. Display the records sorted 
in ascending order based on first_word.



SELECT * FROM LOCATION; 
SELECT ID,STREET_ADDRESS,SUBSTRING(STREET_ADDRESS,1,1) AS FIRST_WORD FROM LOCATION 
ORDER BY FIRST_WORD ASC;



2.Write a query to display the names of all states belonging to the country Canada. Display the 
records sorted in ascending order based on state name. 


SELECT * FROM LOCATION; 
SELECT STATE FROM LOCATION WHERE COUNTRY_ID ='CA' ORDER BY STATE ASC;


9.Write a query to display the names of all countries belonging to region Europe. Display the records 
sorted in ascending order based on country name. 


SELECT* FROM Countries; 
SELECT * FROM Region; 
SELECT NAME FROM Countries WHERE REGION_ID=1 ORDER BY NAME; 



10.Write a query to display the id,entire street address and the last word of the street address of all 
entries in the location table. Give an alias to the last word as 'last_word'. Display the records sorted 
in ascending order based on last_word. 



select * from location; 
SELECT ID,STREET_ADDRESS,REVERSE(SUBSTRING(REVERSE(STREET_ADDRESS),1,CHARINDEX(' 
',STREET_ADDRESS))) FROM LOCATION; 


11.Write a query to display the first name and salary for all employees. Format the salary to be 10 
characters long, left-padded with the $ symbol. Display the records sorted in ascending order based 
on first name. 


SELECT FIRST_NAME,salary FROM employee; 
SELECT FIRST_NAME,RIGHT(REPLICATE('$$$$$',10)+LEFT(SALARY,5),10) AS SALARY FROM 
employee ORDER BY FIRST_NAME; 


13.Write a query to display the first name and the last 5 characters of phone numbers of all 
employees. Display the records sorted in ascending order based on first name. Give an alias to the 
last 5 characters of phone number as phone_number. 


SELECT FIRST_NAME,SUBSTRING(PHONE_NUMBER,6,10) AS PHONE_NUMBER FROM employee 
ORDER BY FIRST_NAME; 



14.Write a query to display the first name of the managers of HR department. Display the records 
sorted in ascending order based on manager name. 



select * from department; 
select * from manager; 
select * from employee; 
select first_name from employee where department_id=2 and id in(4,19) order by first_name ;