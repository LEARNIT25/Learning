select 
    od.orderid,
    od.orderdate,
    od.customerid,
    od.employeeid,
    od.storeid,
    od.status,
case 
    when status= '01' then 'In-Progress'
    when status= '02' then 'Completed'
    when status= '03' then 'Cancelled'
    else null
end as statusdesc,
od.Updated_at

from 
    {{ source("lending","ord")}} as od