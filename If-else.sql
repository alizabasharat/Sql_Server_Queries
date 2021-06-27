DECLARE @CourseCount INT 

SET @CourseCount= (select count(*) from CourseInstructor where CourseID=2021)
IF @CourseCount = 2021
	BEGIN
		Print 'The result is : ' + cast(@CourseCount AS varchar)
		IF @CourseCount = 2021
			BEGIN
				Print 'The result is here'
			END
	END
ELSE 
	BEGIN
		Print 'Sorry'
		Print 'there is no record'
	END