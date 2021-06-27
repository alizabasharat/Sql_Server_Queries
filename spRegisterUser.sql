Create table tblUser
( id int identity primary key, 
 userName varchar (30) not null, 
 password varchar(30) not null, 
 email varchar(30) not null
)

select * from tblUser

create procedure spRegisterUser
@username varchar(30), 
@password varchar(30),
@email varchar(30)
as
begin
declare @count int 
declare @retruncount int
select @count=COUNT(userName)
from tblUser where userName=@username
if(@count>0)
begin
set @retruncount = -1
end
else
begin
set @retruncount =1
 insert into tblUser values(@username,@password,@email)
end
select @retruncount as ReturnValue


end

exec spRegisterUser