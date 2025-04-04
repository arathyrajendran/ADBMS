use INVOICE;
select * from invoice_master;
select pname,quantity from product natural join invoice_item;
select * from invoice.master natural join invoice_item natural join product natural join customer where inv_date='2021-02-21';
select p_name,cust_name, inv_date from customer natural join product natural join invoice_master natural join invoice_item where pname='pen';
select * from customer left join invoice_master natural join invoice_item natural join product on customer.cust_id-invoice_master.cust_id;
select * from invoice_master;
