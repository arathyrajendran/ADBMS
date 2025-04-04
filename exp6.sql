use INVOICE;
select p_name from customer where cust_id in(select cust_id from invoice_item_master where invoice_master where inv_date-'2021-02-21');
select p_name,price from product where p_id in(select p_id from invoice_item);
select pname from product where p_id in(select p_id from  invoice_item where quantity>3);
select pname from product where p_id not in(select p_id from invoice_item);
(select cust_id from invoice_master where inv_id in 
(select inv_id from invoice_item where p_id in
(select p_id from product where pname='pen')&
(select p_id from product where p_name='perfume')));
select * from PRODUCT;
select distinct name from customer where cust_id in
(select cust_id from invoice_master where inv_id in
(select inv_id from invoice_item where quantity>=2);
select * from CUSTOMER;
SELECT * from PRODUCT;
SELECT * FROM invoice_master;

