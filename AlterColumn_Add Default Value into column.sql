USE my_test
GO
ALTER TABLE tblePerson
ADD CONSTRAINT df_tblePerson_GenderID
DEFAULT 3 FOR GenderID