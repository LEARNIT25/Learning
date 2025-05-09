
{# {{ config(materialized = 'table')}} #}

with customers as (

    select 
        12345678 as CustomerID,
        'Debasis' as FirstName,
        'Khamari' as LastName,
        'learning.it.blr@gmail.com' Email,
        0000000000 as Phone,
        'Judicial Layout' as Address,
        'Bangalore' as City,
        'Karnataka' as State,
        560062 as Zipcode,
        current_date() as Updated_at,
        concat(FirstName,' ',LastName) as CustomerName
)

select * from customers