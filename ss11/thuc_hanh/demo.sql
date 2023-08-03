create database demo;
use demo;

create table users (
id int(3) not null auto_increment primary key,
namee varchar(120) not null ,
email varchar(220) not null,
country varchar(120) not null
);
insert into users (namee,email,country) value ('Hải', 'Thanhhai@gamil.com','Việt Nam');
insert into users(namee,email,country) value ('Kante','Kante@gmail.com','Kenia');

select*
from users