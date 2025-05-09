    select 
    os.storeid,
    sum(ofact.revenue) as actualsales,
    sum(qt.salestarget) as targetsales
    from 
        {{ ref("order_stg")}} as os
    join
        {{ ref("order_fact")}} as ofact on os.orderid = ofact.orderid
    join
        {{ ref("qtr_target")}} as qt on qt.storeid = os.storeid
    group by 1