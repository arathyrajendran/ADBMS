use invoice;
delimiter //
create function price_range(price int)
returns varchar (6)
deterministic 
begin
if price <= 10 then
return 'low';
elseif price <=60 then 
return 'medium';
else
return 'high';
end if ;
end //
delimiter ;
select p_id,p_name,price_range(price) from product;