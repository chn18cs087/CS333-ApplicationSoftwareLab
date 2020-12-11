#Creation of Views and Assertions
#1. Create a table store. Fields are order no, code, item, quantity, price, discount, mrp.
   
   CREATE TABLE STORE(
   ORDERNO INT NOT NULL,
   CODE VARCHAR(8) NOT NULL PRIMARY KEY,
   ITEM VARCHAR(20) NOT NULL,
   QUANTITY DECIMAL,
   PRICE DECIMAL NOT NULL,
   DISCOUNT VARCHAR(8),
   MRP DECIMAL);

#2. Insert values into the table

   INSERT INTO STORE VALUES(1,"S1","SUGAR",2,150.00,"2%",147.00);
   INSERT INTO STORE VALUES(2,"S2","SALT",1,20.00,0,20.00);
   INSERT INTO STORE VALUES(3,"S3","OIL",2,120.00,"4%",115.20);
   INSERT INTO STORE VALUES(4,"S4","RICE",5,47.00,"4%",45.12);

#3. Display the table.

   SELECT * FROM STORE;

#4. Create a view with item_name and quantity for the above table.

   CREATE VIEW STOREVIEW AS
   SELECT ITEM,QUANTITY
   FROM STORE;

#5. Write a query to check whether any changes made to present table is reflected in view.
   
   UPDATE STORE
   SET ITEM="DIET SUGAR"
   WHERE CODE="S1"; 
   SELECT * FROM STOREVIEW;

#6. Write a query to delete a view.
   DROP VIEW STOREVIEW;