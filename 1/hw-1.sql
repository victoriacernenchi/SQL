1.Вывести название и стоимость товаров от 20 EUR. 
SELECT 
ProductName,
Price
FROM Products
where Price >=20;


2.Вывести страны поставщиков.
SELECT 
Country
FROM Suppliers;


3.В упорядоченном по стоимости виде вывести название и стоимость товаров от всех поставщиков, кроме поставщика 1. 
SELECT
ProductName,
Price,
SupplierID
FROM Products
where 
not SupplierID =1
Order by Price ASC;


4.Вывести контактные имена клиентов, кроме тех, что из France и USA.
SELECT 
CustomerName,
Country
FROM Customers
where 
Not Country = "France"
And
Not Country = "USA";


5.Вывести два самых дорогих товара из категории 4
SELECT*
FROM Products
WHERE
CategoryID = 4 
ORDER BY Price DESC 
LIMIT 2;



1. Загрузка видео:
   - Create (Создание) - пользователь загружает видео на платформу.

2. Обработка и кодирование видео:
   - Update (Обновление) - система обрабатывает и кодирует загруженное видео в различные форматы для оптимального воспроизведения.

3. Управление метаданными видео:
   - Create (Создание) - пользователь добавляет метаданные, такие как название, описание, теги, категория и т.д., для загруженного видео.
   - Read (Чтение) - пользователи могут просматривать метаданные видео.

4. Распространение и публикация видео:
   - Create (Создание) - пользователь делает видео публичным или доступным для определенных пользователей.
   - Read (Чтение) - пользователи могут просматривать и обнаруживать видео.

5. Поиск видео:
   - Read (Чтение) - пользователи могут искать видео по различным критериям, таким как название, теги, автор и т.д.

6. Комментирование видео:
   - Create (Создание) - пользователь оставляет комментарий под видео.
   - Read (Чтение) - пользователи могут просматривать комментарии под видео.

7. Оценка видео:
   - Update (Обновление) - пользователь ставит оценку видео (лайк, дизлайк).
   - Read (Чтение) - пользователи могут видеть общую оценку видео.

8. Подписка на каналы и управление подписками:
   - Create (Создание) - пользователь подписывается на определенный канал для получения обновлений.
   - Read (Чтение) - пользователи могут видеть список своих подписок и обновления от каналов, на которые они подписаны.
   - Delete (Удаление) - пользователь может отменить подписку на канал.

9. Воспроизведение видео:
   - Read (Чтение) - пользователи могут воспроизводить видео на платформе.

10. Управление аккаунтом пользователя:
    - Update (Обновление) - пользователь может изменять свои данные, такие как имя, фото профиля, пароль и т.д.
    - Delete (Удаление) - пользователь может удалить свой аккаунт с платформы.

Эти процессы соответствуют базовым CRUD операциям (Create, Read, Update, Delete), которые включают создание, чтение, обновление и удаление данных в системе видео-хостинга.