 -- CREATING A DATABASE
create database pace

-- CREATING A TABLE EMPLOYEE
CREATE TABLE employee(EMPID INT,EMPNAME VARCHAR(10),DEPTID INT,SALARY INT,HIREDATE DATETIME)

-- INSERTING THE VALUES INTO EMPLOYEE TABLE
INSERT INTO employee VALUES(101,'John',1,50000,'2018-02-12'),(102,'Alice',2,60000,'2019-07-10'),(103,'Bob',1,55000,'2020-05-05'),(104,'Carol',3,45000,'2017-09-20')

-- CREATING A DEPARTMENT TABLE
CREATE TABLE DEPARTMENT(DeptId int,DeptName varchar(10))

-- INSERTING THE VALUES INTO DEPARTMENT TABLE
 INTO department VALUES(1,'HR'),(2,'IT'),(3,'SALES')

 -- DISPLAY ALL RECORDS FROM THE EMPLOYEE TABLE
 SELECT * FROM EMPLOYEE

-- Find departments having more than 1 employee.
SELECT DEPTID,COUNT() FROM EMPLOYEES GROUP BY DEPTID HAVING COUNT() > 1;

-- Display employees whose names start with 'A'.
select * from employee where empname like 'a%'

-- Find employees whose salary is between 45,000 and 60,000.
select * from employee where salary between 45000 and 60000

-- Show the department name of each employee (JOIN query).
select employee,depname

-- Find the number of employees in each department.
select deptname,count(empname) from employee  E join DEPARTMENT D on E.deptid=d.deptid group by dEPTNAME 

-- Display all employees, including those without a department (LEFT JOIN).
select * from employee e left join department d on e.deptid=d.deptid


