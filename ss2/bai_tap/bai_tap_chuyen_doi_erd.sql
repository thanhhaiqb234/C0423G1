create database san_pham;
use san_pham;

create table phieu_xuat (
ma_phieu_xuat int auto_increment,
so_px int,
ngay_xuat date,
primary key (ma_phieu_xuat)
);
create table vat_tu(
ma_vat_tu int auto_increment,
ten_vat_tu varchar(100),
primary key (ma_vat_tu)
);
create table phieu_xuat_vat_tu(
ma_phieu_xuat int not null,
ma_vat_tu int not null,
dg_xuat int ,
sl_xuat int ,
primary key (ma_phieu_xuat,ma_vat_tu),
foreign key (ma_phieu_xuat) references phieu_xuat(ma_phieu_xuat),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu)
);
create table phieu_nhap(
ma_so_phieu_nhap int auto_increment,
so_phieu_nhap int,
ngay_nhap date,
primary key (ma_so_phieu_nhap)
);
create table vat_tu_phieu_nhap (
ma_vat_tu int not null,
ma_so_phieu_nhap int not null,
dg_nhap int,
sl_nhap int,
primary key (ma_vat_tu,ma_so_phieu_nhap),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu),
foreign key (ma_so_phieu_nhap) references phieu_nhap(ma_so_phieu_nhap)
);
create table don_dat_hang (
ma_don_dat_hang int auto_increment,
so_don_hang int,
ngay_don_hang date,
primary key (ma_don_dat_hang)
);
create table vat_tu_don_dat_hang (
ma_don_dat_hang int not null ,
ma_vat_tu int not null,
primary key (ma_don_dat_hang,ma_vat_tu),
foreign key (ma_don_dat_hang) references don_dat_hang (ma_don_dat_hang),
foreign key (ma_vat_tu) references vat_tu (ma_vat_tu)
);
create table nha_cung_cap (
ma_nha_cung_cap int auto_increment primary key,
ten_nha_cung_cap varchar (100),
dia_chi varchar(100),
foreign key (ma_nha_cung_cap) references don_dat_hang(ma_don_dat_hang)
);
create table phone (
ma_phone int auto_increment,
so_dien_thoai varchar (20),
primary key (so_dien_thoai),
foreign key (ma_phone) references nha_cung_cap(ma_nha_cung_cap)
);