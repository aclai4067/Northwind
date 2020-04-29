-- What is the undiscounted subtotal for each Order (identified by OrderID).

select OrderID, Sum(UnitPrice*Quantity) as SubtotalBeforeDiscount
from [Order Details]
group by OrderID