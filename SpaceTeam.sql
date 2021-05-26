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
)

INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (1, 'Big C Miền Đông');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (2, 'Big C Âu Cơ');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (3, 'Big C Phú Thạnh');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (4, 'Big C Trường Chinh');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (5, 'Big C Gò Vấp');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (6, 'Big C Nguyễn Thị Thập');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (7, 'Big C Thảo Điền');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (8, 'Big C An Phú');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (9, 'Big C An Lạc');



CREATE TABLE CHUCVU
(
	MaChucVu VARCHAR2(10) NOT NULL,
	TenChucVu NVARCHAR2(50) NOT NULL,
     	CONSTRAINT FK_Chuc_Vu PRIMARY KEY (MaChucVu)
);


INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV01', 'Nhân Viên Bán Hàng');

INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV02', 'Nhân Viên Quản Lí');

INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('CV03', 'Tổ Trưởng Quản Lí');


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

INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu ) VALUES (1, 'Nguyễn Quốc Cường', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 1,'CV01');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu ) VALUES (2, 'Nguyễn Thị Kim Anh', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 2,'CV02');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu ) VALUES (3, 'Nguyễn Duy Minh', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 1,'CV01');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu ) VALUES (4, 'Nguyễn Minh Quốc', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 1,'CV02');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu ) VALUES (5, 'Dương Thái Nhật', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 1,'CV01');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu )  VALUES (6, 'Võ Lê Ngọc Diệp', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 1,'CV01');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau,MaChiNhanh, MaChucVu )  VALUES (7, 'Dương Tấn Thiên', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A Lạc Long Quân P5 Quận 11','nqcuong20', 'abcd12', 1,'CV02');



CREATE TABLE LOAI(
  MaLoai NUMBER NOT NULL,
  TenLoai NVARCHAR2(30) NOT NULL,
  CONSTRAINT pk_loai PRIMARY KEY (MaLoai)
);

INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (1, 'Thực Phẩm');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (2, 'Khăn giấy, giấy vệ sinh, tã em bé');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (3, 'Mỹ Phẩm');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (4, 'Văn Phòng Phẩm');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (5, 'Bàn Chải, Kem Đánh Răng');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (6, 'Thực Phẩm Khô');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (7, 'Nước Giải Khát');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (8, 'Sữa');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (9, 'Bánh Kẹo');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (10, 'Mì Gói');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (11, 'Dầu Ăn');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (12, 'Nước, Bột Giặt');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (13, 'Đồ da dụng');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (14, 'Hải Sản');

CREATE TABLE NHACUNGCAP(
  MaNCC VARCHAR2(10) NOT NULL,
  TenCongTy NVARCHAR2(50) ,
  Email VARCHAR2(50) ,
  DienThoai VARCHAR2(24) ,
  DiaChi NVARCHAR2(60) ,
  CONSTRAINT pk_ncc PRIMARY KEY (MaNCC)
);


INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'ESHOP', N'ESHOP', N'eshop@gmail.com', N'1654651326', N'TPHCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'KENTA', N'KENTA', N'kenta@gmail.com', N'653256565', N'TPHCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'SENDO', N'SENDO', N'sendo@gmail.com', N'2356562323', N'TPHCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (N'YAME', N'YAME', N'yame@gmail.com', N'32565365323', N'BI?NH D??NG');


CREATE TABLE HANGHOA (
  MaHH NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY,
  TenHH NVARCHAR2(60) NOT NULL,
  MaLoai NUMBER NOT NULL,
  Hinh NVARCHAR2(60),
  DonGia FLOAT NOT NULL,
  GiamGia FLOAT NOT NULL,
  MoTa NVARCHAR2(1000),
  MaNCC VARCHAR2(10) NOT NULL,
  CONSTRAINT pk_hh PRIMARY KEY (MaHH),
  CONSTRAINT fk_hh_loai FOREIGN KEY (MaLoai) REFERENCES LOAI(MaLoai),
  CONSTRAINT fk_hh_ncc FOREIGN KEY (MaNCC) REFERENCES NHACUNGCAP(MaNCC)
);


INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (7, N'A?O S? MI NAM DA?I TAY TR??NG SMT16', 1, N'so_mi_nam_16.jpg', 350000, 0.15, N'S? mi tay da?i tr??ng phong ca?ch tinh sa?o', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (11, N'A?O S? MI NAM DA?I TAY TR??NG SMT12', 2, N'so_mi_nam_012.jpg', 280000, 0.12, N'S? mi body hoa v?n ho?a tiê?t tinh sa?o', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (17, N'A?O S? MI NAM DA?I TAY TR??NG SMT12', 3, N'so_mi_nam_01.jpg', 280000, 0, N'S? mi tay da?i nam tr??ng phong ca?ch', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (18, N'A?O S? MI NAM DA?I TAY TR??NG SMT0001', 4, N'so_mi_nam_0001.jpg', 300000, 0.2, N'A?o s? mi cô? cao tr??ng sang tro?ng quy? pha?i', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (19, N'A?O S? MI NAM DA?I TAY SO?C ?EN TR??NG SMT0004', 5, N'ao_so_mi_0004.jpg', 320000, 0.2, N'A?o s? mi so?c ?en tr??ng sang tro?ng quy? pha?i', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (20, N'A?O S? MI NAM DA?I TAY ?O? SO?C SMT0006',1, N'ao_so_mi_0006.jpg', 300000, 0.2, N'A?o s? mi cô? cao ?o? so?c sang tro?ng quy? pha?i', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (21, N'A?O S? MI NAM DA?I TAY XA?M SO?C ?EN SMT0018', 4, N'ao_so_mi_0018.jpg', 300000, 0.2, N'A?o s? mi cô? cao xa?m ?en so?c sang tro?ng quy? pha?i', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (22, N'A?O S? MI NAM DA?I TAY XANH SO?C ?EN SMT0026',5, N'ao_so_mi_0026.jpg', 300000, 0.2, N'A?o s? mi cô? cao xanh so?c sang tro?ng quy? pha?i', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (23, N'A?O S? MI NAM NG??N TAY SMT0001', 7, N'ao_so_mi_0001.jpg', 300000, 0.2, N'A?o s? mi cô? cao ?o? so?c sang tro?ng quy? pha?i', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (24, N'A?O S? MI NAM NG??N TAY HO?A TIÊ?T SMT0065', 1, N'ao_so_mi_tay_ngan_0065.jpg', 300000, 0.2, N'A?o s? mi ng??n xanh sang tro?ng quy? pha?i', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (25, N'A?O S? MI NAM NG??N TAY SMT0069', 3, N'ao_so_mi_tay_ngan_0069.jpg', 300000, 0.2, N'A?o s? mi ng??n xanh sang tro?ng quy? pha?i', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (26, N'A?O THUN NAM NG??N TAY SMT0005', 3, N'ao_thun_nam_5.jpg', 110000, 0.2, N'A?o thun ng??n sang tro?ng quy? pha?i', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (27, N'A?O THUN NAM NG??N TAY SMT0001', 4, N'ao_thun_nam_01.jpg', 110000, 0.2, N'A?o thun ng??n sang tro?ng quy? pha?i', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (28, N'A?O THUN NAM NG??N TAY SMT0010',5, N'ao_thun_nam_1.jpg', 110000, 0.2, N'A?o thun ng??n sang tro?ng quy? pha?i', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (29, N'A?O THUN NAM NG??N TAY SMT0041', 1, N'ao_thun_nam_41.jpg', 110000, 0.2, N'A?o thun ng??n sang tro?ng quy? pha?i', N'ESHOP');
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, Hinh, DonGia, GiamGia, MoTa, MaNCC) values (30, N'A?O THUN NAM NG??N TAY SMT0073',3, N'ao_thun_nam_73.jpg', 110000, 0.2, N'A?o thun ng??n sang tro?ng quy? pha?i', N'ESHOP');



CREATE TABLE KHACHHANG (
  MaKH NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY,
  HoTen NVARCHAR2(50) ,
  DiaChi NVARCHAR2(60),
  DienThoai VARCHAR2(24),
  Email VARCHAR2(50) ,
  GioiTinh NVARCHAR2(50),
  NgaySinh DATE,
  CONSTRAINT pk_kh PRIMARY KEY (MaKH)
);

INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (4,  N'Nguyê?n Thanh Sang', N'Bi?nh D??ng', N'0971890712', N'sanglun2254@gmail.com' , N'Nam', NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (5,  N'Minh Cao', N'TPHCM', N'0971890712', N'minhcd@gmail.com',  N'Nam', NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (6,  N'Nguyê?n Thanh Sang', N'Bi?nh D??ng', N'0971890712', N'sanglun2254_1@gmail.com',  N'Nam', NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (10,  N'anonymouse', N'Không co?', N'', N'pinkwater98@gmail.com', N'Nam', NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (11,  N'?? Phúc H?u', N'280 ADV', N'0904877306', N'wanriky2998@gmail.com',   N'Nam', NULL);


CREATE TABLE HOADON (
  MaHD NUMBER(10) ,
  MANV NUMBER NOT NULL,
  MACN NUMBER NOT NULL,
  MaKH NUMBER(10) NOT NULL,
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
)

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
)
