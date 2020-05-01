-- What are our 10 most expensive products

select top 10 *
from Products
order by UnitPrice desc