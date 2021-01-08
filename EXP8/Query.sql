#IMPLEMENTATION OF VARIOUS AGGREEGATE FUNCTIONS IN SQL

#1.Create a table Employee with following specifications.
#  Code, Name, DOB, designation, salary

   CREATE TABLE EMPLOYEE(
   CODE VARCHAR(40) UNIQUE PRIMARY KEY NOT NULL,
   NAME VARCHAR(10) NOT NULL,  
   DOB DATE NOT NULL,
   DESIGNATION VARCHAR(30) NOT NULL,
   SALARY DECIMAL(10,2) NOT NULL);

#2.Insert values into the table

   INSERT INTO EMPLOYEE VALUES('E1','JOHNY','1995-02-09','MANAGER',50000); 
   INSERT INTO EMPLOYEE VALUES('E2','MARK','1999-08-02' ,'ANALYST',25000);
   INSERT INTO EMPLOYEE VALUES('E3','JAY','1997-02-12','SALESMAN',20000); 
   INSERT INTO EMPLOYEE VALUES('E4','HENDREY','1999-09-28','CLERK',15000);
   INSERT INTO EMPLOYEE VALUES('E5','LUCAS','1999-08-28','CLERK',18000);

#3.Display sum of salaries from the table employee where designation is “CLERK”.

   SELECT SUM(SALARY)
   FROM EMPLOYEE
   WHERE DESIGNATION ="CLERK";

#4.Describe the maximum salary value from the table employee.

   SELECT MAX(SALARY)
   FROM EMPLOYEE;

#5.Display average salary of employees.

   SELECT AVG(SALARY)
   FROM EMPLOYEE;

#6.Describe the minimum salary value from the table.

   SELECT MIN(SALARY)
   FROM EMPLOYEE;

#7.Display the total number of employees.

   SELECT COUNT(*) TOTAL
   FROM EMPLOYEE;




