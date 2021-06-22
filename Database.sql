DROP TABLE CHITIETHD;
DROP TABLE HOADON;
DROP TABLE NHANVIEN;
DROP TABLE KHACHHANG;
DROP TABLE HANGHOA;
DROP TABLE NHACUNGCAP;
DROP TABLE LOAI;
DROP TABLE CHUCVU;
DROP TABLE CHINHANH;



CREATE TABLE CHINHANH
(
	MaChiNhanh NUMBER NOT NULL,
	TenChiNhanh NVARCHAR2(50) NOT NULL,
    	CONSTRAINT FK_Chi_Nhanh PRIMARY KEY (MaChiNhanh)
);

INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (1, 'Big C Miền Đông');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (2, 'Big C Âu Cơ');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (3, 'Big C Phú Thạnh');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (4, 'Big C Trường Chinh');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (5, 'Big C Gò Vấp');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (6, 'Big C Nguyễn Thị Thập');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (7, 'Big C Thảo Điền');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (8, 'Big C An Phú');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (9, 'Big C An Lạc');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (10, 'Big C Bình Dương');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (11, 'Big C Bắc Giang');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (12, 'Big C Quy Nhơn');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (13, 'Big C Lê Trọng Tấn');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (14, ' Big C Long Biên');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (15, ' Big C Mê Linh');



CREATE TABLE CHUCVU
(
	MaChucVu VARCHAR2(10) NOT NULL,
	TenChucVu NVARCHAR2(50) NOT NULL,
     	CONSTRAINT FK_Chuc_Vu PRIMARY KEY (MaChucVu)
);


INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV01', 'Nhân Viên Bán Hàng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV02', 'Nhân Viên Quản Lí');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV03', 'Nhân Viên Thu Ngân');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV04', 'Nhân Viên Bảo Vệ');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV05', 'Nhân Viên Tư Vấn');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV06', 'Nhân Viên Kế Toán');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV07', 'Nhân Viên Kiêm Kê');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV08', 'Tổ Trưởng Quản Lí');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV09', 'Tổ Phó Quản Lí');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV10', 'Tổ Trưởng Bán Hàng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV11', 'Tổ Phó Bán Hàng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV12', 'Tổ Trưởng Thu Ngân');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV13', 'Tổ Phó Thu Ngân');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV14', 'Tổ Trưởng An Ninh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV15', 'Tổ Phó An Ninh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV16', 'Kế Tóan Trưởng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV17', 'Kế Tóan Lương');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV18', 'Nhân Viên Kho');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV19', 'Giám Đốc Chi Nhánh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV20', 'Quản Lý Chi Nhánh');



CREATE TABLE NHANVIEN
(
	MaNV NUMBER NOT NULL,
	HoTen NVARCHAR2(100) NOT NULL,
  GioiTinh NUMBER(1) NOT NULL,
	NgaySinh DATE ,
	SDT VARCHAR2(24),
	DiaChi NVARCHAR2(100) ,
  TenDN VARCHAR2(20) NOT NULL,
  MatKhau LONG RAW ,
	MaChiNhanh NUMBER NOT NULL,
	MaChucVu VARCHAR2(10) NOT NULL,
  CONSTRAINT FK_NV PRIMARY KEY (MaNV),
  CONSTRAINT FK_NV_CN FOREIGN KEY (MaChiNhanh) REFERENCES ChiNhanh(MaChiNhanh),
  CONSTRAINT FK_NV_CV FOREIGN KEY (MaChucVu) REFERENCES ChucVu(MaChucVu)
);

INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu ) VALUES (1, N'Nguyễn Quốc Cường', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 1,'CV01');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu ) VALUES (2, N'Nguyễn Thị Kim Anh', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 2,'CV02');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu ) VALUES (3, N'Nguyễn Duy Minh', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 1,'CV01');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu ) VALUES (4, N'Nguyễn Minh Quốc', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 1,'CV02');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu ) VALUES (5, N'Dương Thái Nhật', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 1,'CV01');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu )  VALUES (6, N'Võ Lê Ngọc Diệp', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 1,'CV01');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu )  VALUES (7, N'Dương Tấn Thiên', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 1,'CV02');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu )  VALUES (8, N'Ngô Đức Anh', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quân 11','duocanh@', 'abcd12', 7,'CV02');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu )  VALUES (9, N'Trần Văn Nhật Tân', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '121 Đường số 6 P Linh Tây','employee1@', 'abcd12', 8,'CV02');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu )  VALUES (10, N'Đỗ Thị Bảo Quyên', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '291/12/5 Nguyễn Quốc Toàn P7 ','employee2@', 'abcd12', 9,'CV02');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu )  VALUES (11, N'Hồ Ngọc Hà', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '45 Thảo Điền Q10','employee3@', 'abcd12', 8,'CV02');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu )  VALUES (12, N'Nguyễn Hoành Anh', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quân 11','employee4@', 'abcd12', 7,'CV02');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu )  VALUES (13, N'Lý Hoàng Mai', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '230 An Dường Vương P11 A5','employee5@', 'abcd12', 9,'CV02');



CREATE TABLE LOAI(
  MaLoai NUMBER NOT NULL,
  TenLoai NVARCHAR2(30) NOT NULL,
  CONSTRAINT pk_loai PRIMARY KEY (MaLoai)
);

INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (1, 'Thực Phẩm');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (2, 'Khăn giấy, giấy vệ sinh');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (3, 'Mỹ Phẩm');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (4, 'Văn Phòng Phẩm');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (5, 'Bàn Chải, Kem Đánh Răng');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (6, 'Thực Phẩm Khô');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (7, 'Nước Giải Khát');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (8, 'Sữa');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (9, 'Bánh Kẹo');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (10, 'Mì Gói');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (11, 'Dầu Ăn');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (12, 'Nước xả vải');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (13, 'Đồ gia dụng');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (14, 'Nước rửa tay');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (15, 'Bột giặt');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (16, 'Sữa tắm');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (17, 'Dầu gội');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (18, 'Nước tăng lực');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (19, 'Sữa');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (20, 'Thiết bị y tế');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (21, 'Rau xanh');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (22, 'Hoa Quả');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (23, 'Mứt');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (24, 'Bánh');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (25, 'Kẹo');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (26, 'Khẩu trang');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (27, 'Quần áo người lớn');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (28, 'Quần áo trẻ em');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (29, 'Thiết bị điện tử');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (30, 'Đồ công nghệ');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (31, 'Đồ trang sức');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (32, 'Đồ chơi');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (33, 'Thức ăn đóng hộp');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (34, 'Thức ăn có sẵn');

CREATE TABLE NHACUNGCAP(
  MaNCC VARCHAR2(10) NOT NULL,
  TenCongTy NVARCHAR2(50) ,
  Email VARCHAR2(50) ,
  DienThoai VARCHAR2(24) ,
  DiaChi NVARCHAR2(100) ,
  CONSTRAINT pk_ncc PRIMARY KEY (MaNCC)
);

INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'ESHOP', N'ESHOP', N'eshop@gmail.com', N'1654651326', N'TPHCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'KENTA', N'KENTA', N'kenta@gmail.com', N'653256565', N'TPHCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'SENDO', N'SENDO', N'sendo@gmail.com', N'2356562323', N'TPHCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'YAME', N'YAME', N'yame@gmail.com', N'32565365323', N'BÌNH DƯƠNG');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'CD', N'Cp Nước Giải Khát Chương Dương', N' info@cdbeco.com.vn', N'( 84-8) 3836 7518', N'577 Hùng Vương, P. 12, Quận 6 ');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'DBC', N'Công Ty Tnhh Nước Giải Khát Delta', N'delta@gmail.com', N'0723827010', N'	Số 42, Võ Ngọc Quận, Phường 6, , Việt Nam');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'KTCFOOD', N'Thực Phẩm Đóng Hộp KTC Kiên Giang', N'sale@ktcfood.com.vn', N' 0297.3617724', N'Khu Cảng cá Tắc Cậu, Châu Thành, Kiên Giang');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'VEGETIGI', N'Công Ty Xuất Khẩu Rau Quả Tiền Giang', N'info@vegetigi.com', N' (84.273) 3834 677', N' Kilômét số 1977, , Tiền Giang');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'DOVECO ', N'Công Ty CP Thực Phẩm Xuất Khẩu Đồng Giao', N'sales@doveco.com.vn', N'(+84) 229 3770 353', N' Phường Trung Sơn,Tam Điệp, Ninh Bình');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'SNF', N'Công Ty TNHH Thực Phẩm Dinh Dưỡng Sài Gòn', N'yame@gmail.com', N'(84. 0650) 3737 692', N' KCN Sóng Thần 2, Dĩ An, Bình Dương');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'SW', N'Công Ty TNHH Saigon Ve Wong', N'yame@gmail.com', N'(028) 37195550, 37195554', N'1707 Quốc Lộ 1A, P. An Phú Đông, Q. 12, Tp. Hồ Chí Minh (TPHCM)');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'BT', N'CÔNG TY CỔ PHẦN RAU QUẢ BÌNH THUẬN', N'hoangrauqua@fruitsandgreens.com', N'0913 932 446', N'107 Đặng Văn Lãnh, Phường Phú Tài, , Tỉnh Bình Thuận');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'JVS', N'CÔNG TY CỔ PHẦN PHÂN PHỐI ĐIỆN TỬ JVS', N'info@jvs.vn', N'32565365323', N'24 Giai Phóng, P.4, Q. Tân Bình, Tp HCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'PANASONIC', N'Công ty TNHH Panasonic Việt Nam', N' customer@vn.panasonic.com', N'(+84) 024 3955 0111', N'	Lô J1-J2 Khu công nghiệp Thăng Long,  Hà Nội, Việt Nam.');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'THAIPRO,', N'Công ty TNHH Thaipro', N'thaipro@gmail.com', N'32565365323', N'GD2-14, Khu Công nghiệp Ngọc Hồi, Thanh Trì, Hà Nội.');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'SAMSUNG', N'Công ty TNHH Điện Tử Samsung', N'samsung@gmail.com', N' +84-2839157310', N'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'TPTH', N'Công ty Cổ phần Thực phẩm Thiên Hương', N' contact@thienhuongfood.com.vn', N'028 37171449', N'Số 1 Lê Đức Thọ, Khu Phố 02, Tân Thới Hiệp, Quận 12, TP. Hồ Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'Vifon', N'Công ty Cổ phần Kỹ nghệ thực phẩm Việt Nam ', N'vifon@vifon.com.vn', N'028 38153933', N'913 Trường Chinh, P. Tây Thạnh, Q. Tân Phú, TP. Hồ Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'Acecook', N'Công ty Cổ phần Acecook Việt Nam', N'acecook@gmail.com', N'028 3 815 4064', N' Lô II-3, Đường số 11, , P.Tây Thạnh, Q. Tân Phú, TP. Hồ Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'MaSan', N'Công ty Cổ phần Hàng tiêu dùng MaSan', N'danielle@msn.masangroup.com', N' 0286 2555 660', N'Tầng 12, tòa nhà MPlaza Saigon, Quận 1, TP. Hồ Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'PHUCHAO', N'Công ty TNHH Sản xuất thương mại Phúc Hảo', N'info@phuchaonoodles.com.vn', N'0932.704.724', N' 347 Hồ Văn Tắng, Huyện Củ Chi, TP. Hồ Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'Micoem', N'Công ty Cổ phần công nghệ thực phẩm Châu Á', N'micoem@micoem.vn', N'02223 714 146', N'Số 4 Bạch Đằng, P.Thạch Thang, Q. Hải Châu, TP Đà Nẵng');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'Asia Foods', N'Cty CP Thực phẩm Á Châus', N'info@asiafoods.vn', N'028 4450 0588 ', N'801-804 Tầng 8, Saigon Trade Center, TP. Hồ Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N' Miliket', N'Công ty Cổ phần lương thực thực phẩm Colusa', N'colusa@comifood.com', N'028 3896 6835', N'1230 Kha Vạn Cân, Linh Trung, Thủ Đức, TP. Hồ Chí Minh');


CREATE TABLE HANGHOA (
  MaHH NUMBER(10) NOT NULL,
  TenHH NVARCHAR2(60) NOT NULL,
  MaLoai NUMBER NOT NULL,
  SoLuong NUMBER(10),
  DonGia FLOAT ,
  GiamGia FLOAT ,
  MoTa NVARCHAR2(1000),
  MaNCC VARCHAR2(10) NOT NULL,
  CONSTRAINT pk_hh PRIMARY KEY (MaHH),
  CONSTRAINT fk_hh_loai FOREIGN KEY (MaLoai) REFERENCES LOAI(MaLoai),
  CONSTRAINT fk_hh_ncc FOREIGN KEY (MaNCC) REFERENCES NHACUNGCAP(MaNCC)
);

INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (1, N'MÌ ĂN LIỀN MILIKET', 10, 1500, 0, N' VẮT MÌ - Bột mì, shortening, tinh bột khoai mì, muối, đường, chất ổn định (501(i), 452(i), 466), chất tạo xốp (500(i)), phẩm màu tự nhiên (160a(ii), 160c, 100(i)), bột tôm, chất chống oxy hoá (321). ', N'PHUCHAO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (2, N'MÌ ĂN LIỀN HẢO HẢO', 10,  3500, 0, N'ẮT MÌ - Bột mì (bổ sung vi chất (kẽm, sắt)), dầu thực vật (dầu cọ, chất chống oxy hoá (BHA (320), BHT (321))), tinh bột, muối, đường, nước mắm, chất điều vị (mononatri glutamat (621)), chất ổn định (pentanatri triphosphat (451(i), ', N'PHUCHAO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (3 ,N'MÌ ĂN LIỀN TÔM CHUA CAY', 10, 2500, 0, N'Sợi mì 3 Miền được làm bột khoai tây, bột mì, màu tự nhiên, vitamin B1, B2, B3, B6, B9… trở nên dai, mềm hấp dẫn. ', N'Micoem');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (4, N'MÌ ĂN LIỀN OMAICHI BÒ HẦM', 10 , 5000, 0, N'Mì Omachi Xốt Bò Hầm sinh ra từ lúa mì và tinh chất khoai tây, hòa quyện với trứng, từng sợi mì Omachi vàng ươm dai ngon nay còn được đắm mình trong nước cốt từ thịt và xương nên càng đậm đà hấp dẫn ', N'PHUCHAO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (5 ,N'MÌ ĂN LIỀN OMACHI TRỘN', 10, 5000, 0, N'Mì Omachi xốt Spaghetti vị bò với sợi mì mềm, dai, được làm từ khoai tây tươi chọn lọc, kết hợp với nước xốt được chế biến từ thịt bò bằm và cà chua tươi làm nên hương vị đặc trưng của nước Ý. ', N'Micoem');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (6, N'MÌ ĂN LIỀN A ONE', 10, 3000, 0, N'Bột mì, dầu shortening, muối, chất điều vị: Monosodium glumate (E621), đường , bột tiêu đen, bột ớt, dầu thực vật, hành lá sấy, khô, hương thịt xào tổng hợp. ', N'Micoem');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (7, N'ÁO SƠ MI NAM DÀI TAY TRẮNG SMT16', 27 , 350000, 0.15, N'Sơ mi tay dài trắng phong cách tinh ', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (11, N'ÁO SƠ MI NAM DÀI TAY TRẮNG SMT12', 27, 280000, 0.12, N'Áo sơ mi nam Cổ Bẻ Vải Lụa Thái chống nhăn (CAM KẾT ẢNH THẬT)-Dáng ôm Body Hàn Quốc đẹp', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (17, N'ÁO SƠ MI NAM DÀI TAY TRẮNG SMT16', 27, 280000, 0, N'SKU: SMT16 Category: Áo Sơ Mi Nam Tags: áo sơ mi, áo sơ mi đen, áo sơ mi trắng', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (18, N'ÁO SƠ MI NAM DÀI TAY TRẮNG SMT0001', 27,  300000, 0.2, N'Mua ngay Áo sơ mi nam Vải Lụa Thái Trắng chống nhăn SMT001-Dáng ôm Body Hàn quốc chính hãng ', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (19, N'ÁO SƠ MI NAM DÀI TAY SỌC ĐEN TRẮNG SMT0004', 27, 320000, 0.2, N'Áo sơ mi sọc đen tim đen- UNISEX cao cấp giá rẻ. Sơ mi nam dài tay màu trắng sành điệu thoáng mát không nhăn.', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (20, N'ÁO SƠ MI NAM DÀI TAY SỌC SMT0006',27, 300000, 0.2, N'áo sơ mi nam trung niên đẹp, lịch sự với chất liệu cao cấp : cotton, sợi tre, nano. Đủ size từ 38-43.', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (21, N'ÁO SƠ MI NAM DÀI TAY SỌC XÁM SMT0018', 27,  300000, 0.2, N'Áo sơ mi nam dài tay, Áo sơ mi nam công sở họa tiết kẻ sọc có túi ngực, Kiểu sơ mi thoáng mát bền đẹp sang', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (22, N'ÁO SƠ MI NAM DÀI TAY  XANH SỌC DEN  SMT0026',27, 300000, 0.2, N'Áo sơ mi nam dài tay thương hiệu Anton kẻ sọc xanh dương ', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (23, N'ÁO SƠ MI NAM  NGẮN TAY SMT0001', 27,  300000, 0.2, N'Áo sơ mi nam tay ngắn cho quý ông trẻ trung. Áo sơ mi cộc tay lịch sự mà vẫn năng động thể hiện bản lĩnh đàn ông đích thực.', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (24, N'ÁO SƠ MI NAM  NGẮN TAY HỌA TIẾT SMT0065', 27, 300000, 0.2, N'Các mẫu áo sơ mi nam ngắn tay cao cấp, giá cả hợp lý.', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (25, N'ÁO SƠ MI NAM  NGẮN TAY SMT0069', 27,  300000, 0.2, N'Áo sơ mi nam tay ngắn cho quý ông trẻ trung. Áo sơ mi cộc tay lịch sự mà vẫn năng động thể hiện bản lĩnh đàn ông đích thực.', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (26, N'ÁO SƠ MI NAM  NGẮN TAY SMT0005', 27,  110000, 0.2, N'Áo sơ mi nam tay ngắn cho quý ông trẻ trung. Áo sơ mi cộc tay lịch sự mà vẫn năng động thể hiện bản lĩnh đàn ông đích thực.', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (27, N'ÁO SƠ MI NAM  NGẮN TAY SMT0001', 27, 110000, 0.2, N'Áo sơ mi nam tay ngắn cho quý ông trẻ trung. Áo sơ mi cộc tay lịch sự mà vẫn năng động thể hiện bản lĩnh đàn ông đích thực.', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (28, N'ÁO SƠ MI NAM  NGẮN TAY SMT0010',27,  110000, 0.2, N'Áo sơ mi nam tay ngắn cho quý ông trẻ trung. Áo sơ mi cộc tay lịch sự mà vẫn năng động thể hiện bản lĩnh đàn ông đích thực.', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (29, N'ÁO SƠ MI NAM  NGẮN TAY SMT0041', 27, 110000, 0.2, N'Áo sơ mi nam tay ngắn cho quý ông trẻ trung. Áo sơ mi cộc tay lịch sự mà vẫn năng động thể hiện bản lĩnh đàn ông đích thực.', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (30, N'ÁO SƠ MI NAM  NGẮN TAY   SMT0073',27,  110000, 0.2, N'Áo sơ mi nam tay ngắn cho quý ông trẻ trung. Áo sơ mi cộc tay lịch sự mà vẫn năng động thể hiện bản lĩnh đàn ông đích thực.', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (31, N'Dầu ăn Neptune',11, 45000, 0.2, N'Dầu ăn Neptune 1:1:1 là loại dầu thực vật thế hệ mới tốt cho sức khỏe của công ty dầu thực vật Cái Lân. Đây cũng là loại dầu thực vật duy nhất trên thị trường được sản xuất từ hỗn hợp dầu gạo, dầu hạt cải, dầu đậu nành và dầu Olein, không chứa a-xít béo cấu hình trans, không cholesterol rất tốt cho sức khỏe tim mạch…', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (32, N'Dầu ăn hướng dương Nga',11, 52000, 0.2, N'Dầu ăn hướng dương Nga được làm từ 100% hạt hướng dương nguyên chất, được sản xuất dựa trên công nghệ ép lạnh không tinh chế. Vì vậy, giữ được đầy đủ các thành phần vitamin và khoáng chất có lợi cho sức khỏe như: vitamin A, B,E và các axit không bão hòa đa (Omega 3, 6, 9) và có màu vàng tự nhiên.i', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (33, N'Dầu ăn Meizan',11,  41000, 0.2, N'Dầu ăn Meizan cũng là một sự lựa chọn thông minh cho các bà nội trợ. Meizan có đa dạng các loại dầu ăn đều có lợi cho sức khỏe như: Dầu thực vật Meizan, Dầu đậu nành Meizan, Bơ thực vật Meizan, Dầu mè thơm hảo hạng Meizan. ', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (34, N'Dầu ăn Simply',11, 49000, 0.2, N'dầu đậu nành Simply được làm từ 100% đậu nành nguyên chất, là một trong những loại dầu thực vật được sử dụng rộng rãi nhất trên thế giới bởi những lợi ích sức khỏe, thành phần và chất chống oxi hóa vẫn còn lưu lại trong dầu ngay cả sau khi được tinh luyện.', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (35, N' Dầu ăn olive',11, 221000, 0.2, N'là một người mẹ đảm đang thì không thể không quan tâm đến sức khỏe của con cái đặc biệt là trẻ nhỏ từ 3 - 5 tuổi. Đây là giai đoạn phát triển của trẻ. Trẻ cần những thức ăn đầy đủ dinh dưỡng.', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (36, N'Dầu ăn Cái Lân',11,  28000, 0.2, N'Dầu ăn Cái Lân là một thương hiệu dầu ăn nổi tiếng, lâu đời mang thương hiệu Việt Nam. Dầu ăn hảo hạng Cái Lân được sản xuất theo quy trình hiện đại, hợp vệ sinh an toàn thực phẩm. Những nguyên liệu để tinh chế được chọn lọc một cách sát sao. ', N'MaSan');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (37, N'Dầu ăn Tường An',11,  95000, 0.2, N'Hãng dầu ăn Tường An với kinh nghiệm sản xuất gần 35 năm cùng những thiết bị máy móc, chế biến hiện đại, ngày càng được cải tiến và nâng cấp. Đối với Tường An, mục tiêu quan trọng nhất là không ngừng cải tiến nâng cao chất lượng và an toàn thực phẩm, đáp ứng tốt nhất mọi yêu cầu của khách hàng.', N'MaSan');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (38, N'Dầu ăn cao cấp Ranee ',11, 24000, 0.2, N'Dầu ăn cao cấp Ranee 100% từ cá được sản xuất với dây chuyền công nghệ vật lý tinh luyện từ Châu Âu, giúp xử lý mùi tối ưu nhưng vẫn lưu giữ tron vẹn các dưỡng chất tự nhiên từ cá như omega 3-6-9, DHA/EPA và Vitamin E', N'MaSan');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (39, N'Dầu ăn Marvela',11,  35000, 0.2, N'Dầu ăn Marvela là thương hiệu nổi tiếng ở Việt Nam. Được mọi người tin dùng và sử dụng suốt những năm qua. Cũng giống các thương hiệu khác, Marvela cho ra đời nhiều loại dầu ăn với những nguyên liệu, thành phần khác nhau. Kéo theo đó là những công dụng khác nhau.', N'MaSan');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (40, N'Bộ Mỹ phẩm dưỡng trắng da Ohui White Extreme',3, 110000, 0.2, N'Về tổng quan bộ mỹ phẩm Hàn Quốc Ohui Extreme White là dòng sản phẩm dưỡng trắng da cao cấp được Ohui phát triển nhằm giúp phái đẹp nuôi dưỡng, tái tạo vẻ tươi sáng cho làn da, mong muốn đem đến cho phái đẹp một sự thay đổi đột phá, thú vị, làn da đẹp, sáng trong không tì vết cùng tâm trạng vui vẻ và cuộc sống hạnh phúc.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (41, N'Kem chống nắng Ohui Black',3,  310000, 0.2, N'Ohui Perfect Sun Black có chỉ số chống nắng ở mức phù hợp (SPF50+/PA++++) giúp chống nắng hiệu quả. Ngoài tác dụng của kem chống nắng thì sản phẩm này còn giúp dưỡng sáng da và cấp ẩm hiệu quả. ', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (42, N'Kem dưỡng Innisfree balancing cream',3,  310000, 0.2, N'Đây được xem như dòng sản phẩm dưỡng chủ đạo và được đánh giá cao nhất của hãng. Green tea balancing cream – Kem dưỡng ẩm cân bằng Với chiết xuất từ trà xanh sẽ cung cấp, bổ sung dưỡng chất cho da mặt.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (43, N'Mặt nạ ngủ Laneige Water Sleeping Mask',3,  110000, 0.2, N'Sản phẩm có dạng gel lỏng mịn chứa “nước từ băng tuyết tan”, tinh chất từ quả mơ Hunza và tinh chất hạt dẻ thấm nhanh vào da và giúp cung cấp dinh dưỡng cho tế bào da cũng như làm hydrat hóa làn da để giữ ẩm và thay đổi sắc tố da để làm trắng.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,DonGia, GiamGia, MoTa, MaNCC) values (44, N'Phấn nước dưỡng trắng Laneige BB',3,  310000, 0.2, N'Laneige whitening là một sản phẩm 5 trong 1 mang tính “cách mạng” của hãng trong công cuộc làm đẹp, với độ che phủ chống nắng SPF 50, lượng nước khoáng tối ưu, hiệu chỉnh màu sắc tất cả trong một', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (45, N'Son môi Mamonde Highlight Lip Tint',3,  110000, 0.2, N'Thỏi son tint Mamonde này có thiết kế cực đơn giản nhưng đáng yêu với thân son nhựa có màu tương ứng với màu son bên trong.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (46, N'Mỹ phẩm Sulwhasoo',3, 110000, 0.2, N'Sulwhasoo được đón nhận nhiệt tình nhờ các sản phẩm chất lượng cao, được nghiên cứu và chiết xuất từ hơn 3,000 loại thảo mộc và các loại dược liệu quý.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (47, N'Sữa rửa mặt Herb Day 365',3,  300000, 0.2, N'Một trong những sản phẩm nổi bật nhất của hãng chính là dòng sữa rửa mặt tạo bọt Herb Day 365 Cleansing Foam TheFaceShop, dòng sản phẩm gồm 6 mùi hương tươi trẻ có thể dùng như một loại kem tẩy trang dùng sau khi trang điểm', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (48, N'Son Etude house dear darling tint',3, 110000, 0.2, N'Đây là một sản phẩm đang làm mưa làm gió tại thị trường Việt Nam thời gian gần đây bởi độ “cute” vô đối của thiết kế hình que kem bé bé xinh xinh.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (49, N'Mặt nạ đường đen dâu skinfood',3,  110000, 0.2, N'Là một hãng mỹ phẩm Hàn Quốc chất lượng đa dạng các sản phẩm từ chăm sóc da đến trang điểm giá thành hợp lí và đáng để thử khi bạn muốn tìm một hãng mỹ phẩm bình dân chất lượng.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (50, N'Me Cay Rồng Con',6,  51000, 0.2, N'ME XÍ MUÔI CHUA CAY vừa là món ăn vặt hấp dẫn và lạ miệng, vị chua của me, mặn, ngọt của đường và muối kết hợp với một ít cay của ớt tạo nên một sản phẩm rất đặc biệt', N'MaSan');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (51, N'Đậu Phộng Nước Cốt Dừa',6, 51000, 0.2, N'Khách ăn vào sẽ cảm nhận được độ giòn, béo, độ xốp. Sản phẩm hoàn toàn không thêm chất bảo quản, giữ nguyên hương vị tự nhiên của sản phẩm. Dùng được cho người ăn chay.', N'MaSan');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (52 ,N'Đậu Hà Lan Sấy Muối',6,  51000, 0.2, N'Đậu Hà Lan Sấy vị phô mai ăn vào vừa xốp, vừa giòn, vừa có độ béo của phô mai, hạt đậu Hà Lan không cứng, không chai.', N'MaSan');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (53, N' táo đỏ tân cương',6, 110000, 0.2, N'TÁO ĐỎ CỦA NGƯỜI HÀN QUỐC khác hẳn những loại táo đỏ được trồng ở Trung Quốc hay nơi khác vì trái to, ngọt, hạt rất nhỏ, thơm', N'MaSan');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (54, N'Hạt macca ',6,  290000, 0.2, N'Có xuất xứ tại châu Úc, khu vực có khí hậu nhiệt đới và cận nhiệt đới cùng với đặc trưng nơi đây các loại khoáng sản phong phú nên hàm lượng dinh dưỡng có trong hạt mắc ca từ đó cũng xếp hạng cao nhất trong các loại hạt dinh dưỡng', N'MaSan');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (55, N'Quả óc chó mỹ đã sấy chín',6,  110000, 0.2, N'Quả óc chó có tên tiếng Anh là Walnuts hay tên khác quả Hồ Đào (Juglans regiaL) là một họ thực vật có hoa bao gồm các loại cây thân gỗ trong bộ Dẻ (Fagales). Loại quả này có hơn 20 loại khác nhau và được trồng chủ yếu ở California walnuts – Mỹ (USA) ', N'MaSan');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (56, N'HẠT CHIA TÍM NHẬP KHẨU ÚC',6, 69000, 0.2, N'Hạt Chia hay còn gọi là Salvia là thực phẩm chứa nhiều chất dinh dưỡng hiếm có trong thế giới thực phẩm, đặc biệt là những vi chất mà chúng ta khó có thể bổ sung được bằng thuốc bổ ', N'MaSan');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (57, N'1kg hạt sen khô',6,  169000, 0.2, N'Hạn sử dụng: 6 tháng.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (58, N' Khô cá chỉ vàng ',6,  210000, 0.2, N'Cá chỉ vàng là một loại cá bổ dưỡng và thơm ngon vì trong thịt cá có chứa rất nhiều protein, lipid và cực kỳ nhiều omega 3 tốt cho tim mạch và mắt', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (59, N'Khô cá sặc Việt Hà',6,  100000, 0.2, N'Khô cá sặc ngon ở chỗ bụng khô cá rất béo và thơm. Nhưng cũng chính vì bụng cá rất ngon nên khi chế biến cần làm sạch mùi tanh và khi phơi phải bảo quản cẩn thận khỏi ruồi đậu', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (60, N'Khô cá lưỡi trâu Song Phương',6,  450000, 0.2, N'Cá lưỡi trâu là một loài cá sạch, ít xương, thịt ngọt, lành tính và sống trong thiên nhiên. Khô cá lưỡi trâu được đánh giá là khô ngon nhất tuy đạm bạc nhưng độc đáo nhờ thịt ngọt, mềm và mùi vị thơm ngon không chê được', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, GiamGia, MoTa, MaNCC) values (61, N'Khô cá cơm sữa Phong Phương',6,  110000, 0.2, N'Cá cơm sữa là một loại cá cơm rất nhỏ, dài chỉ khoảng 3 phân, thịt trong suốt. Cá cơm sữa có hương vị rất đậm đà, thịt cá ngon ngọt và cực kỳ giàu chất dinh dưỡng, không hề thua kém các loại cá khác.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (62, N'Khô cá đù Song Phương',6, 110000, 0.2, N'Khô cá đù nhiều thịt và ít xương hơn hẳn các loại cá khác. Cá đù ngon ở chỗ phần thân sau của cá cực kỳ béo và nhiều mỡ. Thịt cá khá là ngọt, bùi bùi và với điểm nhấn là vị béo ở phần đuôi làm chúng ta ăn hoài không thấy ngán.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (63, N'Giấy vệ sinh CAT Premium',2, 20000, 0, N'10 cuộn/ túi, 3 lớp. Nơi sản xuất:Việt Nam, Bảo hành:5 Năm', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (64, N'GIẤY VỆ SINH CUỘN LỚN CHUYÊN CHO KS, TÒA NHÀ, VP, NHÀ HÀNG',2, 24500, 0, N'Phân hủy trong nước nhanh giảm thiểu nguy cơtắc nghẽn. Dai vừa phải, hơi bông xốp, êm nhẹ', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (65, N'GIẤY CUỘN DÀI THẤM HÚT DẦU ĂN',2, 17000, 0, N'Thành phần: 100% Bột giấy.Đặc điểm: Không lẫn giấy tái chế, không hóa chất độc hại', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (66, N'Bộ khăn sữa Mollis 100% bamboo ',2, 209000, 0, N'Được làm từ 100% sợi bamboo, cực kỳ mềm mại và thoáng mát, giúp cho mẹ vệ sinh mặt, mũi cho em bé mà không sợ khô, rát bé', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (67, N'Khăn lạnh Wuna không mùi ',2, 180000, 0, N'Thành phần Vải không dệt, nước tinh khiết R.O, Quaternary Ammonium Salts, Citric Acid, hương thơm', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (68, N'Khăn giấy ướt dạng nén Nikkori 50 cái',2, 85000, 0, N'Khăn giấy nén mềm mại, hợp vệ sinh, tiêu hủy nhanh, không ảnh hưởng đến môi trường, an toàn mọi loại da. Đặc biệt làn da trẻ sơ sinh', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (69, N'Khăn ướt Hensley không mùi ',2, 48500, 0, N'Không có chất tăng trắng quang học, không chứa cồn, không chất tạo màu, không hoá chất bảo quản, không hương liệu', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (70, N'Khăn ướt em bé Bobby',2,39000, 0, N'Chăm sóc vệ sinh da, thích hợp khi thay tã cho bé, tăng cường khả năng kháng khuẩn nhờ công nghệ Nano Bạc', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (81, N'Bàn chải cho bé từ 4 tuổi Splat',5, 89000, 0, N'Lông bàn chải làm bằng vật liệu cao cấp chứa ion bạc ngăn ngừa sự phát triển của vi khuẩn và làm sạch hiệu quả Không chứa', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (82, N'Bộ 3 bàn chải Oral-B Pro-Health',5, 80000, 0, N'Chải răng theo hướng dẫn của nha sĩ. Rửa sạch bàn chải sau khi sử dụng. Cắm thẳng và giữ nơi khô ráo', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (83, N'Bộ 2 bàn chải Oral-Clean Spiral Carbon Gold',5, 69000, 0, N' Chải răng theo hướng dẫn của nha sĩ. Rửa sạch bàn chải sau khi sử dụng. Cắm thẳng và giữ nơi khô ráo', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (84, N'Bàn chải đánh răng người lớn Bamboo Salt',5, 49000, 0, N'Bàn chải đánh răng người lớn Bamboo Salt muối hồng Himalaya lông tơ mềm mại HSD hơn 3 năm', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (85, N'Kem đánh răng Splat Special thảo mộc',5, 127000, 0, N'Nên chải răng 2 lần/ngày sau khi ăn. Sử dụng trong vòng 12 tháng sau khi mở nắp', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (86, N'Kem đánh răng Splat Special than hoạt tính',5, 127000, 0.5, N'Nên chải răng 2 lần/ngày sau khi ăn. Sử dụng trong vòng 12 tháng sau khi mở nắp', N'YAME');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (87, N'Kem đánh răng Splat phục hồi men & trắng răng',5, 84000, 0, N' Nên chải răng 2 lần/ngày sau khi ăn. Sử dụng trong vòng 12 tháng sau khi mở nắp', N'YAME');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (88, N'Kem đánh răng Colgate Sensitive Pro Relief Complete',5, 69000, 0, N' Giảm ê buốt nhanh chóng và lâu dài, ngừa sâu răng, chăm sóc nướu, giúp trắng răng, giảm mảng bám, bảo vệ men răng, hơi thở thơm mát', N'YAME');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (89, N'Kem đánh răng Perioe Pumping hương bạc hà',5, 169000, 0, N'Trẻ dưới 2-6 tuổi chỉ sử dụng một lượng kem nhỏ bằng hạt đậu và cần sự hướng dẫn của người lớn. Trẻ em dưới 2 tuổi cần có sự tư vấn của nha sĩ hoặc bác sĩ', N'YAME');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (90, N'Bột đánh trắng răng Eucryl Toothpowder',5 , 55000, 0, N'Loại bỏ mảng bám bẩn, giúp trắng răng, ngăn hôi miệng, răng sáng bóng, chắc khỏe', N'YAME');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (91, N'Nước ngọt có ga Coca Cola Zero chai 390ml',7, 6500, 0, N'Nước bão hòa CO2, màu tự nhiên, chất điều chỉnh độ acid, chất tạo ngọt tổng hợp, chất bảo quản, hương cola tự nhiên và caffeine.', N'YAME');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (92, N'24 lon nước tăng lực Monster Energy Ultra 355ml',7, 696000, 0, N'Lắc nhẹ trước khi uống, dùng ngay sau khi mở nắp. Ngon hơn khi uống lạnh.', N'YAME');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (93, N'Trà xanh hương chanh C2 Plus Immunity ít đường 500ml',7, 12000, 0, N'Để nơi khô ráo, thoáng mát, tránh ánh sáng trực tiếp hoặc nơi có nhiệt độ cao.', N'YAME');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (94, N'nước ngọt Mirinda vị cam 330ml',7, 8000, 0, N'Nước bão hoà CO2, đường mía, đường HFCS, chất điều chỉnh độ acid, tinh bột biến tính, chất bảo quản, chất nhũ hoá, hương cam tự nhiên, màu tổng hợp', N'YAME');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (95, N'nước tăng lực Wake Up 247 vị cà phê 330ml',7, 7800, 0, N' Nước, đường, C02 thực phẩm, màu tổng hợp caramen, hương vani, hương cà phê, caffeine, taurine, inositol, vitamin B3, vitamin B6, chất điều chỉnh độ axit, muối', N'YAME');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (96, N'tăng lực Compact vị cherry 330ml',7, 9100, 0, N'Nước, đường, glucose syrup, chất điều chỉnh độ acid (330, 500ii), chất tạo khí carbonic (290), hương liệu (hương mật hoa tự nhiên, hương cherry tổng hợp, giống tự nhiên)', N'YAME');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (97, N'trà xanh matcha Tea Plus 455ml',7, 82000, 0, N' Để nơi khô ráo, thoáng mát, tránh ánh sáng trực tiếp hoặc nơi có nhiệt độ cao.', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (98, N'Revive chanh muối 390ml',7, 78000, 0, N'Lắc nhẹ trước khi uống, dùng ngay sau khi mở nắp. Ngon hơn khi uống lạnh.', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (99, N'Cà phê đen TNI King Coffee Espresso 250g ( 100 gói x 2.5g )',7, 295000, 0, N'UỐNG NÓNG dùng 1 gói pha với 70ml nước nóng. Có thể thêm sữa hoặc đường tuỳ sở thích', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (100, N'Strongbow dâu đen 330ml',7, 21000, 0, N' Sản phẩm dành cho người trên 18 tuổi và không dành cho phụ nữ mang thai. Thưởng thức có trách nhiệm, đã uống đồ uống có cồn thì không lái xe!', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (101, N'bia Heineken 0.0% độ cồn 330ml',7, 15000, 0, N' Sản phẩm dành cho người trên 18 tuổi và không dành cho phụ nữ mang thai. Thưởng thức có trách nhiệm, đã uống đồ uống có cồn thì không lái xe!', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (102, N'bia Tiger Crystal 330ml',7, 11000, 0, N'Bia Tiger Crystal 330ml không chỉ đạt đến chất lượng rạng danh trên toàn thế giới mà còn mang đến cảm giác thật sảng khoái và rất dễ uống cho người dùng.', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (103, N'chai trà sữa Kirin Tea Break 345ml',7, 10000, 0, N'Trà sữa Tea Break chai 345ml với nguyên liệu tự nhiên kết hợp với nhau tạo nên hương vị của sữa rất đặc trưng.  không quá béo giúp người dùng cảm thấy ngon miệng không bị ngậy.', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (104, N'hộp sữa tươi nguyên chất không đường Vinamilk 100% Organic 1 lít',8, 52000, 0, N'Sữa tươi tiệt trùng Vinamilk có hương vị sữa tươi 100% hữu cơ thơm ngon, hấp dẫn.', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (105, N'hộp sữa tươi tiệt trùng đường đen Nutimilk 1 lít',8, 38000, 0, N'Sữa bò tươi, đường tinh luyện, si-rô, đường đen, chất ổn định, hương liệu tổng hợp dành cho thực phẩm,...', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (106, N'sữa tươi tiệt trùng hương dâu TH true MILK 180ml',8, 32000, 0, N'thơm ngon, dễ uống, được làm hoàn toàn từ nguồn sữa tươi sạch. Trong sữa chứa nhiều dưỡng chất thiết yếu tốt cho sức khoẻ như Vitamin A, D, B1, B2, Canxi, kẽm...', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (107, N'Thùng 12 hộp sữa tươi tiệt trùng TH true MILK Organic',8, 378000, 0, N'Sản phẩm hữu cơ không chứa chất bảo quản, rất an toàn cho sức khoẻ, trong sữa còn chứa nhiều dưỡng chất thiết yếu cũng như hương vị thơm ngon, béo ngậy đặc trưng.', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (108, N'Thùng 12 hộp sữa đậu đen óc chó hạnh nhân Sahmyook',8, 950000, 0, N' Nước đậu đen, bột đậu nành, đường trắng, siro ngô fructose cao, chất nhũ hóa, bột quả óc chó, bột đậu đen, bột hạnh nhân, muối, bơ hạt thông, dầu thực vật.', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (109, N'sữa đậu nành hạnh nhân Vinamilk 180ml',8, 12000, 0, N'Phù hợp Dùng cho trẻ từ 4 tuổi trở lên', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (110, N'Thùng 16 hộp sữa đậu nành vị hạnh nhân và óc chó Vegemil',8, 216000, 0, N'Sữa đậu nành (nước tinh khiết, đậu nành 7%), đường, maltooligosacarit, xi rô ngô hàm lượng cao fructose, nước, quả óc chó và hỗn hợp các loại hạt ', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (111, N'Ngôi sao Phương Nam xanh lá ',8, 60000, 0, N'Thích hợp Pha cà phê, xay sinh tố, làm sữa chua, bánh flan...', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (112, N'Kem đặc có đường DeliPure lon 1kg',8, 35000, 0, N'Pha một lượng creamer theo khẩu vị sản phẩm với khoảng 60ml nước đun sôi, sau đó để nguội rồi uống.', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (113, N'Sữa đặc có đường Ông Thọ trắng nhãn vàng lon 380g',8, 29000, 0, N'Pha một phần sữa với 3 phần nước ấm để uống hoặc pha cùng cà phê, ăn cùng bánh mì,...', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (114, N'Thùng 24 chai sữa chua uống nha đam Vinamilk Yomilk 150ml',8, 139000, 0, N'Thành phần Nước, đường tinh luyện, chất béo sữa,...', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (115, N'Lốc 8 hộp sữa lúa mạch Milo Active Go 115ml',8, 34000, 0, N'Nước, sữa - milk 35% nước, sữa bột, chất béo sữa, bột whey từ sữa), PROTOMALT 3,3% (chiết xuất từ mầm lúa mạch - extract from malted barley), đường 33%),', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (116, N'Sữa bột Ensure Gold lúa mạch ít ngọt hộp 850g',8, 732000, 0, N'Để đáp ứng nhu cầu dinh dưỡng cho người lớn tuổi, hỗ trợ tăng cường sức khỏe, thể chất và chất lượng cuộc sống', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (117, N'Sữa bột Frisomum Gold hương cam lon 900g',8, 561000, 0, N'Phù hợp Phụ nữ mang thai và cho con bú', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (118, N'Rong biển hữu cơ ăn liền cho bé Alvins hộp 20g',9, 118000, 0, N'Thành phần Rong biển (chứng nhận hữu cơ Hàn Quốc), dầu Canola, muối biển', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (119, N'Snack khoai tây Slide vị phô mai lon 160g',9, 48000, 0, N'Thành phần Vẩy khoai tây (70%), bột gia vị phô mai, tinh bột khoai tây, tinh bột khoa mìi ', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (110, N'Snack que nhân cà phê moka và sữa dừa Akiko Oishi lon 240g',9, 46000, 0, N'Không dùng cho người dị ứng với sữa, trứng, đậu nành, lúa mì từ bột gia vị. Sản phẩm có thể chứa cá từ sản phẩm khác, sản xuất trên cùng dây chuyền', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (111, N'Snack da cá vị ớt xanh Pati gói 50g',9, 41000, 0, N' Da cá 85%, gia vị ớt xanh (maltodextrin, đường, dextrose, muối, chất điều vị, protein thực vật thuỷ phân, gia vị - tỏi, ớt cựa gà, thì là, bột tỏi, bột giấm, hương tự nhiên', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (112, N'Snack que nhân sữa và phô mai Akiko Oishi lon 240g',9, 39000, 0, N'Không dùng cho người dị ứng với sữa, trứng, đậu nành, lúa mì từ bột gia vị. Sản phẩm có thể chứa cá từ sản phẩm khác, sản xuất trên cùng dây chuyền', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (113, N'Bánh quy bơ Danisa hộp 681g',9, 191000, 0, N' Bột lúa mì, đường, bơ (18.67%), dầu thực vật (chứa chất chống oxy hóa tocopherol), glucose syrup, trứng, dừa sấy, nho kho, bột sữa tách béo, muối, chất tạo xốp E503, hương vani tổng hợp.', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (114, N'Bánh quy bơ thập cẩm LU hộp 708g',9, 235000, 0, N'Bột mì, đường, bơ Pháp (12%), shortening, nhân sôcôla hỗn hợp (đường, chất béo thực vật hydro hóa, bột cacao, dextrose, chất nhũ hóa (322(i)), hương thực phẩm tổng hợp, muối)', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (115, N'Bánh quy ngũ cốc không đường Vitamia gói 330g',9, 112000, 0, N'Bột mì (35,4%), ngũ cốc dạng bột và vẩy (24,6%), chất tạo ngọt tổng hợp, dầu hướng dương, bơ, muối, chất tạo xốp,...', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (116, N'Bánh gấu 3 vị Assortment Meiji Hello Panda ',9, 108000, 0, N' Sản phẩm có chứa bột mì, lúa mạch (ngũ cốc chứa gluten), sữa và đậu nành, có thể chứa hạt mè.', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (117, N'Kẹo Ferrero Confetteria Raffaello ',9, 180000, 0, N' Dừa khô 25.5%, chất béo thực vật, đường, hạt hạnh nhân nguyên hạt 8%, sữa bột gầy, whey bột, bột mì, tinh bột sắn, hương liệu tự nhiên và giống tự nhiên, chất nhũ hoá, chất tạo xốp', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (118, N'Bánh gạo vị ngọt Richy gói 315g',9, 40000, 0, N'Gạo thơm, dầu thực vật, đường tinh luyện, tinh bột khoai tây, muối, gelatin, monosodium glutamate, chất điều vị', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (119, N'Bánh que Glico Pocky dâu và socola',9, 100000, 0, N'Thành phần Bột mì, đường, dầu thực vật, bột sữa tách béo,..', N'Asia Foods');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (120, N'Socola Ferrero hộp 375g',9, 360000, 0, N'Socola sữa 30% (đường, bơ, ca cao, bột ca cao, sữa bột gầy, chất béo sữa dạng khan, chất nhũ hoá, chất tạo xốp, hương liệu giống tự nhiên, hạt phỉ 28.5%, muối,...', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (121, N'Thùng 30 gói mì Mama hương thịt bò hầm 60g',10, 190000, 0, N' Bột mì 79%, dầu cọ, muối, đường, gia vị, chất điều vị (E621, E35), hương liệu (cần tây) 0.75%, nước tương (đậu tương, muối, chiết xuất mạch nha, lúa mì, nấm men, dầu cọ), hành tây sấy khô', N' Miliket');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (122, N'Thùng 40 gói mì bò cay Samyang Sutah Ramen 120g',10, 840000, 0, N'ho mì, gói súp, gói rau vào trong 550ml nước sôi và nấu khoảng 4-5 phút. Để hương vị ngon hơn, có thể thêm kim chi, trứng, tỏi và hành lá.', N' Miliket');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (123, N'Thùng 10 túi mì Koreno Jumbo vị kim chi 1kg',10, 760000, 0, N'Đun sôi 400ml ~ 450ml nước. Cho vắt mì, gói gia vị, gói rau vào nồi cùng một lúc, nấu trong 4 phút. Sau đó tắt bếp, múc ra bát và dùng được ngay. Sẽ ngon hơn khi bạn cho thêm trứng, hành, rau thơm.', N' Miliket');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (124, N'Thùng 50 gói mì Udon Hanil Bongojang 200g',10, 745000, 0, N' Nước 64%, bột mì 34.16%, tinh bột sắn 0.95%, muối 0.79%, chất điều chỉnh vị chua (axit lactic, axit acetic, sodium laclate, axit adipic, nước) 0.1%.', N' Miliket');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (125, N'Thùng 36 ly mì Mama vịt tiềm 60g',10, 610000, 0, N'Bột mì 75,48%, dầu cọ 6,25%, dầu nành 1,75%, gia vị 1,21%, hương vịt 0,75%, bột tỏi, bột ớt, bột ngọt,...', N' Miliket');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (126, N'Thùng 20 gói mì cay hải sản Paldo 120g',10, 399000, 0, N' Cho mì, gói gia vị vào 560ml nước sôi và nấu trong 4 phút cho mì mềm. Khuấy đều mì để ăn.', N' Miliket');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (127, N'Thùng 18 gói mì thịt bằm Vifon Hoàng Gia 120g',10, 250000, 0, N' Cho vắt mì và các gói gia vị vào tô. Rót vào tô khoảng 400ml nước sôi. Đậy kín nắp tô và chờ khoảng 3 phút. Mở nắp, cắt gói thịt hầm cho vào tô, khuấy đều là có thể dùng được.', N' Miliket');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (128, N'gói mì Vị Hương giấy vàng 60g',10, 2500, 0, N'Cho vắt mì và các gói gia vị vào tô. Chế nước sôi vào khoảng 350ml, đậy nắp lại và chờ trong 3 phút. Mở nắp, trộn đều và dùng được ngay.', N' Miliket');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (129, N' mì thịt bằm Vifon Hoàng Gia 120g',10, 3000, 0, N'Cho vắt mì và các gói gia vị vào tô. Rót vào tô khoảng 400ml nước sôi. Đậy kín nắp tô và chờ khoảng 3 phút. Mở nắp, cắt gói thịt hầm cho vào tô, khuấy đều là có thể dùng được.', N' Miliket');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (130, N'mì rong biển Jin Ottogi 120g',10, 12000, 0, N'1/Trước tiên cho 550ml nước vào nồi và gói rau củ sấy khô vào đun sôi.2/Khi nước sôi thì cho gói súp gia vị và mì vào rồi đun sôi khoảng 5 phút là được', N' Miliket');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (131, N'Cây đánh trứng Silicone 25cm Shika',13, 52000, 0, N'Dài 25 cm cầm gọn tay người lớn, trọng lượng nhẹ tiện thao tác, dùng lâu không sợ mỏi tay', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (132, N'Khuôn làm kem nhựa Hofaco HPL64',13, 35000, 0, N'Kích thước 14.5cm x 13cm x 8.8cm', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (133, N'Phin cà phê inox Tithafac 7cm',13, 31000, 0, N'Công dụng Sử dụng pha chế cà phê truyền thống, chắt lọc giọt cà phê sạch cặn, thơm ngon', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (134, N'Vỉ hấp nhựa Điện máy XANH LD-SU616 24cm',13, 80000, 0, N'Vỉ hấp thiết kế nâu xám, đường kính viền 24.5 cm gọn đẹp tiện dụng. Vỉ hấp có thể điều chỉnh phù hợp với từng loại nồi chảo có đường kính khác nhau ', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (135, N'Bếp cồn inox Rainy hoa mai 23 BCI',13, 65000, 0, N' Bếp được làm bằng inox có độ bền cao, có ưu điểm tỏa nhiệt đều, nóng nhanh, tiết kiệm nhiên liệu', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (136, N'Bếp cồn inox Rainy tráng men 23 BCM',13, 70000, 0, N'Bếp được làm bằng inox tráng men có độ bền cao, có ưu điểm tỏa nhiệt đều, nóng nhanh, tiết kiệm nhiên liệu', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (137, N'Gel rửa tay khô Kleen hương trà xanh chai 630ml',14, 110000, 0, N'Sử dụng cồn 96% và dưỡng chất giúp kháng khuẩn hiệu quả và dưỡng ẩm da tay', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (138, N'Gel rửa tay khô Kleen hương oải hương chai 630ml',14, 110000, 0, N'Cho một lượng nhỏ vào lòng bàn tay và xoa đều. Không cần rửa tay lại với nước', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (139, N'Gel rửa tay khô Dr. Clean hương lavender chai 500ml',14, 106000, 0, N'Làm sạch 99.9% vi khuẩn. Đôi tay luôn mềm mại, sạch sẽ, tươi mát và bay bổng', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (140, N'Gel rửa tay khô Lifebuoy bảo vệ vượt trội chai 235ml',14, 72000, 0, N' Tiện dụng rửa tay mà không cần dùng nước. Vệ sinh, diệt khuẩn, khử sạch mùi rất tốt để bảo sức khỏe, giữ cho đôi tay luôn sạch sẽ và mềm mai', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (141, N'Nước rửa tay Kirei Kirei hương chanh chai 250ml',14, 74000, 0, N'Bọt rửa tay Kirei Kirei Hương chanh Chai 250 ml với chiết xuất 100% tinh chất từ thảo dược thiên nhiên cùng công thức diệt khuẩn đặc biệt cho bạn ', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (142, N'Nước rửa tay Lifebuoy bảo vệ vượt trội túi 443ml',14, 53000, 0, N'Làm ướt tay. Cho một lượng vừa đủ vào lòng bàn tay, xoa đều trên tay và rửa sạch với nước', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (143, N'Sữa rửa tay Goodlook dưỡng da hương táo 500ml',14, 45000, 0, N' Dưỡng da và ngăn ngừa vi khuẩn, giữ cho da tay luôn mềm mại, mịn màng', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (144, N'Nước rửa tay Aqua Vera dưỡng da hoa tử đinh hương 500ml',14, 39000, 0, N'Giúp làm sạch vi khuẩn và bổ sung glycerin dưỡng ẩm mịn màng, cho da tay bạn trở nên mềm mại sau khi sử dụng', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (145, N'Nước giặt xả Act',15, 420000, 0, N'Loại bỏ vết bẩn, diệt trừ vi khuẩn và các tác nhân gây hại như bụi bẩn, bọ, ve, rệp và các tác nhân gây dị ứng, ngạt mũi khác. Khử mùi ngay cả khi phơi trong điều kiện ẩm ướt, phơi trong nhà.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (146, N'Nước giặt Essence hương floral 3.5 lít',15, 309000, 0, N'Hòa tan kỹ nước giặt Essence với nước trước khi cho quần áo vào nước với tỷ lệ 1 nắp đầy hòa với 3 - 4 lít nước ngâm quần áo trong 5 phút, vò nhẹ, xả qua với nước. Đối với máy giặt theo tỷ lệ 4 - 6 nắp cho 1 lần giặt', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (147, N'Bột giặt Tide chuyên dụng 9kg',15, 300000, 0, N'Công thức trắng đột phá chăm sóc sợi vải cho các cơ sở chuyên nghiệp. Đánh bay và loại bỏ các vết bẩn ở cổ tay, cổ áo, vết dầu mỡ, hay bùn đất bám dính lâu ngày.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (148, N'Nước giặt xả hữu cơ sinh học Giel 2 in 1',15, 300000, 0, N'Chà xanh, chanh, lô gội, hỗ cây liễu kết hợp tinh chất hương hoa tự nhiên thơm mát,...', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (149, N'Nước giặt xả Sanzoft ',15, 259000, 0, N'Giặt sạch quần áo, chăn màn, vải vóc. Phù hợp với mọi loại vải. Lưu lại hương thơm nhẹ nhàng quyến rũ. Giữ sắc màu quần áo luôn tươi mới', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (150, N'Nước giặt Ariel Matic sạch nhanh 3.64 lít',15, 239000, 0, N'Thấm sâu vào từng sợi vải dễ dàng tẩy sạch các vết bẩn tốt hơn gấp 2 lần', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (151, N'Bột giặt Mỹ Hảo 5X diệt khuẩn 6kg',15, 220000, 0, N'Loại bỏ các vết bẩn khó giặt, không tái bám vết bẩn. Diệt khuẩn hiệu quả, khử mùi mồ hôi.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (152, N'Nước giặt Attack hương hoa anh đào 2.4kg',15, 180000, 0, N'Giặt sạch các vết bẩn khó giặt như vết dầu mỡ, dầu xe, vết bẩn từ thúc ăn, đồ uống, vết mực, vết bẩn cổ tay, cổ áo cho áo quần sachh thơm toàn diện.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (153, N'Sữa tắm hạt ON THE BODY Veilment Spa Lavender 600g',16, 316000, 0, N'Nhẹ nhàng làm sạch lớp tế bào chết trên da nhờ thành phần từ thực vật, dịu nhẹ và an toàn giúp da ngày càng sáng mịn', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (154, N'Sữa tắm tinh chất thảo mộc Body Shower 750ml',16, 237000, 0, N'Kháng khuẩn, cân bằng ẩm, bảo vệ da khỏi tác hại của môi trường', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (155, N'Sữa tắm Purité dưỡng ẩm sữa ong chúa và hoa anh đào 850ml',16, 210000, 0, N'Dưỡng ẩm sâu từ sữa ong chúa nhẹ nhàng làm sạch da, đồng thời cung cấp độ ẩm sâu cho da', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (156, N'Sữa tắm nước hoa Enchanteur Deluxe Charming 900g',16, 216000, 0, N'Làm sạch da, giúp làn da mềm mịn, hương thơm dài lâu quyến rũ', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (157, N'Sữa tắm Cathy Doll White Tofu 750ml',16, 180000, 0, N'Làm sạch bụi bẩn và cặn bã dư thừa triệt để, dưỡng da mịn màng trắng sáng', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (158, N'Sữa tắm detox',16, 117000, 0, N'Lấy một lượng sản phẩm vừa đủ ra bông tắm hoặc miếng bọt biển đã được làm ướt và tạo bọt. Xoa bọt khắp cơ thể và làm sạch lại với nước', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (159, N'Sữa tắm bảo vệ khỏi vi khuẩn Lifebuoy',16, 153000, 0, N' Công thức ion bạc và bạc hà giúp bảo vệ cơ thể khỏi vi khuẩn gấp 10 lần, cho da mát lạnh sảng khoái', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (160, N'Sữa tắm dưỡng sáng Hazeline matcha',16, 140000, 0, N' Dưỡng da trắng sáng rạng ngời, dưỡng ẩm da', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (161, N'Sữa tắm nước hoa Romano Attitude sạch sảng khoái 650g',16, 134000, 0, N'Giữ ẩm cho da sạch đầy sức sống cùng mùi hương nam tính mạnh mẽ mang lại dấu ấn của người đàn ông lịch lãm, đầy quyến rũ', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (162, N'Dầu gội sạch gàu Head & Shoulders',17, 347000, 0, N'Làm ướt tóc, xoa dầu gội nhẹ nhàng lên tóc và da đầu, mát-xa và xả sạch lại với nước. Gội thêm lần nữa nếu muốn.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (163, N'Dầu gội Dove phục hồi hư tổn 1.36 lít',17, 273000, 0, N'Phục hồi bề mặt tóc tức thì và nuôi dưỡng sâu giúp tái cấu trúc sợi tóc từ sâu bên trong, cho mái tóc bạn chắc khoẻ dài lâu', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (164, N'Dầu gội Sunsilk mềm mượt diệu kỳ 1.36 lít',17, 248000, 0, N' Công thức độc quyền với công nghệ khoá ẩm và 5 tinh dầu tự nhiên giúp lưu giữ độ ẩm cần thiết cho mái tóc luôn mềm mượt', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (165, N'Dầu gội TRESemmé Salon Detox',17, 221000, 0, N' Bù đắp dưỡng chất cho tóc, làm sạch sâu, nuôi dưỡng tóc chắc khoẻ và bóng mượt', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (166, N'Dầu gội Head & Shoulders Classic Clean 700ml',17,2150000, 0, N'Trị gàu, làm sạch da đầu, giúp tóc luôn mềm mượt', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (167, N'Dầu gội nước hoa Elastine Kiss The Rose 1000ml',17,1680000, 0, N' Làm ướt tóc, lấy một lượng dầu gội vừa đủ thoa lên tóc, tạo bọt mát xa nhẹ nhàng để mùi hương tỏa đều trên tóc. Gội sạch lại với nước.', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (168, N'Dầu gội nước hoa X-Men For Boss Intense 650g',17, 186000, 0, N'Để xa tầm tay trẻ em. Tránh để sản phẩm dính vào mắt. Nếu dính vào mắt hãy rửa sạch với nước', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (169, N'Dầu gội TRESemmé Salon Detox gừng và trà xanh 631ml',17, 187000, 0, N'Bù đắp dưỡng chất cho tóc, làm sạch sâu, nuôi dưỡng tóc chắc khoẻ và bóng mượt', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (170, N'Dầu xả phục hồi hư tổn Tsubaki 500ml',17, 179000, 0, N' Hợp chất đặc biệt bổ sung Protein, Lipit, hợp chất hoa trà lên men và chiết xuất tinh dầu hoa trà Nhật Bản', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (171, N'Rau Dền 4KFarm túi 200-300g',21, 4000, 5, N'Sạch như rau nhà', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (172, N'Rau Mùng Tơi 4KFarm túi 200-300g',21, 8000, 0, N'Sạch như rau nhà', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (173, N'Cải Dúng 4KFarm túi 300g',21, 9000, 0, N'Sạch như rau nhà', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (174, N'Cải xoăn túi 500g',21, 27000, 0, N'Sạch như rau nhà', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (175, N'Khoai mỡ túi 1kg',21, 47000, 0, N'Sạch như rau nhà', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (176, N'Nấm mỡ trắng hộp 150g',21, 45000, 0, N'Sạch như rau nhà', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (177, N'Xà lách Romaine thủy canh túi 300g',21, 25000, 0, N'Sạch như rau nhà', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (178, N'Bí đỏ hồ lô túi 700g',21, 23000, 0, N'Sạch như rau nhà', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (179, N'Táo Envy hộp 1kg',22, 242000, 0, N'Hoa quả tươi nhập khẩu', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (180, N'Nho đỏ không hạt hộp 1kg',22, 186000, 0, N'Hoa quả tươi nhập khẩu', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (181, N'Lê Nam Phi nhập khẩu hộp 1kg (5 - 6 trái)',22, 86000, 0, N'Hoa quả tươi nhập khẩu', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (182, N'Xoài cát Hoà Lộc túi 1kg',22, 39000, 0, N'đặc sản của miền Tây bởi hương vị thơm ngon, màu sắc bắt mắt, nguồn dinh dưỡng cao. Không chỉ nổi tiếng ở trong nước, xoài cát Hoà Lộc còn là loại trái cây xuất khẩu top đầu trong các loại hoa quả sạch trên thế giới. ', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (183, N'Bơ túi 1kg',22, 34000, 0, N'Hoa quả tươi nhập khẩu', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (184, N'Lê Singo nhập khẩu Trung Quốc hộp 1kg',22, 58000, 0, N'Hoa quả tươi nhập khẩu', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (185, N'Mãng cầu na túi 500g',22, 31000, 0, N'Hoa quả tươi nhập khẩu', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (186, N'Thanh long hồng túi 1kg',22, 44000, 0, N'Hoa quả tươi nhập khẩu', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (187, N'Mứt phúc bồn tử La Fresh hũ 210g',23,65000, 0, N'Phúc bồn tử (40%), đường mía (50%), pectin quả, chất bảo quản (202) và nước (10%)', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (188, N'Mứt cam Preserves Golden Farm hũ 450g',23, 60000, 0, N'Trái cam (45 - 60%), đường mía RE, siro bắp, nước, chất ổn định, chất điều chỉnh độ acid, chất bảo quản, hương cam tổng hợp, màu thực phẩm tổng hợp', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (189, N'Mứt nho Preserves Golden Farm hũ 450g',23, 70000, 0, N'Trái nho (45 - 60%), đường mía RE, siro bắp, nước, chất ổn định, chất điều chỉnh độ chua, chất bảo quản, hương nho tổng hợp, chất tạo màu tổng hợp', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (180, N'Mứt dâu tằm Golden Farm hũ 450g',23, 56000, 0, N'Thương hiệu Golden Farm (Việt Nam)', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (191, N'Mứt thơm Preserves Golden Farm hũ 210g',23, 29000, 0, N'Trái thơm (45 - 60%), đường mía RE, siro bắp, nước, chất ổn định, chất điều chỉnh độ chua, chất bảo quản, hương thơm tổng hợp', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (192, N'Lốc 3 hũ mứt dâu Preserves Golden Farm 30g',23, 30000, 0, N' Ăn kèm kem, sinh tố, bánh mì, trà nóng', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (193, N'Mứt việt quất Preserves Golden Farm hũ 210g',23, 40000, 0, N' Bảo quản ở nơi khô ráo, thoáng mát. Giữ lạnh sau khi mở nắp', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (194, N'Hộp quà Orion An hộp 703.8g',24, 135000, 0, N' Bánh Choco.pie Bánh Cutas kem trứng Bánh Tok vị tảo biển Bánh Tok vị phô mai Bánh gạo nướng An vị tảo biển Bánh quy sô cô la Miz Thực phẩm bổ sung - Bánh Marine Boy vị rong biển tuyết xanh Kẹo họng vị quất - mật ong', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (195, N'Bánh kem trứng Custas hộp 470g (20 cái)',24, 99000, 0, N'Trứng, bột mì, đường, chất béo thực vật, chất giữ ẩm, chất nhũ hoá, sữa bột nguyên kem, bột lòng đỏ trứng, chất ổn định,...', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (196, N'Bánh bông lan kem hỗn hợp 3 mùi Solo hộp 336g',24, 71000, 0, N'Bột mì, đường, chất béo thực vật, trứng gà, mạch nha, chất giữ ẩm, bột bắp, chất nhũ hoá, sữa béo,...', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (197, N'Bánh bông lan  Solite hộp 324g (18 cái)',24, 50000, 0, N' Để nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (198, N'Bánh bông lan Hura Deli hộp 336g (12 cái)',24,47000, 0, N'Bột mì, đường, trứng, chất béo thực vật, mạch nha, bơ, sữa bột, chất giữ ẩm, chất nhũ hoá, nước, tinh bột bắp, chất tạo xốp, muối, sô cô la compound trắng, hương tổng hợp,...', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (199, N'Bánh bông lan  Quasure Light hộp 126g (7 cái)',24, 29000, 0, N'Bột mì, trứng, isomalt, chất béo thực vật, mạch nha, chất giữ ẩm, đường, sữa bột, chất nhũ hoá, chất tạo xốp, muối, chất xơ hoà tan, vitamin, hương tổng hợp,...', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (200, N'Bánh bông lan tròn kem vị dâu Solite hộp 36g (2 cái)',24, 8000, 0, N'Để nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (201, N'Thịt heo hầm Master T hộp 180g',33, 26000, 0, N'Nạc heo, nước, hành tây, dầu thực vật, muối, đường, chất điều vị (621), chất ổn định (451i) và (1422), hương thịt tổng hợp, chất bảo quản (250)', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (202, N'Thịt heo hầm 3 Bông Mai Vissan hộp 150g',33, 22000, 0, N'Thịt heo 50%, đường, muối, hành, tỏi, nước mắm,...', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (203, N'Thịt vai heo Picnic Shoulder Categoria Extra Tulip hộp 454g',33, 212000, 0, N'Ăn trực tiếp hoặc ăn kèm cơm, bánh mì, trộn salad', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (204, N'Heo hai lát Vissan hộp 150g',33, 26000, 0, N'Nạc heo 55%, mỡ heo, nước, protein đậu nành, đường..', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (205, N'Cá ngừ sốt cà ri Dongwon lon 100g',33, 33000, 0, N'Dùng trực tiếp hoặc hâm nóng trước khi dùng, ăn nhanh sau khi mở', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (206, N'Cá kho thịt 3 Bông mai Vissan hộp 150g',33, 17000, 0, N'Cá nục (30%), thịt heo (25%), nước, ớt, hành, muối i-ốt, đường, chất điều vị (621), chất giữ ẩm (451i, 452i), tiêu đen xay, chất ổn định (1422), nước mắm, phẩm màu tổng hợp (150a)', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (207, N'Bò hầm Vissan hộp 150g',33, 35000, 0, N'Thịt bò 55%, muối, đường, tỏi, hành...', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (208, N'Cá trích sốt cà Sea Crown hộp 155g',33, 12000, 0, N'Cá trích 60%, sốt cà 27%, nước 11.7%, muối 1%, chất điều vị 0.3%', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (209, N'Cá mòi xốt cà chua nắp giật 3 Cô Gái hộp 155g (vị đậm đà)',33, 17000, 0, N'Cá biển (cá mòi, cá ngân, cá nục,...) 60%, xốt cà chua 35%, dầu nành, đường, muối i-ốt, chất làm dày (1442, 1414, 412), chất điều vị 621, màu thực phẩm 160d', N'SENDO');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, GiamGia, MoTa, MaNCC) values (210, N'Lốc 3 hộp Cá saba xốt nước tương Norlake 150g',33, 102000, 0, N' Để nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp', N'SENDO');

CREATE TABLE KHACHHANG (
  MaKH NUMBER(10) NOT NULL,
  HoTen NVARCHAR2(50) ,
  DiaChi NVARCHAR2(60),
  DienThoai VARCHAR2(24),
  Email VARCHAR2(50) ,
  GioiTinh NUMBER(1) NOT NULL,
  NgaySinh DATE,
  CONSTRAINT pk_kh PRIMARY KEY (MaKH)
);



INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (1,  N'Khách Vãng Lai', N'Không', N'Không', N'Không' , 1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (2,  N'Minh Cao', N'TPHCM', N'0971890712', N'minhcd@gmail.com',  1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (3,  N'Nguyễn Thanh Sang', N'Q11', N'0971890712', N'sanglun2254_1@gmail.com',  1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (4,  N'Nguyễn Ngọc Hiền', N'Gò Vấp', N'0377077630', N'pinkwater98@gmail.com', 0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (5,  N'Hồ  Quỳnh Nga', N'280 ADV', N'0904877306', N'wanriky2998@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (6,  N'Lê Thị Hiền', N'Bình Thạnh', N'0904877306', N'hiennt@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (7,  N'Lê Thanh Sang', N'Thủ Đức', N'0904877306', N'sanglt8@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (8,  N'Hồ Viết Thọ', N'Q11', N'0904877306', N'thobt@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (9,  N'Nguyễn Quốc Hoàn', N'Q12', N'0904877306', N'hoan2008@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (19,  N'Đinh Văn Thanh', N'Bình Thạnh', N'0904877306', N'thanhpt@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (11,  N'Ngô Đức Anh', N'Khu CN sóng Thần', N'0904877306', N'ducanh@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (12,  N'Nguyễn Thị Ngọc Huyền', N' Vũng Tàu', N'0904877306', N'huyen1999@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (13,  N'Hồ Diệu Huyền', N'Q5', N'0904877306', N'hien7965@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (14,  N'Nguyễn Thị Uyển Cương', N'Thủ Đức', N'0904877306', N'cuongcntt8@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (15,  N'Lê Văn Hậu', N'Bình Tân', N'0904877306', N'haucnaa@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (16,  N'Nguyễn Hoàng Anh', N'Bình Thạnh', N'0904877306', N'anhbinhthanh@gmail.com',   0, NULL);




CREATE TABLE HOADON (
  MaHD NUMBER(10) ,
  MANV NUMBER NOT NULL,
  MACN NUMBER NOT NULL,
  MaKH NUMBER(10),
  HoTen NVARCHAR2(50),
  DiaChi NVARCHAR2(60),
  SDT VARCHAR2(20),
  GhiChu NVARCHAR2(50),
  NgayTao Date NOT NULL,
  TongTienHang FLOAT,
  TongThucThu FLOAT,
  CONSTRAINT pk_hd PRIMARY KEY (MaHD),
  CONSTRAINT fk_hd_kh FOREIGN KEY (MaKH) REFERENCES KHACHHANG(MaKH),
  CONSTRAINT fk_hd_nv FOREIGN KEY (MANV) REFERENCES NHANVIEN(MaNV),
  CONSTRAINT fk_hd_cn FOREIGN KEY (MACN) REFERENCES CHINHANH(MaChiNhanh)
);

INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (1, 1,1,1,N'Nguyẽn Thanh Sang',N'Bình Dương', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (2, 1,2,2,N'Minh Cao', N'TPHCM', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),236800,237000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (3, 2,3,3,N'Nguyễn Thanh Sang', N'Q11', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),34500,345000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (4, 3,4,4,N'Nguyễn Ngọc Hiền', N'Gò Vấp', N'',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),1135100,1135000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (5, 4,5,5,N'Hồ  Quỳnh Nga', N'280 ADV', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),6800,6800);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (6, 5,6,6, N'Lê Thị Hiền', N'Bình Thạnh', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (7, 6,7,7,N'Lê Thanh Sang', N'Thủ Đức', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),356100,256000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (8, 7,8,8,N'Hồ Viết Thọ', N'Q11', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),115100,115000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (9, 8,9,9,N'Nguyễn Quốc Hoàn', N'Q12', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),679000,679000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (10,9,10,19, N'Đinh Văn Thanh', N'Bình Thạnh', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),127800,127800);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (11,10,11,11,N'Ngô Đức Anh', N'Khu CN sóng Thần', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),13500,13500);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (12,11,12,12,N'Nguyễn Thị Ngọc Huyền', N' Vũng Tàu', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),34200,34000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (13,12,13,13, N'Hồ Diệu Huyền', N'Q5', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),50000,50000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (14,13,14,14,N'Nguyễn Thị Uyển Cương', N'Thủ Đức', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),234000,234000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (15,2,15,15, N'Lê Văn Hậu', N'Bình Tân', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);

CREATE TABLE CHITIETHD(
  MaHD NUMBER(10) NOT NULL,
  MaHH NUMBER(10) NOT NULL,
  DonGia NUMBER(10,1) ,
  GiamGia NUMBER(10,1) NULL,
  SoLuong NUMBER(10) ,
  KichCo VARCHAR2(5),
  CONSTRAINT pk_cthd PRIMARY KEY (MaHD, MAHH),
  CONSTRAINT fk_cthd_hd FOREIGN KEY (MaHD) REFERENCES HOADON(MaHD),
  CONSTRAINT fk_cthd_hh FOREIGN KEY (MaHH) REFERENCES HANGHOA(MaHH)
);

INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong, KichCo) VALUES (5, 1, 20000, 10, 2, '3x5cm');
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong, KichCo) VALUES (2, 2, 20000, 10, 5, '3x5cm');
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong, KichCo) VALUES (3, 3, 20000, 10, 5, '3x5cm');
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong, KichCo) VALUES (4, 4, 20000, 10, 5, '3x5cm');
