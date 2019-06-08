--docker run -it --link some-mysql --rm mysql bash

-- mysqldump -h some-mysql -u root -p mysql > mysql.sql
-- mysql mysql < hello.sql

-- create database shop;

-- show databases;

-- # где храняться сами базы
-- show variables like 'datadir';
-- +---------------+-----------------+
-- | Variable_name | Value           |
-- +---------------+-----------------+
-- | datadir       | /var/lib/mysql/ |
-- +---------------+-----------------+
-- 1 row in set

-- drop database foo;
-- show tables;
-- show tables from mysql;
--
-- create table if not exists users (k INT);
-- describe users;
--
-- # все реалиционки
-- select * from information_schema.Schemata;
-- select * from information_schema.TABLES where TABLE_SCHEMA = 'shop';
--

-- # HOMEWORK
create database example;
create  TABLE users (
    ip int not null  primary key,
    name varchar(255) not null
);

mysqldump -h some-mysql -u root -p example > example.sql
create database sample;
mysql sample < example.sql
mysqldump mysql help_keyword --where="true limit 100"> mysql_limit.sql


-- # step 2
-- alter table cat change id id int unsigned not null;
-- select '2018-01-01 0:00:00' + interval 1 week;
-- select '2018-01-01 0:00:00' + interval '1-1' YEAR_MONTH;
-- alter table cat add collect JSON;
-- insert into cat values (null, 'test', '{"first": "hello", "second": "worls"}');
-- select collect->>"$.first" from cat;
--

# HOMEWORK
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
