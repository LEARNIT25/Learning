with orders as (

select 
12345 orderid,
current_date as orderdate,
12345678 as customerid,
123 as employeeid,
007 storeid,
01 as status,
case 
    when status= '01' then 'In-Progress'
    when status= '02' then 'Completed'
    when status= '03' then 'Cancelled'
    else null
end as statusdesc,
current_date as Updated_at
)

select * from orders