Create table Continents
( Continent_ID int Primary key, 
  Continent_Name varchar(30) Not Null

)

Create table Countries
( Countries_ID int, 
  Countries_Name varchar(30) Not Null,
  Continent_ID int
  primary key(Countries_ID),
  )

  Alter table countries 
  add constraint FK_Continents_Countries
  foreign key(Continent_ID) references Continents(Continent_ID)

  
Create table Cities
( City_ID int, 
  City_Name varchar(30) Not Null,
  Country_ID int
  primary key(City_ID),
  )

  Alter table cities
  add constraint FK_Countries_Cities
  foreign key(Country_ID) references countries(Countries_ID)


  Insert into Cities(City_ID,City_Name, Country_ID) values(4,'Hiroshmia', 2)