with CTE_EMPLOYEE
as
(

 select *, ROW_NUMBER() over (PARTITION by ID  order by ID) as RowNumber
 from Employees
)

Delete  from CTE_EMPLOYEE where RowNumber>1


select * from Employees