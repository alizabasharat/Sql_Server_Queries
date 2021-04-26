/* There are 3 ways to replace NULL values
1- ISNULL(Expression, Value) 
2- COALESCE (Expression, Value) 
3- CASE WHEN Expression IS NULL THEN ELSE END
*/

SELECT * FROM E

SELECT L.Name As EmployeeName, ISNULL(M.Name, 'No Manager') As ManagerName
FROM E L
FULL JOIN E M
ON L.EmployeeID=M.ManagerID

SELECT COALESCE(NULL, 'No Manager') As Manager


SELECT L.Name As EmployeeName, COALESCE(M.Name, 'No Manager') As ManagerName
FROM E L
LEFT JOIN E M
ON L.EmployeeID=M.ManagerID


SELECT L.Name As EmployeeName, CASE WHEN M.Name IS NULL THEN 'No Manager' Else M.Name End As ManagerName
FROM E L
LEFT JOIN E M
ON L.EmployeeID=M.ManagerID