use INVOICE;
desc customer;
create table cust_update(cust_id int primary key auto_increment,name varchar(10),address varchar(20),city varchar(20),ph_no bigint);
delimiter//
create trigger cust_update
after update
on custmer for each row 
begin
insert into cust_update
set cust_id=old.cust_id,name,address=old.address,cityt=old,city,ph_no=old.ph_no;
end
//
delimeter;
select * from customer;
update customer set address='whitehouse'where name='anu';
select * from cust_update; 