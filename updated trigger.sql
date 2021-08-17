CREATE TRIGGER Tr_update_tbleEmplyee_tbleEmployeeAudit
ON tblEmployee
FOR UPDATE

AS
BEGIN
	Select * from inserted
	select * from deleted
END

Update tblEmployee set Name = 'Tods', Salary = 2000, 
Gender = 'Female' where Id = 4
