--Inline Table Valued Function 

CREATE FUNCTION gettingTable (@gender nvarchar(30))
RETURNS TABLE
AS
	RETURN (SELECT * From tblEmployees where Gender=@gender)
-- Calling of Function
SELECT * from gettingTable('Male')