-- Which products have a price that is higher than average

select AVG(UnitPrice) as averageprice
into #avgPrice
from Products

select Products.*  
from Products, #avgPrice
where UnitPrice > #avgPrice.averageprice
order by UnitPrice