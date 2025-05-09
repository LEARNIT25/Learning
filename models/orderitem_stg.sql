select
orderitemid,
orderid,
productid,
quantity,
unitprice,
quantity*unitprice as totalprice,
Updated_at
from orderitems