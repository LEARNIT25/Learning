select 
orderid,
orderdate,
customerid,
employeeid,
storeid,
status as statuscode,
case 
    when status= '01' then 'In-Progress'
    when status= '02' then 'Completed'
    when status= '03' then 'Cancelled'
    else null
end as statusdesc,
Updated_at
from orders