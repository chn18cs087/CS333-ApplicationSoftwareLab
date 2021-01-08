#ORDER BY and GROUP BY clause

#1.Create table employee with fields Code, Name, DOB, Designation, Salary.

   CREATE TABLE FIELDS(
   CODE CHAR(6) UNIQUE PRIMARY KEY NOT NULL,
   NAME CHAR(50) NOT NULL,
   DOB DATE NOT NULL,
   DESIGNATION VARCHAR(90) NOT NULL,
   SALARY FLOAT NOT NULL);

#2.Display code, name, and designation in descending order of the name.

   SELECT CODE, NAME, DESIGNATION
   FROM FIELDS
   ORDER BY NAME DESC;

#3.Create table deposit with fields baccno, branch_name, amount.

   CREATE TABLE DEPOSITE(
   BACCNO CHAR(30) NOT NULL,
   BRANCH_NAME CHAR(40),
   AMOUNT FLOAT);

#4.Give branch name and details of deposit table.

   SELECT BRANCH_NAME, COUNT(BACCNO), SUM(AMOUNT)
   FROM DEPOSITE
   GROUP BY BRANCH_NAME;

