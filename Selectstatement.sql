SELECT * FROM tblePerson --to select all records in table
SELECT [ID],--to select specific column from table where id=1
	   [Name]
FROM tblePerson
WHERE(ID=1)
SELECT DISTINCT Age,Name FROM tblePerson --It will select unqiue age and name from table
SELECT * FROM tblePerson WHERE Name= 'Ali' or Name='ALIZA' --it will select record where name is ali or aliza
SELECT * FROM tblePerson WHERE NAME IN ('John', 'Mary')--it will return the result as per the given list
SELECT * FROM tblePerson WHERE Age BETWEEN 18 AND 20--it will return the value where age between 18 and 20
ALTER TABLE tblePerson -- it will alter the existing table
ADD CONSTRAINT chk_tblePerson_Age -- it will add constraint
CHECK (Age >=18 AND Age <=70) -- it will add constraint check where age between 18 and 70
SELECT * FROM tblePerson WHERE Name LIKE 'j%' --it will select the name start from J
SELECT * FROM tblePerson WHERE Email LIKE '%@%' --it will select email starts from any alphabet and have @ sign
SELECT * FROM tblePerson WHERE Email NOT LIKE '%@%' --it will select email where no @ sign is
SELECT * FROM tblePerson WHERE Email NOT LIKE '_@_.com' --it will select records where email has no @ and .com
SELECT * FROM tblePerson WHERE Name  LIKE '[MAF]%' --it will select name from MAF and whatever character
SELECT * FROM tblePerson WHERE Name  LIKE '[^MAF]%' --it will select those where names don't start from MAF
SELECT * FROM tblePerson ORDER BY Name --it will return the result order by name
SELECT * FROM tblePerson ORDER BY Name DESC, Age ASC --it will return the result order by name desc and age by asc
SELECT top 2 Name, Age from tblePerson--it will return top 2 records
SELECT TOP 50 PERCENT * FROM tblePerson-- it will return 50 percent record
SELECT TOP 1 * FROM tblePerson ORDER BY Age DESC --it will return top 1 record from table person order by age desc