-- I need a list of sales figures broken down by category name. 
-- Include the total amount sold over all time and the total number of items sold.

select c.CategoryName, round(Sum((od.UnitPrice*(1-od.Discount))*od.Quantity), 2) as TotalSales, sum(od.Quantity) as TotalItemsSold
from [Order Details] od
	join Products p
		on od.ProductID = p.ProductID
	join Categories c
		on p.CategoryID = c.CategoryID
group by c.CategoryName