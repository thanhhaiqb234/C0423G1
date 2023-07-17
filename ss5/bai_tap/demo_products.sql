create database demo;
use demo;

create table products (
id int auto_increment primary key ,
product_code varchar(40),
product_name varchar(45),
product_price double,
product_amount int,
product_description varchar(100),
product_status varchar(45)
); 
insert into products value
(1,'SP001','Điều Hòa',7000000,1,'Panasonic','Hàng mới chưa bóc team'),
(2,'SP002','Quạt Hơi Nước',1500000,2,'LG','Hàng mới 100%'),
(3,'SP003','Iphone 13',20000000,5,'XS Max','Hàng Mới 100%');

alter table  products  add unique index idx_products_name (product_code);

alter table products add index idx_products_name_price (product_name , product_price);

explain select * from demo.products where product_name = 'Điều Hòa' or product_price = '7000000';
-- khi tạo index thì chúng ra truy xuất các phần tử nó nhanh hơn và số lần chạy sẽ được giảm đi -- 
-- khi chúng ta chưa khơi tạo index thì số lần chạy qua các phần tử nó sẽ bằng với các phần tử có trong bảng -- 

create view products_view as select  product_code , product_name , product_price , product_status 
from products ;

select * from products_view ;
insert into products_view value 
('sp004','Tai Phone',500000,'Hàng Mới 100%');

drop view products_view ;

delimiter //
create procedure getproducts () 
begin 
select * from products ;
end //
delimiter ;

call getproducts();

delimiter //
create procedure addproducts(
in new_product_code varchar(40),
in new_product_name varchar(50),
in new_product_price double , 
in new_product_amount int ,
in new_product_description varchar(100),
in new_product_status varchar(45))
begin 
insert into products (product_code , product_name , product_price , product_amount , product_description , product_status )
value (new_product_code,new_product_name,new_product_price,new_product_amount,new_product_description,new_product_status);
end //
delimiter ;

call addproducts('Sp005','TiVi',10000000,5,'LG','Hàng Chất Lượng Cao');


delimiter //
create procedure editproducts (in new_id int , 
in new_product_code varchar(40) , 
in new_product_name varchar(50) ,
in new_product_price double ,
in new_product_amount int ,
in new_product_description varchar(100) ,
in new_product_status varchar(45)) 
begin 
update products set products.product_code = new_product_code, products.product_name = new_product_name , products.product_price 
= new_product_price , products.product_amount = new_product_amount , products.product_description = new_product_description ,
products.product_status = new_product_status where  id = new_id ;
end //
delimiter ;

call editproducts(1,'SP004','Nồi SunHao',1500000,4,'sun Hao','Hàng Việt Chất Lượng Cao');

delimiter // 
create procedure deteleproducts(in new_product_id int)
begin
delete from products where id = new_product_id ;
end //
delimiter ;

call deteleproducts(4) ; 


