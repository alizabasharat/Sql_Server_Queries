--IT WIIL ADD THE UNQIUE CONSTRAINT TO EXISITING TABLE
ALTER TABLE test1
ADD CONSTRAINT unique_key_test1_value
UNIQUE (VALUE)
/* you can have multiple unique key constraints
unique column can have null values while primary key cannot*/