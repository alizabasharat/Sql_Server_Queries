SELECT Name, Gender, Salary, Department_Name
From employee_record
INNER JOIN department_record
ON employee_record.Department_ID = department_record.ID

--in inner join only those record will return where value
--matches with the corresponding value in the table
SELECT Name, Gender, Salary, Department_Name
From employee_record
LEFT JOIN department_record
ON employee_record.Department_ID = department_record.ID
/* Left join will return all records */


SELECT Name, Gender, Salary, Department_Name
From employee_record
Right JOIN department_record
ON employee_record.Department_ID = department_record.ID
--it will return all values in right table 

SELECT Name, Gender, Salary, Department_Name
From employee_record
FULL Outer JOIN department_record
ON employee_record.Department_ID = department_record.ID
--it will return all record matched or not matched

SELECT Name, Gender, Salary, Department_Name
From employee_record
CROSS JOIN department_record

/*general syntax of joins

select		columnlist
from		lefttable
jointype	righttable
on			joincondition

*/
