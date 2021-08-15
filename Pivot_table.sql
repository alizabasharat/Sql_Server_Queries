Create Table tblProductSales
(
 SalesAgent nvarchar(50),
 SalesCountry nvarchar(50),
 SalesAmount int
)
select SalesCountry, SalesAgent, SUM(SalesAmount) As salary 
From tblProductSales
group by SalesCountry, SalesAgent
Order by SalesCountry, SalesAgent


select SalesAgent, India, UK, US
from tblProductSales
pivot
(
 sum(SalesAmount) 
 for SalesCountry in ([India], [UK],[US])
 

)as Pivottable 