--Create table 

Create Table tblProduct
(
 ProductId int NOT NULL primary key,
 Name nvarchar(50),
 UnitPrice int,
 QtyAvailable int
)


--SQL script to load data into tblProduct
Insert into tblProduct values(1, 'Laptops', 2340, 100)
Insert into tblProduct values(2, 'Desktops', 3467, 50)


--SQL script to create tblProductSales
Create Table tblProductSales
(
 ProductSalesId int primary key,
 ProductId int,
 QuantitySold int
)