SELECT * FROM tblePerson -- select all records from table

SELECT SUM(Salary) FROM tblePerson -- return sum of salary column
SELECT MIN(Salary) FROM tblePerson -- return minimum salary
SELECT MAX(Salary) FROM tblePerson --return maximum salary
SELECT  Age, SUM(Salary) as TOTAL_SALARY -- select age, sum salary group by age
FROM tblePerson
GROUP BY (Age) --aggregate functions like sum, min and max not applicable on text data


SELECT  Age, SUM(Salary) as TOTAL_SALARY, COUNT(ID) as total_count
FROM tblePerson
GROUP BY (Age) --select age, sum salary and count them based on their age

SELECT  Email, Age, SUM(Salary) as TOTAL_SALARY, COUNT(ID) as total_count
FROM tblePerson
GROUP BY Age, Email
HAVING Email= 'J@.com' --return record having email j@.com 



--we cannot use aggregate function in where clause 
-- but it can be use with having class