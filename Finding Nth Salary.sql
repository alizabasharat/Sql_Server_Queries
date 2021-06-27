Select * from Employees order by Salary desc


select MAX(Salary) from Employees

select Max(Salary) from Employees
where Salary < (select MAX(Salary) from Employees)


--to get the Nth highest salar 

SELECT TOP 1 Salary from
(SELECT DISTINCT TOP 2 Salary 
FROM EMPLOYEES 
ORDER BY Salary DESC)
RESULT
ORDER BY Salary


--Ranking 
WITH Result As
(
SELECT Salary, DENSE_RANK() over (order by Salary desc) as DenseRank 
From Employees
)
SELECT TOP 1 Salary 
From Result
Where Result.DenseRank=3

--RowNumber
-- This will work if you don't have any duplicate record
WITH Result As
(
SELECT Salary, ROW_NUMBER() over (order by Salary desc) as ROWNUMBER 
From Employees
)
SELECT TOP 1 Salary 
From Result
Where Result.ROWNUMBER=3