select cust.name,ord.saleprice from customer cust left OUTER JOIN orders ord ON cust.custid=ord.custid;
select cust.name,ord.saleprice from customer cust ,orders ord where cust.custid=ord.custid(+);
--���� ��� ������ �̸� �� ���� 
select bookname from book where price=(select max(price) from book) ;
--������ ������ ���� �ִ� ���� �̸��� �˻� 
select name from customer where custid in (select  custid from orders);
--���ǻ� ���� ���ǻ��� ��� ���� ���ݺ��� ��� ���� ���ϱ� 
select books.bookname from book books where books.price > (select avg(books2.price) from book books2 where books2.publisher=books.publisher);