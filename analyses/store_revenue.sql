    select 
    os.storeid,
    sum(ofact.revenue) as actualsales,
    from 
        {{ ref("order_stg")}} as os
    join
        {{ ref("order_fact")}} as ofact on os.orderid = ofact.orderid
    group by 1