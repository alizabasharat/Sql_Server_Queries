Create View vWEmployeesByDepartment
as
Select Id, Name, Salary, Gender, DeptName
from tblEmployee
join tblDepartment
on tblEmployee.DepartmentId = tblDepartment.DeptId

Select * from vWEmployeesByDepartment
Create View vWITDepartment_Employees
as
Select Id, Name, Salary, Gender, DeptName
from tblEmployee
join tblDepartment
on tblEmployee.DepartmentId = tblDepartment.DeptId
where tblDepartment.DeptName = 'IT'

Select * from vWITDepartment_Employees



Create View vWEmployeesCountByDepartment
as
Select DeptName, COUNT(Id) as TotalEmployees
from tblEmployee
join tblDepartment
on tblEmployee.DepartmentId = tblDepartment.DeptId
Group By DeptName


select * from vWEmployeesCountByDepartment

sp_helptext vWEmployeesCountByDepartment

Update vWEmployeesDataExceptSalary 
Set Name = 'Mikey' Where Id = 2

Create view vWEmployeesDataExceptSalary
as
Select Id, Name, Gender, DepartmentId
from tblEmployee

select * from vWEmployeesDataExceptSalary

select * from tblEmployee