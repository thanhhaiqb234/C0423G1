create database quan_ly_ban_hang;
use quan_ly_ban_hang;

create table customer (
customer_id int auto_increment primary key,
customer_name varchar (100),
customer_age int not null
);
create table orderr (
orderr_id int auto_increment,
customer_id int not null,
orderr_data datetime,
orderr_totalprice int,
primary key (orderr_id,customer_id),
foreign key (customer_id) references customer (customer_id)
);
create table product (
product_id int auto_increment primary key,
product_name varchar (100),
product_price int not null
);
create table orden_dettail (
orderr_id int not null,
product_id int not null,
orden_dettail_qty int not null,
primary key (orderr_id,product_id),
foreign key (orderr_id) references orderr (orderr_id),
foreign key (product_id) references product (product_id)
);
insert into customer value (1,'Minh Quang',10),
(2,'Ngoc Oanh',20),
(3,'Hong Ha',50);
insert into orderr value 
(1,1,'2006-03-21',null),
(2,2,'2006-03-23',null),
(3,1,'2006-03-16',null);
insert into product value 
(1,'May Giat',3),
(2,'Tu Lanh',5),
(3,'Dieu Hoa',7),
(4,'Quat',1),
(5,'Bep Dien',2);
insert into orden_dettail value
(1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);

select orderr.orderr_id , orderr.orderr_data , orderr.orderr_totalprice
from orderr;

select customer.customer_name ,  product.product_name
from  customer
left join product
on customer.customer_id = product.product_id ;

