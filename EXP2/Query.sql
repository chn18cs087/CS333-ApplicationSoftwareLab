#1.Create a table Employee with following specifications.
#  Code character (4), name character (10), designation character(30), dob date, salary numeric.

	CREATE TABLE EMPLOYEE(
     	CODE VARCHAR(40) UNIQUE PRIMARY KEY NOT NULL,
    	NAME VARCHAR(10) NOT NULL,
    	DESIGNATION VARCHAR(30) NOT NULL,
    	DOB DATE NOT NULL,
    	SALARY DECIMAL NOT NULL);

#2. Insert 2 tuples into the table.

	INSERT INTO EMPLOYEE VALUES('E1' , 'JOHNNY' , 'MANAGER' , '1995-02-09' , 50000); 

	INSERT INTO EMPLOYEE VALUES('E2' , 'MARK' , 'ANALYST' , '1999-08-02' , 25000);

#3. Select all details from the table.

	SELECT * FROM EMPLOYEE;

#4.Change the salary of employee code is e1.

	UPDATE EMPLOYEE 
	SET SALARY = 60000
	WHERE CODE = 'E1';

#5. Delete a tuple from the table employee.

	DELETE FROM EMPLOYEE
	WHERE CODE = 'E1';

