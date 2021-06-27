CREATE TRIGGER tr_tblUser_update
ON tblUser
FOR update 
AS
BEGIN
	select * from inserted
	select * from deleted
END

Select * from tblUser
Select * from tblUserAudit

update tblUser set userName='aliz', password='aliza' where id=3

ALTER TRIGGER tr_tblUser_update
ON tblUser
FOR update 
AS
BEGIN
	Declare @id int
	Declare @oldUserName nvarchar(20), @newUserName nvarchar(20)
	Declare @oldPassword nvarchar(20), @newPassword nvarchar(20)
	Declare @oldEmail nvarchar(20), @newEmail nvarchar(20)

	Declare @auditString nvarchar(1000)

	select * into #TempTable
	from inserted

	while(Exists(select @id from #TempTable))
	BEGIN

	set @auditString=''

	Select TOP 1 @id=id, @newUserName= userName,@newPassword=password, @newEmail=email
	from #TempTable


	select @oldUserName=userName, @oldPassword=password, @oldEmail=email
	from deleted 
	where @id=id

	set @auditString= 'Employee with id = ' + CAST(@id as nvarchar(20)) + 'to changed'
	if(@oldUserName<>@newUserName)
		set @auditString=@auditString + 'Name from' + @oldUserName + 'to' + @newUserName


	if(@oldPassword<>@newPassword)
		set @auditString=@auditString + 'Password from' + @oldPassword + 'to' + @newPassword

	if(@oldEmail<>@newEmail)
		set @auditString=@auditString + 'Email from' + @oldEmail+ 'to' + @newEmail

    Insert into tblUserAudit values (@auditString)

	delete from #TempTable where id=@id

	END

END