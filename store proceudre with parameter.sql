
--store procedure to get record from ENMAE usin single parameter id
Create procedure get_record
@id int
AS
BEGIN

Select * from ENAME
where EmployeeID=@id

END
--Calling of store procedure
get_record @id=1

-- this will give the syntax of procedure 
sp_helptext get_record


--Alter existing store procedure 

Alter procedure get_record
@id int
AS
BEGIN

Select * from ENAME
where EmployeeID=@id
Order by Name
END


--Drop store procedure 

drop procedure get_record


--It will encrypt the store procedure so no one can see its text
Alter procedure get_record
@id int
WITH encryption
AS
BEGIN

Select * from ENAME
where EmployeeID=@id
Order by EmployeeID
END
