#1. Create a table student with attributes sno,name marks and dept
CREATE TABLE STUDENT(
     SNO INT AUTO_INCREMENT PRIMARY KEY,
     NAME VARCHAR(40) NOT NULL,
     MARKS INT NOT NULL,
     DEPT VARCHAR(20) NOT NULL
);

#Add a new attribute age
ALTER TABLE STUDENT ADD COLUMN AGE INT NOT NULL;

#Change the datatype size of dept
ALTER TABLE STUDENT MODIFY COLUMN DEPT VARCHAR(10);

#Delete the attribute marks from the table
ALTER TABLE STUDENT DROP COLUMN MARKS;

#Change the name of the student table to students
RENAME TABLE STUDENT TO STUDENTS;

#Delete all values from the table
TRUNCATE TABLE STUDENTS;

#Delete the entire table
DROP TABLE STUDENTS;