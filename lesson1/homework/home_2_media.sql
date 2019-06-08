-- drop database if exists media;
-- create database if not exists media;

drop table if exists users;
create table users(
    id serial primary key ,
    name varchar(255),
    created_at datetime default CURRENT_TIMESTAMP,
    updated_at datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop table if exists keywords;
create table keywords(
    id serial primary key,
    name varchar(256),
    UNIQUE idx_name(name)
);

drop table if exists filestore;
create table filestore(
    id serial primary key,
    name varchar(256),
    description TEXT,
    user_id int unsigned not null,
    path varchar(2048) not null,
    type ENUM('photo', 'audio', 'video')
);


drop table if exists filestore_keyword;
create  table filestore_keyword(
    id serial primary key,
    store_id int unsigned,
    keyword_id int unsigned
);

-- commands
insert into keywords(name) values('key1');
insert into users(name) values('user1');
insert into filestore values(DEFAULT, 'path1', 'decription1', 1,'/opt/share/path.jpg', 'photo');
insert into filestore_keyword values (NULL, 1,1);
select * from users, keywords, filestore, filestore_keyword;
-- +----+-------+---------------------+---------------------+----+------+----+-------+-------------+---------+---------------------+-------+----+----------+------------+
-- | id | name  | created_at          | updated_at          | id | name | id | name  | description | user_id | path                | type  | id | store_id | keyword_id |
-- +----+-------+---------------------+---------------------+----+------+----+-------+-------------+---------+---------------------+-------+----+----------+------------+
-- | 1  | user1 | 2019-06-07 22:28:03 | 2019-06-07 22:28:03 | 1  | key1 | 1  | path1 | decription1 | 1       | /opt/share/path.jpg | photo | 1  | 1        | 1          |
-- +----+-------+---------------------+---------------------+----+------+----+-------+-------------+---------+---------------------+-------+----+----------+------------+

-- задание 2_1
use sample;
replace into cat select * from shop.cat;
