create database Oracle_CHTienLoi
go

use Oracle_CHTienLoi
go

create table ChiNhanh
(
	MaChiNhanh varchar(20) primary key,
	TenChiNhanh nvarchar(50),
)
go

create table ChucVu
(
	MaChucVu varchar(20) primary key,
	TenChucVu nvarchar(20)
)
go

create table NguoiDung
(
	MaND varchar(20) primary key,
	HoTen nvarchar(100) not null,
	MaChiNhanh varchar(20),
	GioiTinh int not null,
	NgaySinh Date not null,
	SDT int,
	DiaChi nvarchar(100) not null,
	MaChucVu varchar(20)
)
go

create table SanPham
(
	MaSP varchar(20),
	TenSP nvarchar(100),
	SoLuong int,
	GiaSP int
)
go

create table DonHang
(
	MaDH varchar(20) primary key,
	TenKhachHang nvarchar(100),
	NgayBan date not null,
	SDT int,
	DiaChi nvarchar(100),
	MaNV varchar(20),
	MaChiNhanh varchar(20)
)
go