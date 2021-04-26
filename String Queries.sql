-- it will select the first alphabet from left in this case A
Select LEFT('ABC', 1)
-- it will select the first alphabet from right in the case C
Select RIGHT('ABC', 1)
--it will return index of @
Select CHARINDEX('@', 'aaa@bbb.com')
--it will return substring starting from 5
select SUBSTRING('aaa@bbb.com', 5,7)
--it will return substring based on index of @
select SUBSTRING('aaa@bbb.com', CHARINDEX('@', 'aaa@bbb.com')+1, len('aaa@bbb.com')-CHARINDEX('@', 'aaa@bbb.com'))
-- declaration of a variable
declare @email varchar(30)
--assigning value to variable
set @email ='alizabasharat@gmail.com'
--selection of substring 
select SUBSTRING(@email, CHARINDEX('@', @email)+1, len(@email)-CHARINDEX('@', @email))
--selection of substring from database column 
select SUBSTRING(Email, CHARINDEX('@', Email)+1, len(Email)-CHARINDEX('@', Email)) as DomainName,
COUNT(Email) as [total count]
from tblePerson
Group by SUBSTRING(Email, CHARINDEX('@', Email)+1, len(Email)-CHARINDEX('@', Email))
--it will replicate the given string 2 times
select REPLICATE('Aliza',2)
-- it will replicate the email after 1 character with *
select Name, 
SUBSTRING(Email,1,2)+ REplicate('*', 5) as email,
+ SUBSTRING(Email, CHARINDEX('@', Email)+1, len(Email)-CHARINDEX('@', Email)) as [Domain Name]
from tblePerson

--only can add strings, not sting and int
select Name+ SPACE(5) + Email as [Name and Age]
from tblePerson


--Patindex returns the starting position of the first occurence of 
--of the pattern, it take two argument the pattern to be searched and 
--the expression. it is similar to charinder, but in charindex we cannot 
--use wildcard where in patindex we can use 

select Email , PATINDEX('%@.com', Email) as firstoccurence 
from tbleperson 
where PATINDEX('%@.com', Email)>0

--it will replace.com with .net in email column
select Email, REPLACE(Email,'.com', '.net') as replacedEmail 
from tblePerson

--stuff function insert replacement expresstion at the start
--postion specified , along with removing the character specified
--using length parameter 
-- it will replace email with wild characters
select Name, Email, 
stuff(Email,2,3,'*****') as changedEMail 
from tblePerson
-- it will return the ASCII value of character
select ASCII('A')
--it will change the Ascii value into character
select CHAR(90)
--it will remove left space
select LTRIM('    Aliza')
-- it will remove right trim
Select RTRIM('Aliza      ')
--it will change string into lower case
Select LOWER('ALIZA')
--it will change string into upper case
select UPPER('aliza')
--it will reverse the string
select REVERSE('aliza')
--it will return the length of string
select LEN('aliza')