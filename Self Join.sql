--self join is join with itself
Select E.Name AS Employee, M.Name AS Manager
from E E
left join E M
on E.ManagerID = M.EmployeeID

Select E.Name AS Employee, M.Name AS Manager
from E E
right join E M
on E.ManagerID = M.EmployeeID


Select E.Name AS Employee, M.Name AS Manager
from E E
full join E M
on E.ManagerID = M.EmployeeID