    select 
        c.CustomerID,
        c.FirstName,
        c.LastName,
        c.Email,
        c.Phone,
        c.Address,
        c.City,
        c.State,
        c.Zipcode,
        c.Updated_at,
        concat(FirstName,' ',LastName) as CustomerName
from 
    {{source("lending","cust")}} as c