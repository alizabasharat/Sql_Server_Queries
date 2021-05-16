DECLARE @dob datetime, @temp datetime, @years int, @months int, @days int 
SET @dob='1991-11-14'

SELECT @temp=@dob
SELECT @years= DATEDIFF(year, @temp, GETDATE())-
	CASE
		WHEN (MONTH(@dob)>getdate()) OR
		(Month(@dob)= Month(getdate()) AND DAY(@dob)> Day(getdate()))
		THEN 1 ELSE 0
	END
SELECT @temp= DATEADD(YEAR, @years, @temp)
SELECT @months= DATEDIFF(MONTH, @temp, GETDATE()) -
	CASE
		WHEN DAY(@dob) > DAY(GETDATE())
		THEN 1 ELSE 0
	END
SELECT @temp= DATEADD(MONTH, @months, @temp)
SELECT @days= DATEDIFF(DAY, @temp, GETDATE())
 Declare @age nvarchar(50)
 SELECT @years as YEARS, @months AS MONTHS, @days as [DAYS]



	