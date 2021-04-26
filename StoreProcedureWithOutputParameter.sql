--store procedure with output parameter
create procedure getCount
@countV int output
as
begin
	select @countV=COUNT(EmployeeID) from ENAME
end

--calling of store procedure with output parameter

Declare @v_get int
Execute getCount @v_get output
print @v_get

--if statement in calling, if we don't specify the 
--output with variable name in the execution then we will
--get null in the variable
Declare @v_get int
Execute getCount @v_get 
if(@v_get is Null)
	print 'null'
else
	print 'not null'
print @v_get