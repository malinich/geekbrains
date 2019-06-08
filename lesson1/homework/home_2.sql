-- HOMEWORK
alter table catalogs drop index unique_name;
insert into catalogs values(DEFAULT, NULL);
insert into catalogs values(DEFAULT, '');
insert into catalogs values(DEFAULT, '');
select * from catalogs;
+----+------------+
| id | name       |
+----+------------+
| 1  | Процессоры |
| 2  | Мат.платы  |
| 3  | Видеокарты |
| 4  |            |
| 5  | <null>     |
| 6  |            |
+----+------------+

update catalogs set name = 'empty' where name is null or name = '';
select * from catalogs;
+----+------------+
| id | name       |
+----+------------+
| 1  | Процессоры |
| 2  | Мат.платы  |
| 3  | Видеокарты |
| 4  | empty      |
| 5  | empty      |
| 6  | empty      |
+----+------------+
