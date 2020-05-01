-- In which quarter in 1997 did we have the most revenue

select top 1 datepart(quarter, o.OrderDate) as SalesQtr1997,round(Sum((od.UnitPrice*(1-od.Discount))*od.Quantity), 2) as QuarterlySales 
from [Order Details] od
	join Orders o
		on od.OrderID = o.OrderID
where year(o.OrderDate) = 1997
group by datepart(quarter, o.OrderDate)
order by QuarterlySales desc