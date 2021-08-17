Create Table tblEmployees
(
 EmployeeId int identity primary key,
 Name nvarchar(50),
 Gender nvarchar(10),
 Salary int
)

Insert into tblEmployees values('Mike','Male',5000)
Insert into tblEmployees values('Pam','Female',3500)
Insert into tblEmployees values('John','Male',2350)
Insert into tblEmployees values('Sara','Female',5700)
Insert into tblEmployees values('Steve','Male',4890)
Insert into tblEmployees values('Sana','Female',4500)

Create Procedure spAddEmployee  
@Name nvarchar(50),  
@Gender nvarchar(20),  
@Salary int,  
@EmployeeId int Out  
as  
Begin  
 Insert into tblEmployees values(@Name, @Gender, @Salary)  
 Select @EmployeeId = SCOPE_IDENTITY()  
End

select * from tblEmployees