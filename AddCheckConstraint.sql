ALTER TABLE tblePerson  /*adding column into existing table with default value*/
Add age int not null 
constraint df_tblePerson_age
DEFAULT 2 


INSERT INTO tblePerson (ID, Name, Email, GenderID, Age) /*insert values into table */
VALUES (6, 'ABC','a@gmail.com' , 3, 60)

select * from tblePerson
/*select from table person*/

ALTER TABLE tblGender /*add check constraint*/
Add CONSTRAINT chk_tblGender
CHECK (ID > 0)


ALTER TABLE tblGender /*drop constraint*/
DROP CONSTRAINT chk_tblGender
