select orderid, custid, saleprice from orders md where saleprice>(select avg(saleprice) from orders so where md.custid=so.custid);

select avg(saleprice) from orders where custid='1';

select sum(saleprice) "total" from orders where custid in (select custid from customer where address like '%¥Î«—πŒ±π%');

select custid from customer where address like '%¥Î«—πŒ±π%';

select * from orders;

select orderid, saleprice from orders where saleprice >all (select saleprice from orders where custid='3');

select sum(saleprice) "total" from orders od where exists(select * from customer cs where address like '%¥Î«—πŒ±π%' and cs.custid=od.custid);