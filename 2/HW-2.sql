
1. Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT 
ProductName,
Price * 1.09 As Price_USD
FROM Products
Order BY Price DESC
Limit 1 offset 1;



2. Вывести два самых дорогих товара из категории Beverages из USA

   
SELECT * 
FROM Products
Join Suppliers ON Products.SupplierID = Suppliers.SupplierID
Join Categories ON Products.CategoryID = Categories.CategoryID
Where CategoryName in ("Beverages")
and
Country in ("USA")
Order BY Price DESC
LIMIT 2;



3. Удалить товары с ценой менее 50 EUR

DELETE FROM Products
WHERE Price >= 50;


4.  Вывести список стран, которые поставляют морепродукты

SELECT 
Country,
FROM Suppliers
Join Categories ON Supliers.CategoryID = Categories.CategoryID
Where CategoryName in ("Seafood");




5. Очистить поле ContactName у всех клиентов не из China

UPDATE Customers
SET ContactName = ""
WHERE
NOT Country = "China";






Table players {
  player_id integer
  player_nickname varchar(128)
  created_at timestamp
  player_email varchar(128)
  is_blocked bool
  pictures_id pictures_id
}

Table match {
  match_id integer
  map map_id
  player_1 player_id
  player_2 player_id
  winner player_id
  created_at timestamp
}

Table chat {
  chat_id integer
  history text
  is_deleted bool
  messege_id integer
  created_at timestamp
}
Table messege {
  messege integer
  created_at timestamp
  is_deleted bool
  is_read bool
  author player_id
  reaction reaction_id
}
Table maps{
  map_id integer
  map_url varchar(128)
  history text
  created_at timestamp
  profit_id profit_id
}
