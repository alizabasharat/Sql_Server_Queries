SELECT EmployeeID, COALESCE(FirstName, MiddeName, LastName) As Name
FROM ENAME