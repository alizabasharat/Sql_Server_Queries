Create procedure getContinents
as 
begin 
	select Continent_ID, Continent_Name from Continents
end 


Create procedure getCountriesbyCountryID
@continent_ID int
as 
begin 
	select Countries_ID, Countries_Name from Countries
	where Continent_ID=@continent_ID
end 

Create procedure getCitiesbyCountryID
@country_ID int
as 
begin 
	select City_ID, City_Name from Cities
	where Country_ID=@country_ID
end 