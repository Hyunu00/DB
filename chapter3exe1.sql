/*���� ��ȣ�� 1�� ������ �̸�*/
select *from book;
/* ������ 20.000 �� �̻��� ������ �̸�*/
select *from orders;
/* �������� �ѱ��ž� */
select *from customer;

select sum(saleprice)
from customer, orders
where customer.custid=orders.custid AND customer.name
like '������';
/* �������� ������ ������ �� */
select bookname from book where bookid=1;-- 1-1 

/* �������� ������ ������ ���ǻ� ��*/
select bookname from book where price>=20000; -- 1-2
/* �������� ������ ������ . ����. ������ �ǸŰ����� ����*/
select sum(saleprice) from orders where custid=1; -- 1-3
/* �������� �������� ���� ������ �̸�*/
select count(*) from orders where custid=1; -- 1-4
/*���缭�� ������ �Ѽ� */
select count(*) from book;
/* ���缭���� ������ ����ϴ� ���ǻ��� ��*/
select count(Distinct publisher) from book;
/*��� ���� . �ּ�*/
select name,address from customer;
/*  2020 �� �� ~7 �� �� ���̿� �ֹ����� ������ �ֹ���ȣ*/
select orderid from orders where orderdate BETWEEN '20/07/04' AND '20/07/07';
/* 2020 �� �� ���� ~7 �� �� ���̿� �ֹ����� ������ ������ ������ �ֹ���ȣ*/
select orderid from orders where orderdate NOT BETWEEN '20/07/04' AND '20/07/07';
/*���� �达�� ���� ���ּ�*/
select name,address from customer where substr(name,0,1)='��';
/*���� �衤 ���̰� �� �Ʒ� ���� ���� �̸��� �ּ� */
select name,address from customer where substr(name,0,1)='��' AND substr(name,-1)='��';