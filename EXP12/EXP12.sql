#IMPLEMENTATION OF JOIN OPERATOR

#Consider the following schema: 
# Sailors (sid, sname, rating, age) 
# Boats (bid, bname, color) 
# Reserves (sid, bid, day(date)) 

#1.Find all information of sailors who have reserved boat number 101. 

   SELECT S.* 
   FROM SAILOR S,RESERVES R 
   WHERE S.SID=R.SID AND R.BID=101;

#2.Find the name of boat reserved by Bob. 

   SELECT BNAME 
   FROM BOATS B, RESERVES R, SAILOR S 
   WHERE B.BID=R.BID AND R.SID=S.SID AND SNAME ='BOB';

#3.Find the names of sailors who have reserved a red boat, and list in the order of age. 

   SELECT SNAME
   FROM SAILOR S, RESERVES R, BOATS B 
   WHERE S.SID=R.SID AND R.BID=B.BID AND COLOR='RED' 
   ORDER BY AGE;

#4.Find the names of sailors who have reserved at least one boat. 

   SELECT SNAME 
   FROM SAILOR S, RESERVES R 
   WHERE S.SID=R.SID;

#5.Find the ids and names of sailors who have reserved two different boats on the same day

   SELECT DISTINCT S.SID, SNAME 
   FROM SAILOR S, RESERVES R1, RESERVES R2 
   WHERE S.SID=R1.SID AND S.SID = R2.SID AND R1.DAY =R2.DAY AND R1.BID!=R2.BID;

