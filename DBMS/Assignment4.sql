  
SELECT D.BNAME FROM DEPOSIT D , BRANCH B WHERE D.BNAME=B.BNAME GROUP BY D.BNAME HAVING SUM(D.AMOUNT) > 5000;
SELECT D.BNAME FROM DEPOSIT D , BRANCH B WHERE D.BNAME=B.BNAME AND B.CITY='BOMBAY' GROUP BY D.BNAME HAVING SUM(D.AMOUNT) > 5000;
select CNAME from deposit where AMOUNT=(select AVG(Amount) from DEPOSIT GROUP BY BNAME having AVG(Amount)>5000)
SELECT D1.BNAME FROM DEPOSIT D1 GROUP BY D1.BNAME HAVING COUNT(D1.CNAME) > =  ALL (SELECT COUNT (D2.CNAME) FROM DEPOSIT D2 GROUP BY D2.BNAME)
SELECT MAX(AMOUNT)"AMOUNT" FROM DEPOSIT
select count(deposit.cname)from deposit,CUSTOMER where  CUSTOMER.CITY='nagpur'
Select CNAME from deposit  where BNAME='VRCE' and   amount=(select max(AMOUNT)  from deposit where BNAME='VRCE')
SELECT BNAME from deposit GROUP BY BNAME HAVING COUNT(BNAME)>5
select C.CNAME ,count(B.BNAME) from CUSTOMER C inner join Branch B on C.CNAME=B.BNAME group by C.Cname order by count(B.BName) DESC
select count(b1.bname) From deposit d1 , borrow b1 , customer c1 Where c1.cname=d1.cname and d1.cname=b1.cname and c1.city in (select city from customer)