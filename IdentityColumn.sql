

insert into Person_1 --insert into tabel id is identity and its value will be added automatically
values ('jane')

select * from Person_1

set identity_insert Person_1 ON --if we want to use the deleted id again then we need to on identity_insert

delete  from Person_1

insert into Person_1 (PersonID, Name) -- after on the identity we need to speciy id and name
values (1, 'jane')

/*by default identity column
Create table tablename 
name varchar (1,1) primary key
*/

/*again 1 s start karny k lyea after deleting all records*/
DBCC CHECKIDENT('Person_1',RESEED,0)