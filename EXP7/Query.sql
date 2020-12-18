#IMPLEMENTATION OF BUILD IN FUNCTIONS IN RDBMS

#1.Create a table store. Fields are order no, code, item, quantity, price, discount, mrp.

   CREATE TABLE STORE(
   ORDERNO INT NOT NULL,
   CODE VARCHAR(8) NOT NULL PRIMARY KEY,
   ITEM VARCHAR(20) NOT NULL,
   QUANTITY DECIMAL,
   PRICE DECIMAL NOT NULL,
   DISCOUNT VARCHAR(8),
   MRP DECIMAL(6,2));

#2.Insert values into the table.

   INSERT INTO STORE VALUES(1,"S1","SUGAR",2,150.00,"2%",147.00);
   INSERT INTO STORE VALUES(2,"S2","SALT",1,20.00,0,20.00);
   INSERT INTO STORE VALUES(3,"S3","OIL",2,120.00,"4%",115.20);
   INSERT INTO STORE VALUES(4,"S4","RICE",5,47.00,"4%",45.12);

#3.Display the table.

   SELECT * FROM STORE;

#4.Write an SQL query to display the reminder, if the amount of an each item in store is divided by 9.

   SELECT MOD(PRICE,9) REMINDER 
   FROM STORE;

#5.Write SQL query to display the amount in store and its square.

   SELECT PRICE, POWER(PRICE,2) SQUARE
   FROM STORE;

#6.Write SQL query to divide the amount in stock of each item by 7 in store table and display the result round to the nearest integer.

   SELECT ROUND(PRICE DIV 7) ROUND
   FROM STORE;


