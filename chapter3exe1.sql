/*도서 번호가 1인 도서의 이름*/
select *from book;
/* 가격이 20.000 원 이상인 도서의 이름*/
select *from orders;
/* 박지성의 총구매액 */
select *from customer;

select sum(saleprice)
from customer, orders
where customer.custid=orders.custid AND customer.name
like '박지성';
/* 박지성이 구매한 도서의 수 */
select bookname from book where bookid=1;-- 1-1 

/* 박지성이 구매한 도서의 출판사 수*/
select bookname from book where price>=20000; -- 1-2
/* 박지성이 구매한 도서의 . 가격. 정가와 판매가격의 차이*/
select sum(saleprice) from orders where custid=1; -- 1-3
/* 박지성이 구매하지 않은 도서의 이름*/
select count(*) from orders where custid=1; -- 1-4
/*마당서점 도서의 총수 */
select count(*) from book;
/* 마당서점에 도서를 출고하는 출판사의 총*/
select count(Distinct publisher) from book;
/*모든 고객의 . 주소*/
select name,address from customer;
/*  2020 년 월 ~7 월 일 사이에 주문받은 도서의 주문번호*/
select orderid from orders where orderdate BETWEEN '20/07/04' AND '20/07/07';
/* 2020 년 월 나일 ~7 월 일 시이에 주문받은 도서를 제외한 도서의 주문번호*/
select orderid from orders where orderdate NOT BETWEEN '20/07/04' AND '20/07/07';
/*성이 김씨인 고객의 과주소*/
select name,address from customer where substr(name,0,1)='김';
/*성이 김· 씨이고 이 아로 나는 고객의 이름과 주소 */
select name,address from customer where substr(name,0,1)='김' AND substr(name,-1)='아';