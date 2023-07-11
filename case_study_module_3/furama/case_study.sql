create database furama;
use furama;
create table vi_tri(
ma_vi_tri int not null auto_increment primary key,
ten_vi_tri varchar(40) not null
); 
create table trinh_do(
ma_trinh_do int not null auto_increment primary key,
ten_trinh_do varchar(20) not null
);
create table bo_phan(
ma_bo_phan int not null auto_increment primary key,
ten_bo_phan varchar(40) not null
);
create table nhan_vien(
ma_nhan_vien int not null auto_increment primary key,
ho_va_ten varchar(100) not null,
ngay_sinh datetime not null,
so_cmnn varchar(12) not null,
luong int not null, 
so_dien_thoai varchar(10) not null,
email varchar(100)not null,
dia_chi varchar(100) not null,

);