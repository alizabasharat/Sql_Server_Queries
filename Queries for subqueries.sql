--Write a query to retrieve products that are not at all sold

select  * from tblProducts
Select * from tblProductSales
--SubQuery 
Select Id, [Name], [Description]
From tblProducts
where Id NOT IN (Select ProductId from tblProductSales)
--Join

Select tblProducts.Id, [Name], [Description]
from tblProducts 
left join tblProductSales 
ON tblProducts.Id= tblProductSales.ProductId
Where tblProductSales.ProductId is Null

--Write a query to retrieve the NAME and TOTALQUANTITY sold, using a subquery.

Select [Name], (Select SUM (QuantitySold) from tblProductSales
where ProductId=tblProducts.Id) as QTySold
from tblProducts
ORDER BY [Name]


--Join


Select [Name], SUM(QuantitySold) as qtysold 
From tblProducts
Left Join tblProductSales
ON tblProducts.Id=tblProductSales.ProductId
Group by [Name]
ORDER by [Name]
