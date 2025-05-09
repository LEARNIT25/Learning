select
oi.orderitemid,
oi.orderid,
oi.productid,
oi.quantity,
oi.unitprice,
quantity*unitprice as totalprice,
oi.Updated_at
from
    {{source("lending","orditm")}} as oi