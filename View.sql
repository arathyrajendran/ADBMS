create view customer as select name from customer natural join invoice_master;
select* from customers;
create view invoice_product as select pname,quantity,inv_id,p_id as product_id from product natural join invoice_item;
select * from invoice_product;