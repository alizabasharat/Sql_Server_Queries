create procedure spLoginUser
@username varchar(30), 
@password varchar(30)
as
begin
declare @count int 
select @count=COUNT(userName)from tblUser 
where [userName]=@username and [password]=@password
if(@count=1)
begin
select 1 as ReturnCode
end
else
begin
select -1 as ReturnCode
end


end
