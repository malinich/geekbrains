-- # HOMEWORK
create database example;
create  TABLE users (
    ip int not null  primary key,
    name varchar(255) not null
);

mysqldump -p example > example.sql
create database sample;
mysql sample < example.sql
mysqldump mysql help_keyword --where="true limit 100"> mysql_limit.sql
