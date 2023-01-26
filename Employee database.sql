CREATE TABLE Employee
(Emp_ID char,
Emp_Name varchar(50),
DoB DATE,
Department varchar(50),
Designation varchar(50),
DoJ date,
Salary int
);

ALTER TABLE Employee
ALTER COLUMN Emp_ID char(5); --change column data type

--insert values into the database
INSERT INTO Employee Values
('F110', 'Sam', '15-JUN-1970','Bio-Technology','Professor','12-APR-2001',45000),
('F111','Kumar','25-MAY-1980','Mechanical','Asst.Prof','02-MAY-2006',30000),
('F115','Raguvaran','10-AUG-1982','CSE','Asst.Prof','05-MAY-2007',27000),
('F114','Jennifer','10-SEP-1975','CSE','Asst.Prof','03-JUN-2004',35000),
('F117','Ismail','15-MAY-1979','IT','Asst.Prof','10-MAY-2005',33000);

Select *
From [SQL Practice].[dbo].[Employee]

--1. Display all the records from table Employee
Select *
From [SQL Practice].[dbo].[Employee];
--use this method when you are in another database, 1st bracket is the original database where your table is located, 2nd bracket is the function that allows extraction of the desired table, 3rd bracket is the table name

Select *
From Employee;
--use this method when you in the database where your table will be located

--2. Find all employees who are working for CSE department
Select *
From Employee
Where Department = 'CSE';
--Use the where statement with logical expressions to extract desired data e.g <|>|=

--3. Get the details about the employees who have joined after '10-JUN-2005'
Select *
From Employee
Where DoJ > '2005-06-10';

--4. Find all employees who earn more than 30000
Select *
From Employee
Where Salary > 30000;

--5. Get the details of employees who are not 'Professor'
Select *
From Employee
Where Designation != 'Professor';
--the <> sign can also be used to indicate not equal

--6. Find the name, date of birth and designation of all the employee who work for 'IT'department
Select Emp_Name,DoB,Department, Designation
From Employee
Where Department = 'IT';

--7. Find all the departments which are offering salary above 25000
Select Department
From Employee
Where Salary > 25000;

--8. Get the DoB of employee named 'Kumar'
Select DoB
From Employee
Where Emp_Name = 'Kumar';

--9. Find the names and departments of employees who earn the salary in the range 20000 to 40000
Select Emp_Name,Department,Salary
From Employee
Where Salary BETWEEN 20000 AND 40000;
--use 'BETWEEN' and 'AND' whether caps lock or small caps to determine the range of a numerical value

--10. Find the employee details of any employee who work for 'CSE' and earn more than 30000
Select *
From Employee
Where Department = 'CSE' AND Salary > 30000;
--use AND if you want to extract data which requires two expressions in different fields
