Alter table tblePerson 
add constraint tblePerson_GenderID_FK -- name of constraint
foreign key (GenderID) references tblGender(ID)
--it will add foreign key constraint 
--firstly we will mention the name of table where we want
--foreign key then we will add reference table and column