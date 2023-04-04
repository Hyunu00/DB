select cust.name,ord.saleprice from customer cust left OUTER JOIN orders ord ON cust.custid=ord.custid;
select cust.name,ord.saleprice from customer cust ,orders ord where cust.custid=ord.custid(+);
--가장 비싼 도서의 이름 및 가격 
select bookname from book where price=(select max(price) from book) ;
--도서를 구매한 적이 있는 고객의 이름을 검색 
select name from customer where custid in (select  custid from orders);
--출판사 별로 출판사의 평균 도서 가격보다 비싼 도서 구하기 
select books.bookname from book books where books.price > (select avg(books2.price) from book books2 where books2.publisher=books.publisher);