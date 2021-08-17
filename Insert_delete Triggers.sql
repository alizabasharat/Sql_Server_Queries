CREATE TABLE tblEmployee
(
  Id int Primary Key,
  Name nvarchar(30),
  Salary int,
  Gender nvarchar(10),
  DepartmentId int
)

Insert into tblEmployee values (1,'John', 5000, 'Male', 3)
Insert into tblEmployee values (2,'Mike', 3400, 'Male', 2)
Insert into tblEmployee values (3,'Pam', 6000, 'Female', 1)

CREATE TRIGGER Tr_tblEmployee_tblEdit 
on tblEmployee
FOR INSERT 
AS
BEGIN
	DECLARE @Id int
	SELECT @Id=Id FROM inserted

INSERT INTO tblEmployeeAudit 
VALUES ('NEW EMPLOYEE WITH ID= ' + CAST(@id as nvarchar(30)) + 'IS ADDED AT' + CAST (getdate()as nvarchar(20)))

END

Insert into tblEmployee values (7,'Tan', 2300, 'Female', 3)

ALTER TRIGGER Tr_Delete_tblEmployee_tblEdit 
on tblEmployee
FOR DELETE 
AS
BEGIN
	DECLARE @Id int
	SELECT @Id=Id FROM deleted

INSERT INTO tblEmployeeAudit 
VALUES ('NEW EMPLOYEE WITH ID= ' + CAST(@id as nvarchar(30)) + 'IS ADDED AT' + CAST (getdate()as nvarchar(20)))

END

delete from tblEmployee where Id=1
