--it will return the non-matching values from left table
SELECT Name, Gender, Salary, Department_Name
FROM employee_record
LEFT JOIN department_record
ON employee_record.Department_ID= department_record.ID
Where department_record.ID is NULL


SELECT * FROM department_record
SELECT * FROM employee_record

--it will return the non-matching values from right table
SELECT Name, Gender, Salary, Department_Name
FROM employee_record
Right JOIN department_record
ON employee_record.Department_ID= department_record.ID
Where employee_record.ID is Null

--it will return the non-matching values from both tables
SELECT Name, Gender, Salary, Department_Name
FROM employee_record
FULL JOIN department_record
ON employee_record.Department_ID= department_record.ID
Where employee_record.ID IS NULL
OR department_record.ID is NULL
