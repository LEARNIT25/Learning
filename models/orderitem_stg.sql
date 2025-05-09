with orderitems as (

select
456 orderitemid,
12345 orderid,
001 productid,
100 quantity,
100 unitprice,
quantity*unitprice as totalprice,
current_date as Updated_at

)


select * from orderitems