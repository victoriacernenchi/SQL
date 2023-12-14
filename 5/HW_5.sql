
Создать таблицы реакций и комментариев

Добавить несколько записей в каждую таблицу выше


Create Table reactions(
reaction_id int,
created_at timestamp,
value int,
author_id int,
video_id int);
Insert Into reactions(reaction_id,created_at,value,author_id,video_id)
Values
(1,current_timestamp(),7,3,3),
(2,current_timestamp(),7,5,9);


Create Table comments(
comment_id int,
created_at timestamp,
author_id int,
video_id int);

Insert Into comments(comment_id,created_at,author_id,video_id)
Values
(1,current_timestamp(),1,1),
(2,current_timestamp(),2,2);