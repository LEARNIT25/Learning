{{config(materialized ='table')}}

with test as 
(    
    select 
        c.customerID,
        c.FirstName
    from {{source("lending","cust")}} as c
)        

select * from test
