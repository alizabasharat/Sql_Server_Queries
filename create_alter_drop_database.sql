CREATE DATABASE databasename /* create database*/
DROP DATABASE databasename /*drop database*/
ALTER DATABASE NAME= newname /*Change name of database*/
SP_RENAMEDB 'oldname', 'newname' /*rename database store procedure*/

/* agar ek database in use ho to woh drop ni ho gai 
agar database multiple jagah use ho rahy hai to usko 
single user k lyea set karna ho ga pagely with immediate rollback k sath 
rollback sab open transactions ko close kar daye ga immediately 

alter database databasename set Single_User with rollback immediate