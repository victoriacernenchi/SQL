
    Вывести мин/стоимость товаров для каждой категории
    (проекция: названиекатегории, минстоимость_товара)

    
    
    
    
    
    
    
    Вывести ТОП-3 стран по количеству доставленных заказов
SELECT 
Country,
COUNT(*) AS total_orders
FROM Orders
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Country
ORDER BY total_orders DESC
LIMIT 3;
    
    
    
    
    
    
    
    Вывести ко-во заказов у каждого менеджера (фамилияменеджера, ко-возаказов)
SELECT
LastName,
Employees.EmployeeID,
Count(*) AS total_orders
FROM Orders
Join Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Employees.EmployeeID 
Order BY total_orders DESC;
