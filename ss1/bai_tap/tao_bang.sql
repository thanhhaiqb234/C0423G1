create database student_management;
use student_management;
create table class(
code_class int	auto_increment,
name_class varchar(100),
primary key (code_class)
);
create table teacher (
code_teacher int auto_increment,
name_teacher varchar(100),
age_teacher int,
country_teacher varchar(100),
primary key (code_teacher)
);