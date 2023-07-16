create database quan_ly_sinh_vien ;
use quan_ly_sinh_vien;

create table class (
class_id int not null auto_increment primary key ,
class_name varchar(60) not null,
start_data datetime not null,
statuss bit 
);

create table student (
student_id int not null auto_increment primary key,
student_name varchar(30) not null ,
address varchar (50),
phone varchar (20),
statuss bit, 
class_id int not null,
foreign key (class_id) references class (class_id)
);

create table subjectt (
sub_id int not null primary key,
sub_name varchar (30) not null,
credit tinyint not null default 1 check (credit >= 1),
subjectt bit default 1
);

create table mark (
mark_id int not null auto_increment primary key,
sub_id int not null,
student_id int not null,
mark float default 0 check (mark between 0 and 100),
examTimes tinyint default 1,
unique (sub_id,student_id),
foreign key (sub_id) references subjectt(sub_id),
foreign key (student_id) references student (student_id)
);
insert into quan_ly_sinh_vien.class value 
(1,'A1','2008-12-02',1),
(2,'A2','2008-12-22',1),
(3,'B3',current_date,0);
insert into quan_ly_sinh_vien.student (student_name,address,phone,statuss,class_id)
value ('Hung', 'Ha Noi', '0912113113', 1, 1);
insert into quan_ly_sinh_vien.student (student_name,address,statuss,class_id)
value ('Hoa', 'Hai phong', 1, 1);
insert into quan_ly_sinh_vien.student (student_name,address,phone,statuss,class_id)
value ('Manh', 'HCM', '0123123123', 0, 2);
insert into quan_ly_sinh_vien.subjectt value 
(1, 'CF', 5, 1),
(2, 'C', 6, 1),
(3, 'HDJ', 5, 1),
(4, 'RDBMS', 10, 1);
insert into quan_ly_sinh_vien.mark (sub_id,student_id,mark,examTimes)value 
(1, 1, 8, 1),
(1, 2, 10, 2),
(2, 1, 12, 1);

select *
from quan_ly_sinh_vien.student
where student.student_name like 'h%';

select *
from quan_ly_sinh_vien.class
where month(start_data) = 12;

select *
from subjectt
where subjectt.credit = 3 or  subjectt.credit = 5 ;

SET SQL_SAFE_UPDATES = 0;
UPDATE vinasupport_options SET my_url = 'https://vinasupport.com' WHERE my_url = 'https://example.com';
SET SQL_SAFE_UPDATES = 1;
update student
set student.class_id = '2'
where student.student_name like 'Hung' ;

select student.student_name,subjectt.subjectt
from student
left join subjectt
on student.student_id = subjectt.sub_id ; 

select * from subjectt where credit = (select max(credit) from subjectt ); 

select sub_name from subjectt where credit = (select max(credit) from subjectt);

select * from subjectt where credit = (select avg(credit) from subjectt )