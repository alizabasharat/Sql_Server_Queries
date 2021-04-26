
--UNION will only return the unique record and ignore duplicate
Select * from ENAME
UNION
select * from E
--Union all will return all records including duplicate
Select * from ENAME
UNION ALL
select * from E

-- do remeber that name, number of col and data type must be same 


Select * from ENAME
UNION ALL
select * from E
ORDER BY NAME