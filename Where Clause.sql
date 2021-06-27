-- for the selection of all rows and columns from table Employee
Select * from Employees
-- Select rows, col where gender is male
Select * from Employees where Gender='Male' or Gender != 'Male'

Select Distinct Salary from Employees

Select * from Employees where Gender <> 'Female'

Select * from Employees where Salary IN(60000,70000)

Select * from Employees where Salary between 50000 and 70000

Select * from Employees where LastName LIKE 'h%'

Select * from Employees where LastName like '%s'

Select * from Employees where LastName  like '%e%'

Select * from Employees where FirstName like '[BMS]%'


Select * from Employees where FirstName like '[^BMS]%'

Select * from Employees where (Salary=70000 or Salary= 45000) AND (Gender like '%e%')

Select * from Employees order by FirstName desc

Select * from Employees order by FirstName Asc, Salary Desc


Select top 1 * from Employees

Select top 50 percent * from Employees

Select Top 1 * from Employees order by Salary desc