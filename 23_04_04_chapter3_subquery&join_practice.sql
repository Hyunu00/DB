/*5 �������� ������ ������ ���ǻ� �� */
select count(bok.publisher)"���ǻ� ��" from orders odr,customer cust,book bok where cust.custid=odr.custid and cust.name like '������' and bok.bookid=odr.bookid; 
/*6 �������� ������ ������ �̸�,����,������ �ǸŰ����� ���� price-saleprice*/ 
select bok.bookname,bok.price,ord.saleprice,(bok.price-ord.saleprice)"������ �ǸŰ� ����" from orders ord,customer cust,book bok where cust.custid=ord.custid and cust.name like '������' and bok.bookid=ord.bookid;
/*7 �������� �������� ���� ������ �̸�*/
select Distinct bok.bookname from orders ord,customer cust,book bok where not cust.custid=ord.custid and cust.name like '������' and bok.bookid=ord.bookid;/*�ֹ����� ���� ���� �̸�*/
/*8 �ֹ����� ���� ���� �̸�*/
select cust.name from customer cust where cust.custid not in (select Distinct ord.custid from orders ord);
/*9 �ֹ� �ݾ��� �Ѿװ� �ֹ��� ��� �ݾ�*/
select sum(saleprice)"����",avg(saleprice)"���" from orders;
/*10 ���� �̸��� ���� ���ž�*/
select name,sum(saleprice) from customer,orders where orders.custid=customer.custid group by name;
/*11 ���� �̸��� ���� ������ �������*/
select name,bookname from book,orders,customer where book.bookid=orders.bookid and orders.custid=customer.custid;
/*12 ������ ���ݰ� �ǸŰ����� ���̰� ���� ���� �ֹ�*/
select * from book,orders where book.bookid=orders.bookid and price-saleprice = (select max(price-saleprice) from book,orders where book.bookid = orders.bookid);
/*13 ������ �Ǹž� ��պ��� �ڽ��� ���ž� ����� �� ���� ���� �̸� */
select name,avg(saleprice) from customer,orders where customer.custid=orders.custid group by name having avg(saleprice)>(select avg(saleprice) from orders); 