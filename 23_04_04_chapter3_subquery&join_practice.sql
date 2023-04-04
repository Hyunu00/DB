/*5 박지성이 구매한 도서의 출판사 수 */
select count(bok.publisher)"출판사 수" from orders odr,customer cust,book bok where cust.custid=odr.custid and cust.name like '박지성' and bok.bookid=odr.bookid; 
/*6 박지성이 구매한 도서의 이름,가격,정가와 판매가격의 차이 price-saleprice*/ 
select bok.bookname,bok.price,ord.saleprice,(bok.price-ord.saleprice)"정가와 판매가 차이" from orders ord,customer cust,book bok where cust.custid=ord.custid and cust.name like '박지성' and bok.bookid=ord.bookid;
/*7 박지성이 구매하지 않은 도서의 이름*/
select Distinct bok.bookname from orders ord,customer cust,book bok where not cust.custid=ord.custid and cust.name like '박지성' and bok.bookid=ord.bookid;/*주문하지 않은 고객의 이름*/
/*8 주문하지 않은 고객의 이름*/
select cust.name from customer cust where cust.custid not in (select Distinct ord.custid from orders ord);
/*9 주문 금액의 총액과 주문의 평균 금액*/
select sum(saleprice)"총합",avg(saleprice)"평균" from orders;
/*10 고객의 이름과 고객별 구매액*/
select name,sum(saleprice) from customer,orders where orders.custid=customer.custid group by name;
/*11 고객의 이름과 고객이 구매한 도서목록*/
select name,bookname from book,orders,customer where book.bookid=orders.bookid and orders.custid=customer.custid;
/*12 도서의 가격과 판매가격의 차이가 가장 많은 주문*/
select * from book,orders where book.bookid=orders.bookid and price-saleprice = (select max(price-saleprice) from book,orders where book.bookid = orders.bookid);
/*13 도서의 판매액 평균보다 자신의 구매액 평균이 더 높은 고객의 이름 */
select name,avg(saleprice) from customer,orders where customer.custid=orders.custid group by name having avg(saleprice)>(select avg(saleprice) from orders); 