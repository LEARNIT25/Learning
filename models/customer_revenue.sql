select
os.customerid,
c.CustomerName,
sum(os.ordercount) as ordercount,
sum(os.revenue) as revenue
from
    {{ref("order_fact")}} os
join
    {{ref("customer_stg")}} c
on os.customerid = c.customerid
group by
os.customerid,
c.CustomerName