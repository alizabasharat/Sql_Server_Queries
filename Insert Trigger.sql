--to select record from database tables
select * from tblUser
select * from tblUserAudit
--Query to insert record in table
insert into tblUser (userName,password,email) values('Amna','Amna','ali@gmail.com')
--Query to create table
create table tblUserAudit
(
Id int identity primary key, 
Audit_Date nvarchar(255)

)
--Script to create insert trigger
CREATE TRIGGER tr_tblUser_insert
on tblUser
FOR INSERT
AS
BEGIN
 Declare @Id int
 select @Id=id from inserted
 insert into tblUserAudit values('New employee with id ='  + CAST(@Id as nvarchar(5)) + 'is added at' +cast( GETDATE()as nvarchar(20)))


END

--script to create delete trigger
Create TRIGGER tr_tblUser_delete
ON tblUser
FOR DELETE
AS
BEGIN
 Declare @Id int
 select @Id=id from deleted
 insert into tblUserAudit values('New employee with id ='  + CAST(@Id as nvarchar(5)) + 'is deleted at  ' +cast( GETDATE()as nvarchar(20)))

END
--Query to delete record from table
Delete  from tblUser where id=2