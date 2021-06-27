CREATE TABLE EMPLOYEE
(
Id int primary key identity,
Name varchar(30),
Salary int,
Gender varchar(20)

)


select * from EMPLOYEE

Create index IX_EMPLOYEE_Salary
on EMPLOYEE (Salary Asc)


select * from Employee
where Salary >10000 and Salary <60000

Execute sp_Helpindex EMPLOYEE

drop index EMPLOYEE.IX_EMPLOYEE_Salary