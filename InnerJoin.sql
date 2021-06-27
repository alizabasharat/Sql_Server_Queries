Alter TABLE Manager 
alter column ManagerID int null
	

	

Select * from Manager

Select E.Name as Employee_Name, M.Name as Manager_Name
From Manager E
LEFT JOIN Manager M
ON E.ManagerID= M.EmployeeID


Select E.Name as Employee_Name, M.Name as Manager_Name
From Manager E
Inner JOIN Manager M
ON E.ManagerID= M.EmployeeID


Select E.Name as Employee_Name, M.Name as Manager_Name
From Manager E
CROSS JOIN Manager M
