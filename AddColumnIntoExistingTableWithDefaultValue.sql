ALTER TABLE tblGender 
ADD number int NOT NULL
CONSTRAINT df_tblGender_Name
DEFAULT 1

/* adding column into existing table 
applyin constraint with default value*/

Alter table tblGender 
drop constraint df_tblGender_Name