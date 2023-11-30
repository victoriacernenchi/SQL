
1.Вывести ко-во заказов, которое компания Speedy Express доставила в Brazil

SELECT 
COUNT(*) AS total_orders
FROM Shippers
WHERE 
ShipperName IN ("SpeedyExpress")
JOIN Suppliers ON Shippers.SupplierID = Suppliers.SupplierID
WHERE Suppliers.SupplierID IN ("Brazil");????
    
    
 2.Вывести среднюю стоимость напитка (Beverages) из Brazil

SELECT 
Suppliers.SupplierCountry,
Categories.CategoryName,
AVG(Products.Price) AS avg_price
FROM Products
Join Suppliers ON Products.SupplierID = Suppliers.SuppliersID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Suppliers.SuppliersID IN ("Brazil")
WHERE Categories.CategoryID IN ("Beverages");????


3.Расчитать З/П сотрудника с фамилией Davolio (проекция: зп, фамилиясотрудника)
SELECT 
Salary,
LastName,
FirstName,
AVG(salary) AS avg_salary
FROM Employees;?????