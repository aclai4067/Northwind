-- What is the cost after discount for each order? Discounts should be applied as a percentage off.

select OrderID, round(Sum((UnitPrice*(1-Discount))*Quantity), 2) as SubtotalWithDiscount
from [Order Details]
group by OrderID