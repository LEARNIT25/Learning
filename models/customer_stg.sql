select 
CustomerID,
FirstName,
LastName,
Email,
Phone,
Address,
City,
State,
Zipcode,
Updated_at,
concat(FirstName,'',LastName) as CustomerName
from cusromers