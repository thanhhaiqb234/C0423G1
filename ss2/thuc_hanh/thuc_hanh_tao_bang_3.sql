create database quanlysinhvien;
use quanlysinhvien;
create table class(
classID int not null auto_increment,
classname varchar(60) not null,
startdate datetime not null,
statu bit
);

create table studen (
studenID int not null auto_increment primary key,
studenname varchar(30) not null,
address varchar(50),
phone varchar(20),
statu bit,
classID int not null,
foreign key (classID)references class (classID) 
);

create table Subjec (
subID int not null auto_increment primary key,
subname varchar(60) not null,
credit tinyint not null default 1 check (credit >=1),
statu bit default 1
);

create table mark (
marID int not null auto_increment primary key,
subID int not null,
studenID int not null,
mark float default 0 check (mark between 0 and 100),
examtimes tinyint default 1,
foreign key (subID) references subject (subID),
foreign key (studenID) references stubject (studenID)
);