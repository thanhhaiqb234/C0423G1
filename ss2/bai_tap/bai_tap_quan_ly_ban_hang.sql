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
orderr_data date,
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