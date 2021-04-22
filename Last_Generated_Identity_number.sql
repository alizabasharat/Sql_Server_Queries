INSERT INTO test1 VALUES ('X')
SELECT * FROM test1
SELECT SCOPE_IDENTITY() --built in function to get last generated identity
--same session and same scope
SELECT @@IDENTITY --it gives last generated identity in case of two tables 
--it gives the value added last 
-- same session across and scope
select IDENT_CURRENT('test1')
--it returns the last generated valued from the given table
CREATE TRIGGER Trforinsert 
ON test1 for insert
as
begin
	insert into test2 values('zz')
end
/*it is a trigger on test1 whenever record will enter
in table 1 test2 table will be automatically updated by 
record zz*/

select * from test2