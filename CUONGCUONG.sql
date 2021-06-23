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
	MaChiNhanh NUMBER(10) NOT NULL,
	TenChiNhanh NVARCHAR2(50) NOT NULL,
    	CONSTRAINT FK_Chi_Nhanh PRIMARY KEY (MaChiNhanh)
);


INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (1, 'Big C Mi?n ?ông');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (2, 'Big C Âu C?');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (3, 'Big C Phú Th?nh');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (4, 'Big C Tr??ng Chinh');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (5, 'Big C Gò V?p');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (6, 'Big C Nguy?n Th? Th?p');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (7, 'Big C Th?o ?i?n');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (8, 'Big C An Phú');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (9, 'Big C An L?c');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (10, 'Big C Bình D??ng');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (11, 'Big C B?c Giang');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (12, 'Big C Quy Nh?n');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (13, 'Big C Lê Tr?ng T?n');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (14, ' Big C Long Biên');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (15, ' Big C Mê Linh');



CREATE TABLE CHUCVU
(
	MaChucVu NUMBER(10) NOT NULL,
	TenChucVu NVARCHAR2(50) NOT NULL,
     	CONSTRAINT FK_Chuc_Vu PRIMARY KEY (MaChucVu)
);


INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('1', 'Nhân Viên Bán Hàng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('2', 'Nhân Viên Qu?n Lí');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('3', 'Nhân Viên Thu Ngân');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('4', 'Nhân Viên B?o V?');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('5', 'Nhân Viên T? V?n');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('6', 'Nhân Viên K? Toán');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('7', 'Nhân Viên Kiêm Kê');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('8', 'T? Tr??ng Qu?n Lí');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('9', 'T? Phó Qu?n Lí');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('10', 'T? Tr??ng Bán Hàng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('11', 'T? Phó Bán Hàng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('12', 'T? Tr??ng Thu Ngân');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('13', 'T? Phó Thu Ngân');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('14', 'T? Tr??ng An Ninh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('15', 'T? Phó An Ninh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('16', 'K? Tóan Tr??ng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('17', 'K? Tóan L??ng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('18', 'Nhân Viên Kho');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('19', 'Giám ??c Chi Nhánh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('20', 'Qu?n Lý Chi Nhánh');



CREATE TABLE NHANVIEN
(
	MaNV NUMBER(10) NOT NULL,
	HoTen NVARCHAR2(100) NOT NULL,
  	GioiTinh NUMBER(1) NOT NULL,
	NgaySinh DATE ,
	SDT VARCHAR2(24),
	DiaChi NVARCHAR2(100) ,
  	TenDN VARCHAR2(20) NOT NULL,
  	MatKhau LONG RAW ,
  	Luong CLOB,
  	Email varchar2(100),
	MaChiNhanh NUMBER(10) NOT NULL,
	MaChucVu NUMBER(10) NOT NULL,
 	CONSTRAINT FK_NV PRIMARY KEY (MaNV),
  	CONSTRAINT FK_NV_CN FOREIGN KEY (MaChiNhanh) REFERENCES ChiNhanh(MaChiNhanh),
  	CONSTRAINT FK_NV_CV FOREIGN KEY (MaChucVu) REFERENCES ChucVu(MaChucVu)
);
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (1, N'Nguy?n Qu?c C??ng', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','nqcuong20', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee01@gmail.com',  1,'1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (2, N'Nguy?n Th? Kim Anh', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','nqcuong20', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee02@gmail.com',2,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (3, N'Nguy?n Duy Minh', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','nqcuong20', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee03@gmail.com',1,'1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (4, N'Nguy?n Minh Qu?c', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','nqcuong20', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee04@gmail.com', 1,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (5, N'D??ng Thái Nh?t', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','nqcuong20', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee05@gmail.com',1,'1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (6, N'Võ Lê Ng?c Di?p', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','nqcuong20', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==','employee06@gmail.com',1,'1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (7, N'D??ng T?n Thiên', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','kimanh', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==','employee07@gmail.com',1,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (8, N'Ngô ??c Anh', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Quân 11','duocanh@', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee08@gmail.com',7,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (9, N'Tr?n V?n Nh?t Tân', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '121 ???ng s? 6 P Linh Tây','employee1@', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee09@gmail.com',8,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (10, N'?? Th? B?o Quyên', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '291/12/5 Nguy?n Qu?c Toàn P7 ','employee2@', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee10@gmail.com', 9,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (11, N'H? Ng?c Hà', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '45 Th?o ?i?n Q10','employee3@', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee11@gmail.com',8,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (12, N'Nguy?n Hoành Anh', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Quân 11','employee4@', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee12@gmail.com',7,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (13, N'Lý Hoàng Mai', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '230 An D??ng V??ng P11 A5','employee5@', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee13@gmail.com', 9,'2');



CREATE TABLE LOAI(
  MaLoai NUMBER(10) NOT NULL,
  TenLoai NVARCHAR2(30) NOT NULL,
  CONSTRAINT pk_loai PRIMARY KEY (MaLoai)
);

INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (1, 'Th?c Ph?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (2, 'Kh?n gi?y, gi?y v? sinh');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (3, 'M? Ph?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (4, 'V?n Phòng Ph?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (5, 'Bàn Ch?i, Kem ?ánh R?ng');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (6, 'Th?c Ph?m Khô');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (7, 'N??c Gi?i Khát');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (8, 'S?a');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (9, 'Bánh K?o');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (10, 'Mì Gói');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (11, 'D?u ?n');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (12, 'N??c x? v?i');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (13, '?? gia d?ng');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (14, 'N??c r?a tay');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (15, 'B?t gi?t');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (16, 'S?a t?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (17, 'D?u g?i');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (18, 'N??c t?ng l?c');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (19, 'S?a');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (20, 'Thi?t b? y t?');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (21, 'Rau xanh');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (22, 'Hoa Qu?');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (23, 'M?t');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (24, 'Bánh');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (25, 'K?o');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (26, 'Kh?u trang');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (27, 'Qu?n áo ng??i l?n');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (28, 'Qu?n áo tr? em');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (29, 'Thi?t b? ?i?n t?');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (30, '?? công ngh?');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (31, '?? trang s?c');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (32, '?? ch?i');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (33, 'Th?c ?n ?óng h?p');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (34, 'Th?c ?n có s?n');

CREATE TABLE NHACUNGCAP(
  MaNCC NUMBER(10) NOT NULL,
  TenCongTy NVARCHAR2(50),
  Email VARCHAR2(50),
  DienThoai VARCHAR2(24),
  DiaChi NVARCHAR2(100),
  CONSTRAINT pk_ncc PRIMARY KEY (MaNCC)
);

INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (1, 9, N'eshop@gmail.com', N'1654651326', N'TPHCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (2, N'KENTA', N'kenta@gmail.com', N'653256565', N'TPHCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (3, 3, N'sendo@gmail.com', N'2356562323', N'TPHCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (4, 10, N'yame@gmail.com', N'32565365323', N'BÌNH D??NG');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (5, N'Cp N??c Gi?i Khát Ch??ng D??ng', N' info@cdbeco.com.vn', N'( 84-8) 3836 7518', N'577 Hùng V??ng, P. 12, Qu?n 6 ');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (6, N'Công Ty Tnhh N??c Gi?i Khát Delta', N'delta@gmail.com', N'0723827010', N'	S? 42, Võ Ng?c Qu?n, Ph??ng 6, , Vi?t Nam');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (7, N'Th?c Ph?m ?óng H?p KTC Kiên Giang', N'sale@ktcfood.com.vn', N' 0297.3617724', N'Khu C?ng cá T?c C?u, Châu Thành, Kiên Giang');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (8, N'Công Ty Xu?t Kh?u Rau Qu? Ti?n Giang', N'info@vegetigi.com', N' (84.273) 3834 677', N' Kilômét s? 1977, , Ti?n Giang');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (9, N'Công Ty CP Th?c Ph?m Xu?t Kh?u ??ng Giao', N'sales@doveco.com.vn', N'(+84) 229 3770 353', N' Ph??ng Trung S?n,Tam ?i?p, Ninh Bình');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (10, N'Công Ty TNHH Th?c Ph?m Dinh D??ng Sài Gòn', N'yame@gmail.com', N'(84. 0650) 3737 692', N' KCN Sóng Th?n 2, D? An, Bình D??ng');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (11, N'Công Ty TNHH Saigon Ve Wong', N'yame@gmail.com', N'(028) 37195550, 37195554', N'1707 Qu?c L? 1A, P. An Phú ?ông, Q. 12, Tp. H? Chí Minh (TPHCM)');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (12, N'CÔNG TY C? PH?N RAU QU? BÌNH THU?N', N'hoangrauqua@fruitsandgreens.com', N'0913 932 446', N'107 ??ng V?n Lãnh, Ph??ng Phú Tài, , T?nh Bình Thu?n');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (13, N'CÔNG TY C? PH?N PHÂN PH?I ?I?N T? JVS', N'info@jvs.vn', N'32565365323', N'24 Giai Phóng, P.4, Q. Tân Bình, Tp HCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (14, N'Công ty TNHH Panasonic Vi?t Nam', N' customer@vn.panasonic.com', N'(+84) 024 3955 0111', N'	Lô J1-J2 Khu công nghi?p Th?ng Long,  Hà N?i, Vi?t Nam.');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (15, N'Công ty TNHH Thaipro', N'thaipro@gmail.com', N'32565365323', N'GD2-14, Khu Công nghi?p Ng?c H?i, Thanh Trì, Hà N?i.');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (16, N'Công ty TNHH ?i?n T? Samsung', N'samsung@gmail.com', N' +84-2839157310', N'S? 2, ???ng H?i Tri?u, Ph??ng B?n Nghé, Qu?n 1, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (17, N'Công ty C? ph?n Th?c ph?m Thiên H??ng', N' contact@thienhuongfood.com.vn', N'028 37171449', N'S? 1 Lê ??c Th?, Khu Ph? 02, Tân Th?i Hi?p, Qu?n 12, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (18, N'Công ty C? ph?n K? ngh? th?c ph?m Vi?t Nam ', N'vifon@vifon.com.vn', N'028 38153933', N'913 Tr??ng Chinh, P. Tây Th?nh, Q. Tân Phú, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (19, N'Công ty C? ph?n Acecook Vi?t Nam', N'acecook@gmail.com', N'028 3 815 4064', N' Lô II-3, ???ng s? 11, , P.Tây Th?nh, Q. Tân Phú, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (20, N'Công ty C? ph?n Hàng tiêu dùng MaSan', N'danielle@msn.masangroup.com', N' 0286 2555 660', N'T?ng 12, tòa nhà MPlaza Saigon, Qu?n 1, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (21, N'Công ty TNHH S?n xu?t th??ng m?i Phúc H?o', N'info@phuchaonoodles.com.vn', N'0932.704.724', N' 347 H? V?n T?ng, Huy?n C? Chi, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (22, N'Công ty C? ph?n công ngh? th?c ph?m Châu Á', N'micoem@micoem.vn', N'02223 714 146', N'S? 4 B?ch ??ng, P.Th?ch Thang, Q. H?i Châu, TP ?à N?ng');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (23, N'Cty CP Th?c ph?m Á Châus', N'info@asiafoods.vn', N'028 4450 0588 ', N'801-804 T?ng 8, Saigon Trade Center, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (24, N'Công ty C? ph?n l??ng th?c th?c ph?m Colusa', N'colusa@comifood.com', N'028 3896 6835', N'1230 Kha V?n Cân, Linh Trung, Th? ??c, TP. H? Chí Minh');


CREATE TABLE HANGHOA (
  MaHH NUMBER(10) NOT NULL,
  TenHH NVARCHAR2(60) NOT NULL,
  MaLoai NUMBER(10) NOT NULL,
  SoLuong NUMBER(10),
  DonGia FLOAT ,
  GiamGia FLOAT ,
  MoTa NVARCHAR2(1000),
  MaNCC NUMBER(10) NOT NULL,
  CONSTRAINT pk_hh PRIMARY KEY (MaHH),
  CONSTRAINT fk_hh_loai FOREIGN KEY (MaLoai) REFERENCES LOAI(MaLoai),
  CONSTRAINT fk_hh_ncc FOREIGN KEY (MaNCC) REFERENCES NHACUNGCAP(MaNCC)
);
--select * from HANGHOA
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (1, N'MÌ ?N LI?N MILIKET', 10, 1500, 10, 0, N' V?T MÌ - B?t mì, shortening, tinh b?t khoai mì, mu?i, ???ng, ch?t ?n ??nh (501(i), 452(i), 466), ch?t t?o x?p (500(i)), ph?m màu t? nhiên (160a(ii), 160c, 100(i)), b?t tôm, ch?t ch?ng oxy hoá (321). ', 21);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (2, N'MÌ ?N LI?N H?O H?O', 10,  3500, 10, 0, N'?T MÌ - B?t mì (b? sung vi ch?t (k?m, s?t)), d?u th?c v?t (d?u c?, ch?t ch?ng oxy hoá (BHA (320), BHT (321))), tinh b?t, mu?i, ???ng, n??c m?m, ch?t ?i?u v? (mononatri glutamat (621)), ch?t ?n ??nh (pentanatri triphosphat (451(i), ', 21);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (3 ,N'MÌ ?N LI?N TÔM CHUA CAY', 10, 2500, 10, 0, N'S?i mì 3 Mi?n ???c làm b?t khoai tây, b?t mì, màu t? nhiên, vitamin B1, B2, B3, B6, B9… tr? nên dai, m?m h?p d?n. ', 22);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (4, N'MÌ ?N LI?N OMAICHI BÒ H?M', 10 , 5000, 10, 0, N'Mì Omachi X?t Bò H?m sinh ra t? lúa mì và tinh ch?t khoai tây, hòa quy?n v?i tr?ng, t?ng s?i mì Omachi vàng ??m dai ngon nay còn ???c ??m mình trong n??c c?t t? th?t và x??ng nên càng ??m ?à h?p d?n ', 21);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (5 ,N'MÌ ?N LI?N OMACHI TR?N', 10, 5000, 10, 0, N'Mì Omachi x?t Spaghetti v? bò v?i s?i mì m?m, dai, ???c làm t? khoai tây t??i ch?n l?c, k?t h?p v?i n??c x?t ???c ch? bi?n t? th?t bò b?m và cà chua t??i làm nên h??ng v? ??c tr?ng c?a n??c Ý. ', 22);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (6, N'MÌ ?N LI?N A ONE', 10, 3000, 10, 0, N'B?t mì, d?u shortening, mu?i, ch?t ?i?u v?: Monosodium glumate (E621), ???ng , b?t tiêu ?en, b?t ?t, d?u th?c v?t, hành lá s?y, khô, h??ng th?t xào t?ng h?p. ', 22);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (7, N'ÁO S? MI NAM DÀI TAY TR?NG SMT16', 27 , 350000, 10, 0.15, N'S? mi tay dài tr?ng phong cách tinh ', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (11, N'ÁO S? MI NAM DÀI TAY TR?NG SMT12', 27, 280000, 10, 0.12, N'Áo s? mi nam C? B? V?i L?a Thái ch?ng nh?n (CAM K?T ?NH TH?T)-Dáng ôm Body Hàn Qu?c ??p', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (17, N'ÁO S? MI NAM DÀI TAY TR?NG SMT16', 27, 280000, 10, 0, N'SKU: SMT16 Category: Áo S? Mi Nam Tags: áo s? mi, áo s? mi ?en, áo s? mi tr?ng', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (18, N'ÁO S? MI NAM DÀI TAY TR?NG SMT0001', 27,  300000, 10, 0.2, N'Mua ngay Áo s? mi nam V?i L?a Thái Tr?ng ch?ng nh?n SMT001-Dáng ôm Body Hàn qu?c chính hãng ', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (19, N'ÁO S? MI NAM DÀI TAY S?C ?EN TR?NG SMT0004', 27, 320000, 10, 0.2, N'Áo s? mi s?c ?en tim ?en- UNISEX cao c?p giá r?. S? mi nam dài tay màu tr?ng sành ?i?u thoáng mát không nh?n.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (20, N'ÁO S? MI NAM DÀI TAY S?C SMT0006',27, 300000, 10, 0.2, N'áo s? mi nam trung niên ??p, l?ch s? v?i ch?t li?u cao c?p : cotton, s?i tre, nano. ?? size t? 38-43.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (21, N'ÁO S? MI NAM DÀI TAY S?C XÁM SMT0018', 27,  300000, 10, 0.2, N'Áo s? mi nam dài tay, Áo s? mi nam công s? h?a ti?t k? s?c có túi ng?c, Ki?u s? mi thoáng mát b?n ??p sang', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (22, N'ÁO S? MI NAM DÀI TAY  XANH S?C DEN  SMT0026',27, 300000, 10, 0.2, N'Áo s? mi nam dài tay th??ng hi?u Anton k? s?c xanh d??ng ', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (23, N'ÁO S? MI NAM  NG?N TAY SMT0001', 27,  300000, 10, 0.2, N'Áo s? mi nam tay ng?n cho quý ông tr? trung. Áo s? mi c?c tay l?ch s? mà v?n n?ng ??ng th? hi?n b?n l?nh ?àn ông ?ích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (24, N'ÁO S? MI NAM  NG?N TAY H?A TI?T SMT0065', 27, 300000, 10, 0.2, N'Các m?u áo s? mi nam ng?n tay cao c?p, giá c? h?p lý.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (25, N'ÁO S? MI NAM  NG?N TAY SMT0069', 27,  300000, 10, 0.2, N'Áo s? mi nam tay ng?n cho quý ông tr? trung. Áo s? mi c?c tay l?ch s? mà v?n n?ng ??ng th? hi?n b?n l?nh ?àn ông ?ích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (26, N'ÁO S? MI NAM  NG?N TAY SMT0005', 27,  110000, 10, 0.2, N'Áo s? mi nam tay ng?n cho quý ông tr? trung. Áo s? mi c?c tay l?ch s? mà v?n n?ng ??ng th? hi?n b?n l?nh ?àn ông ?ích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (27, N'ÁO S? MI NAM  NG?N TAY SMT0001', 27, 110000, 10, 0.2, N'Áo s? mi nam tay ng?n cho quý ông tr? trung. Áo s? mi c?c tay l?ch s? mà v?n n?ng ??ng th? hi?n b?n l?nh ?àn ông ?ích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (28, N'ÁO S? MI NAM  NG?N TAY SMT0010',27,  110000, 10, 0.2, N'Áo s? mi nam tay ng?n cho quý ông tr? trung. Áo s? mi c?c tay l?ch s? mà v?n n?ng ??ng th? hi?n b?n l?nh ?àn ông ?ích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (29, N'ÁO S? MI NAM  NG?N TAY SMT0041', 27, 110000, 10, 0.2, N'Áo s? mi nam tay ng?n cho quý ông tr? trung. Áo s? mi c?c tay l?ch s? mà v?n n?ng ??ng th? hi?n b?n l?nh ?àn ông ?ích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (30, N'ÁO S? MI NAM  NG?N TAY   SMT0073',27,  110000, 10, 0.2, N'Áo s? mi nam tay ng?n cho quý ông tr? trung. Áo s? mi c?c tay l?ch s? mà v?n n?ng ??ng th? hi?n b?n l?nh ?àn ông ?ích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (31, N'D?u ?n Neptune',11, 45000, 10, 0.2, N'D?u ?n Neptune 1:1:1 là lo?i d?u th?c v?t th? h? m?i t?t cho s?c kh?e c?a công ty d?u th?c v?t Cái Lân. ?ây c?ng là lo?i d?u th?c v?t duy nh?t trên th? tr??ng ???c s?n xu?t t? h?n h?p d?u g?o, d?u h?t c?i, d?u ??u nành và d?u Olein, không ch?a a-xít béo c?u hình trans, không cholesterol r?t t?t cho s?c kh?e tim m?ch…', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (32, N'D?u ?n h??ng d??ng Nga',11, 52000, 10, 0.2, N'D?u ?n h??ng d??ng Nga ???c làm t? 100% h?t h??ng d??ng nguyên ch?t, ???c s?n xu?t d?a trên công ngh? ép l?nh không tinh ch?. Vì v?y, gi? ???c ??y ?? các thành ph?n vitamin và khoáng ch?t có l?i cho s?c kh?e nh?: vitamin A, B,E và các axit không bão hòa ?a (Omega 3, 6, 9) và có màu vàng t? nhiên.i', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (33, N'D?u ?n Meizan',11,  41000, 10, 0.2, N'D?u ?n Meizan c?ng là m?t s? l?a ch?n thông minh cho các bà n?i tr?. Meizan có ?a d?ng các lo?i d?u ?n ??u có l?i cho s?c kh?e nh?: D?u th?c v?t Meizan, D?u ??u nành Meizan, B? th?c v?t Meizan, D?u mè th?m h?o h?ng Meizan. ', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (34, N'D?u ?n Simply',11, 49000, 10, 0.2, N'd?u ??u nành Simply ???c làm t? 100% ??u nành nguyên ch?t, là m?t trong nh?ng lo?i d?u th?c v?t ???c s? d?ng r?ng rãi nh?t trên th? gi?i b?i nh?ng l?i ích s?c kh?e, thành ph?n và ch?t ch?ng oxi hóa v?n còn l?u l?i trong d?u ngay c? sau khi ???c tinh luy?n.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (35, N' D?u ?n olive',11, 221000, 10, 0.2, N'là m?t ng??i m? ??m ?ang thì không th? không quan tâm ??n s?c kh?e c?a con cái ??c bi?t là tr? nh? t? 3 - 5 tu?i. ?ây là giai ?o?n phát tri?n c?a tr?. Tr? c?n nh?ng th?c ?n ??y ?? dinh d??ng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (36, N'D?u ?n Cái Lân',11,  28000, 10, 0.2, N'D?u ?n Cái Lân là m?t th??ng hi?u d?u ?n n?i ti?ng, lâu ??i mang th??ng hi?u Vi?t Nam. D?u ?n h?o h?ng Cái Lân ???c s?n xu?t theo quy trình hi?n ??i, h?p v? sinh an toàn th?c ph?m. Nh?ng nguyên li?u ?? tinh ch? ???c ch?n l?c m?t cách sát sao. ', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (37, N'D?u ?n T??ng An',11,  95000, 10, 0.2, N'Hãng d?u ?n T??ng An v?i kinh nghi?m s?n xu?t g?n 35 n?m cùng nh?ng thi?t b? máy móc, ch? bi?n hi?n ??i, ngày càng ???c c?i ti?n và nâng c?p. ??i v?i T??ng An, m?c tiêu quan tr?ng nh?t là không ng?ng c?i ti?n nâng cao ch?t l??ng và an toàn th?c ph?m, ?áp ?ng t?t nh?t m?i yêu c?u c?a khách hàng.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (38, N'D?u ?n cao c?p Ranee ',11, 24000, 10, 0.2, N'D?u ?n cao c?p Ranee 100% t? cá ???c s?n xu?t v?i dây chuy?n công ngh? v?t lý tinh luy?n t? Châu Âu, giúp x? lý mùi t?i ?u nh?ng v?n l?u gi? tron v?n các d??ng ch?t t? nhiên t? cá nh? omega 3-6-9, DHA/EPA và Vitamin E', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (39, N'D?u ?n Marvela',11,  35000, 10, 0.2, N'D?u ?n Marvela là th??ng hi?u n?i ti?ng ? Vi?t Nam. ???c m?i ng??i tin dùng và s? d?ng su?t nh?ng n?m qua. C?ng gi?ng các th??ng hi?u khác, Marvela cho ra ??i nhi?u lo?i d?u ?n v?i nh?ng nguyên li?u, thành ph?n khác nhau. Kéo theo ?ó là nh?ng công d?ng khác nhau.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (40, N'B? M? ph?m d??ng tr?ng da Ohui White Extreme',3, 110000, 10, 0.2, N'V? t?ng quan b? m? ph?m Hàn Qu?c Ohui Extreme White là dòng s?n ph?m d??ng tr?ng da cao c?p ???c Ohui phát tri?n nh?m giúp phái ??p nuôi d??ng, tái t?o v? t??i sáng cho làn da, mong mu?n ?em ??n cho phái ??p m?t s? thay ??i ??t phá, thú v?, làn da ??p, sáng trong không tì v?t cùng tâm tr?ng vui v? và cu?c s?ng h?nh phúc.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (41, N'Kem ch?ng n?ng Ohui Black',3,  310000, 10, 0.2, N'Ohui Perfect Sun Black có ch? s? ch?ng n?ng ? m?c phù h?p (SPF50+/PA++++) giúp ch?ng n?ng hi?u qu?. Ngoài tác d?ng c?a kem ch?ng n?ng thì s?n ph?m này còn giúp d??ng sáng da và c?p ?m hi?u qu?. ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (42, N'Kem d??ng Innisfree balancing cream',3,  310000, 10, 0.2, N'?ây ???c xem nh? dòng s?n ph?m d??ng ch? ??o và ???c ?ánh giá cao nh?t c?a hãng. Green tea balancing cream – Kem d??ng ?m cân b?ng V?i chi?t xu?t t? trà xanh s? cung c?p, b? sung d??ng ch?t cho da m?t.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (43, N'M?t n? ng? Laneige Water Sleeping Mask',3,  110000, 10, 0.2, N'S?n ph?m có d?ng gel l?ng m?n ch?a “n??c t? b?ng tuy?t tan”, tinh ch?t t? qu? m? Hunza và tinh ch?t h?t d? th?m nhanh vào da và giúp cung c?p dinh d??ng cho t? bào da c?ng nh? làm hydrat hóa làn da ?? gi? ?m và thay ??i s?c t? da ?? làm tr?ng.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (44, N'Ph?n n??c d??ng tr?ng Laneige BB',3,  310000, 10, 0.2, N'Laneige whitening là m?t s?n ph?m 5 trong 1 mang tính “cách m?ng” c?a hãng trong công cu?c làm ??p, v?i ?? che ph? ch?ng n?ng SPF 50, l??ng n??c khoáng t?i ?u, hi?u ch?nh màu s?c t?t c? trong m?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (45, N'Son môi Mamonde Highlight Lip Tint',3,  110000, 10, 0.2, N'Th?i son tint Mamonde này có thi?t k? c?c ??n gi?n nh?ng ?áng yêu v?i thân son nh?a có màu t??ng ?ng v?i màu son bên trong.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (46, N'M? ph?m Sulwhasoo',3, 110000, 10, 0.2, N'Sulwhasoo ???c ?ón nh?n nhi?t tình nh? các s?n ph?m ch?t l??ng cao, ???c nghiên c?u và chi?t xu?t t? h?n 3,000 lo?i th?o m?c và các lo?i d??c li?u quý.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (47, N'S?a r?a m?t Herb Day 365',3,  300000, 10, 0.2, N'M?t trong nh?ng s?n ph?m n?i b?t nh?t c?a hãng chính là dòng s?a r?a m?t t?o b?t Herb Day 365 Cleansing Foam TheFaceShop, dòng s?n ph?m g?m 6 mùi h??ng t??i tr? có th? dùng nh? m?t lo?i kem t?y trang dùng sau khi trang ?i?m', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (48, N'Son Etude house dear darling tint',3, 110000, 10, 0.2, N'?ây là m?t s?n ph?m ?ang làm m?a làm gió t?i th? tr??ng Vi?t Nam th?i gian g?n ?ây b?i ?? “cute” vô ??i c?a thi?t k? hình que kem bé bé xinh xinh.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (49, N'M?t n? ???ng ?en dâu skinfood',3,  110000, 10, 0.2, N'Là m?t hãng m? ph?m Hàn Qu?c ch?t l??ng ?a d?ng các s?n ph?m t? ch?m sóc da ??n trang ?i?m giá thành h?p lí và ?áng ?? th? khi b?n mu?n tìm m?t hãng m? ph?m bình dân ch?t l??ng.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (50, N'Me Cay R?ng Con',6,  51000, 10, 0.2, N'ME XÍ MUÔI CHUA CAY v?a là món ?n v?t h?p d?n và l? mi?ng, v? chua c?a me, m?n, ng?t c?a ???ng và mu?i k?t h?p v?i m?t ít cay c?a ?t t?o nên m?t s?n ph?m r?t ??c bi?t', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (51, N'??u Ph?ng N??c C?t D?a',6, 51000, 10, 0.2, N'Khách ?n vào s? c?m nh?n ???c ?? giòn, béo, ?? x?p. S?n ph?m hoàn toàn không thêm ch?t b?o qu?n, gi? nguyên h??ng v? t? nhiên c?a s?n ph?m. Dùng ???c cho ng??i ?n chay.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (52 ,N'??u Hà Lan S?y Mu?i',6,  51000, 10, 0.2, N'??u Hà Lan S?y v? phô mai ?n vào v?a x?p, v?a giòn, v?a có ?? béo c?a phô mai, h?t ??u Hà Lan không c?ng, không chai.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (53, N' táo ?? tân c??ng',6, 110000, 10, 0.2, N'TÁO ?? C?A NG??I HÀN QU?C khác h?n nh?ng lo?i táo ?? ???c tr?ng ? Trung Qu?c hay n?i khác vì trái to, ng?t, h?t r?t nh?, th?m', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (54, N'H?t macca ',6,  290000, 10, 0.2, N'Có xu?t x? t?i châu Úc, khu v?c có khí h?u nhi?t ??i và c?n nhi?t ??i cùng v?i ??c tr?ng n?i ?ây các lo?i khoáng s?n phong phú nên hàm l??ng dinh d??ng có trong h?t m?c ca t? ?ó c?ng x?p h?ng cao nh?t trong các lo?i h?t dinh d??ng', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (55, N'Qu? óc chó m? ?ã s?y chín',6,  110000, 10, 0.2, N'Qu? óc chó có tên ti?ng Anh là Walnuts hay tên khác qu? H? ?ào (Juglans regiaL) là m?t h? th?c v?t có hoa bao g?m các lo?i cây thân g? trong b? D? (Fagales). Lo?i qu? này có h?n 20 lo?i khác nhau và ???c tr?ng ch? y?u ? California walnuts – M? (USA) ', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (56, N'H?T CHIA TÍM NH?P KH?U ÚC',6, 69000, 10, 0.2, N'H?t Chia hay còn g?i là Salvia là th?c ph?m ch?a nhi?u ch?t dinh d??ng hi?m có trong th? gi?i th?c ph?m, ??c bi?t là nh?ng vi ch?t mà chúng ta khó có th? b? sung ???c b?ng thu?c b? ', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (57, N'1kg h?t sen khô',6,  169000, 10, 0.2, N'H?n s? d?ng: 6 tháng.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (58, N' Khô cá ch? vàng ',6,  210000, 10, 0.2, N'Cá ch? vàng là m?t lo?i cá b? d??ng và th?m ngon vì trong th?t cá có ch?a r?t nhi?u protein, lipid và c?c k? nhi?u omega 3 t?t cho tim m?ch và m?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (59, N'Khô cá s?c Vi?t Hà',6,  100000, 10, 0.2, N'Khô cá s?c ngon ? ch? b?ng khô cá r?t béo và th?m. Nh?ng c?ng chính vì b?ng cá r?t ngon nên khi ch? bi?n c?n làm s?ch mùi tanh và khi ph?i ph?i b?o qu?n c?n th?n kh?i ru?i ??u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (60, N'Khô cá l??i trâu Song Ph??ng',6,  450000, 10, 0.2, N'Cá l??i trâu là m?t loài cá s?ch, ít x??ng, th?t ng?t, lành tính và s?ng trong thiên nhiên. Khô cá l??i trâu ???c ?ánh giá là khô ngon nh?t tuy ??m b?c nh?ng ??c ?áo nh? th?t ng?t, m?m và mùi v? th?m ngon không chê ???c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (61, N'Khô cá c?m s?a Phong Ph??ng',6,  110000, 10, 0.2, N'Cá c?m s?a là m?t lo?i cá c?m r?t nh?, dài ch? kho?ng 3 phân, th?t trong su?t. Cá c?m s?a có h??ng v? r?t ??m ?à, th?t cá ngon ng?t và c?c k? giàu ch?t dinh d??ng, không h? thua kém các lo?i cá khác.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (62, N'Khô cá ?ù Song Ph??ng',6, 110000, 10, 0.2, N'Khô cá ?ù nhi?u th?t và ít x??ng h?n h?n các lo?i cá khác. Cá ?ù ngon ? ch? ph?n thân sau c?a cá c?c k? béo và nhi?u m?. Th?t cá khá là ng?t, bùi bùi và v?i ?i?m nh?n là v? béo ? ph?n ?uôi làm chúng ta ?n hoài không th?y ngán.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (63, N'Gi?y v? sinh CAT Premium',2, 20000, 10, 0, N'10 cu?n/ túi, 3 l?p. N?i s?n xu?t:Vi?t Nam, B?o hành:5 N?m', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (64, N'GI?Y V? SINH CU?N L?N CHUYÊN CHO KS, TÒA NHÀ, VP, NHÀ HÀNG',2, 24500, 10, 0, N'Phân h?y trong n??c nhanh gi?m thi?u nguy c?t?c ngh?n. Dai v?a ph?i, h?i bông x?p, êm nh?', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (65, N'GI?Y CU?N DÀI TH?M HÚT D?U ?N',2, 17000, 10, 0, N'Thành ph?n: 100% B?t gi?y.??c ?i?m: Không l?n gi?y tái ch?, không hóa ch?t ??c h?i', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (66, N'B? kh?n s?a Mollis 100% bamboo ',2, 209000, 10, 0, N'???c làm t? 100% s?i bamboo, c?c k? m?m m?i và thoáng mát, giúp cho m? v? sinh m?t, m?i cho em bé mà không s? khô, rát bé', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (67, N'Kh?n l?nh Wuna không mùi ',2, 180000, 10, 0, N'Thành ph?n V?i không d?t, n??c tinh khi?t R.O, Quaternary Ammonium Salts, Citric Acid, h??ng th?m', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (68, N'Kh?n gi?y ??t d?ng nén Nikkori 50 cái',2, 85000, 10, 0, N'Kh?n gi?y nén m?m m?i, h?p v? sinh, tiêu h?y nhanh, không ?nh h??ng ??n môi tr??ng, an toàn m?i lo?i da. ??c bi?t làn da tr? s? sinh', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (69, N'Kh?n ??t Hensley không mùi ',2, 48500, 10, 0, N'Không có ch?t t?ng tr?ng quang h?c, không ch?a c?n, không ch?t t?o màu, không hoá ch?t b?o qu?n, không h??ng li?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (70, N'Kh?n ??t em bé Bobby',2,39000, 10, 0, N'Ch?m sóc v? sinh da, thích h?p khi thay tã cho bé, t?ng c??ng kh? n?ng kháng khu?n nh? công ngh? Nano B?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (81, N'Bàn ch?i cho bé t? 4 tu?i Splat',5, 89000, 10, 0, N'Lông bàn ch?i làm b?ng v?t li?u cao c?p ch?a ion b?c ng?n ng?a s? phát tri?n c?a vi khu?n và làm s?ch hi?u qu? Không ch?a', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (82, N'B? 3 bàn ch?i Oral-B Pro-Health',5, 80000, 10, 0, N'Ch?i r?ng theo h??ng d?n c?a nha s?. R?a s?ch bàn ch?i sau khi s? d?ng. C?m th?ng và gi? n?i khô ráo', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (83, N'B? 2 bàn ch?i Oral-Clean Spiral Carbon Gold',5, 69000, 10, 0, N' Ch?i r?ng theo h??ng d?n c?a nha s?. R?a s?ch bàn ch?i sau khi s? d?ng. C?m th?ng và gi? n?i khô ráo', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (84, N'Bàn ch?i ?ánh r?ng ng??i l?n Bamboo Salt',5, 49000, 10, 0, N'Bàn ch?i ?ánh r?ng ng??i l?n Bamboo Salt mu?i h?ng Himalaya lông t? m?m m?i HSD h?n 3 n?m', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (85, N'Kem ?ánh r?ng Splat Special th?o m?c',5, 127000, 10, 0, N'Nên ch?i r?ng 2 l?n/ngày sau khi ?n. S? d?ng trong vòng 12 tháng sau khi m? n?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (86, N'Kem ?ánh r?ng Splat Special than ho?t tính',5, 127000, 10, 0.5, N'Nên ch?i r?ng 2 l?n/ngày sau khi ?n. S? d?ng trong vòng 12 tháng sau khi m? n?p', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (87, N'Kem ?ánh r?ng Splat ph?c h?i men & tr?ng r?ng',5, 84000, 10, 0, N' Nên ch?i r?ng 2 l?n/ngày sau khi ?n. S? d?ng trong vòng 12 tháng sau khi m? n?p', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (88, N'Kem ?ánh r?ng Colgate Sensitive Pro Relief Complete',5, 69000, 10, 0, N' Gi?m ê bu?t nhanh chóng và lâu dài, ng?a sâu r?ng, ch?m sóc n??u, giúp tr?ng r?ng, gi?m m?ng bám, b?o v? men r?ng, h?i th? th?m mát', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (89, N'Kem ?ánh r?ng Perioe Pumping h??ng b?c hà',5, 169000, 10, 0, N'Tr? d??i 2-6 tu?i ch? s? d?ng m?t l??ng kem nh? b?ng h?t ??u và c?n s? h??ng d?n c?a ng??i l?n. Tr? em d??i 2 tu?i c?n có s? t? v?n c?a nha s? ho?c bác s?', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (90, N'B?t ?ánh tr?ng r?ng Eucryl Toothpowder',5 , 55000, 10, 0, N'Lo?i b? m?ng bám b?n, giúp tr?ng r?ng, ng?n hôi mi?ng, r?ng sáng bóng, ch?c kh?e', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (91, N'N??c ng?t có ga Coca Cola Zero chai 390ml',7, 6500, 10, 0, N'N??c bão hòa CO2, màu t? nhiên, ch?t ?i?u ch?nh ?? acid, ch?t t?o ng?t t?ng h?p, ch?t b?o qu?n, h??ng cola t? nhiên và caffeine.', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (92, N'24 lon n??c t?ng l?c Monster Energy Ultra 355ml',7, 696000, 10, 0, N'L?c nh? tr??c khi u?ng, dùng ngay sau khi m? n?p. Ngon h?n khi u?ng l?nh.', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (93, N'Trà xanh h??ng chanh C2 Plus Immunity ít ???ng 500ml',7, 12000, 10, 0, N'?? n?i khô ráo, thoáng mát, tránh ánh sáng tr?c ti?p ho?c n?i có nhi?t ?? cao.', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (94, N'n??c ng?t Mirinda v? cam 330ml',7, 8000, 10, 0, N'N??c bão hoà CO2, ???ng mía, ???ng HFCS, ch?t ?i?u ch?nh ?? acid, tinh b?t bi?n tính, ch?t b?o qu?n, ch?t nh? hoá, h??ng cam t? nhiên, màu t?ng h?p', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (95, N'n??c t?ng l?c Wake Up 247 v? cà phê 330ml',7, 7800, 10, 0, N' N??c, ???ng, C02 th?c ph?m, màu t?ng h?p caramen, h??ng vani, h??ng cà phê, caffeine, taurine, inositol, vitamin B3, vitamin B6, ch?t ?i?u ch?nh ?? axit, mu?i', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (96, N't?ng l?c Compact v? cherry 330ml',7, 9100, 10, 0, N'N??c, ???ng, glucose syrup, ch?t ?i?u ch?nh ?? acid (330, 500ii), ch?t t?o khí carbonic (290), h??ng li?u (h??ng m?t hoa t? nhiên, h??ng cherry t?ng h?p, gi?ng t? nhiên)', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (97, N'trà xanh matcha Tea Plus 455ml',7, 82000, 10, 0, N' ?? n?i khô ráo, thoáng mát, tránh ánh sáng tr?c ti?p ho?c n?i có nhi?t ?? cao.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (98, N'Revive chanh mu?i 390ml',7, 78000, 10, 0, N'L?c nh? tr??c khi u?ng, dùng ngay sau khi m? n?p. Ngon h?n khi u?ng l?nh.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (99, N'Cà phê ?en TNI King Coffee Espresso 250g ( 100 gói x 2.5g )',7, 295000, 10, 0, N'U?NG NÓNG dùng 1 gói pha v?i 70ml n??c nóng. Có th? thêm s?a ho?c ???ng tu? s? thích', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (100, N'Strongbow dâu ?en 330ml',7, 21000, 10, 0, N' S?n ph?m dành cho ng??i trên 18 tu?i và không dành cho ph? n? mang thai. Th??ng th?c có trách nhi?m, ?ã u?ng ?? u?ng có c?n thì không lái xe!', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (101, N'bia Heineken 0.0% ?? c?n 330ml',7, 15000, 10, 0, N' S?n ph?m dành cho ng??i trên 18 tu?i và không dành cho ph? n? mang thai. Th??ng th?c có trách nhi?m, ?ã u?ng ?? u?ng có c?n thì không lái xe!', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (102, N'bia Tiger Crystal 330ml',7, 11000, 10, 0, N'Bia Tiger Crystal 330ml không ch? ??t ??n ch?t l??ng r?ng danh trên toàn th? gi?i mà còn mang ??n c?m giác th?t s?ng khoái và r?t d? u?ng cho ng??i dùng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (103, N'chai trà s?a Kirin Tea Break 345ml',7, 10000, 10, 0, N'Trà s?a Tea Break chai 345ml v?i nguyên li?u t? nhiên k?t h?p v?i nhau t?o nên h??ng v? c?a s?a r?t ??c tr?ng.  không quá béo giúp ng??i dùng c?m th?y ngon mi?ng không b? ng?y.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (104, N'h?p s?a t??i nguyên ch?t không ???ng Vinamilk 100% Organic 1 lít',8, 52000, 10, 0, N'S?a t??i ti?t trùng Vinamilk có h??ng v? s?a t??i 100% h?u c? th?m ngon, h?p d?n.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (105, N'h?p s?a t??i ti?t trùng ???ng ?en Nutimilk 1 lít',8, 38000, 10, 0, N'S?a bò t??i, ???ng tinh luy?n, si-rô, ???ng ?en, ch?t ?n ??nh, h??ng li?u t?ng h?p dành cho th?c ph?m,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (106, N's?a t??i ti?t trùng h??ng dâu TH true MILK 180ml',8, 32000, 10, 0, N'th?m ngon, d? u?ng, ???c làm hoàn toàn t? ngu?n s?a t??i s?ch. Trong s?a ch?a nhi?u d??ng ch?t thi?t y?u t?t cho s?c kho? nh? Vitamin A, D, B1, B2, Canxi, k?m...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (107, N'Thùng 12 h?p s?a t??i ti?t trùng TH true MILK Organic',8, 378000, 10, 0, N'S?n ph?m h?u c? không ch?a ch?t b?o qu?n, r?t an toàn cho s?c kho?, trong s?a còn ch?a nhi?u d??ng ch?t thi?t y?u c?ng nh? h??ng v? th?m ngon, béo ng?y ??c tr?ng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (108, N'Thùng 12 h?p s?a ??u ?en óc chó h?nh nhân Sahmyook',8, 950000, 10, 0, N' N??c ??u ?en, b?t ??u nành, ???ng tr?ng, siro ngô fructose cao, ch?t nh? hóa, b?t qu? óc chó, b?t ??u ?en, b?t h?nh nhân, mu?i, b? h?t thông, d?u th?c v?t.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (109, N's?a ??u nành h?nh nhân Vinamilk 180ml',8, 12000, 10, 0, N'Phù h?p Dùng cho tr? t? 4 tu?i tr? lên', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (110, N'Thùng 16 h?p s?a ??u nành v? h?nh nhân và óc chó Vegemil',8, 216000, 10, 0, N'S?a ??u nành (n??c tinh khi?t, ??u nành 7%), ???ng, maltooligosacarit, xi rô ngô hàm l??ng cao fructose, n??c, qu? óc chó và h?n h?p các lo?i h?t ', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (111, N'Ngôi sao Ph??ng Nam xanh lá ',8, 60000, 10, 0, N'Thích h?p Pha cà phê, xay sinh t?, làm s?a chua, bánh flan...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (112, N'Kem ??c có ???ng DeliPure lon 1kg',8, 35000, 10, 0, N'Pha m?t l??ng creamer theo kh?u v? s?n ph?m v?i kho?ng 60ml n??c ?un sôi, sau ?ó ?? ngu?i r?i u?ng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (113, N'S?a ??c có ???ng Ông Th? tr?ng nhãn vàng lon 380g',8, 29000, 10, 0, N'Pha m?t ph?n s?a v?i 3 ph?n n??c ?m ?? u?ng ho?c pha cùng cà phê, ?n cùng bánh mì,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (114, N'Thùng 24 chai s?a chua u?ng nha ?am Vinamilk Yomilk 150ml',8, 139000, 10, 0, N'Thành ph?n N??c, ???ng tinh luy?n, ch?t béo s?a,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (115, N'L?c 8 h?p s?a lúa m?ch Milo Active Go 115ml',8, 34000, 10, 0, N'N??c, s?a - milk 35% n??c, s?a b?t, ch?t béo s?a, b?t whey t? s?a), PROTOMALT 3,3% (chi?t xu?t t? m?m lúa m?ch - extract from malted barley), ???ng 33%),', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (116, N'S?a b?t Ensure Gold lúa m?ch ít ng?t h?p 850g',8, 732000, 10, 0, N'?? ?áp ?ng nhu c?u dinh d??ng cho ng??i l?n tu?i, h? tr? t?ng c??ng s?c kh?e, th? ch?t và ch?t l??ng cu?c s?ng', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (117, N'S?a b?t Frisomum Gold h??ng cam lon 900g',8, 561000, 10, 0, N'Phù h?p Ph? n? mang thai và cho con bú', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (118, N'Rong bi?n h?u c? ?n li?n cho bé Alvins h?p 20g',9, 118000, 10, 0, N'Thành ph?n Rong bi?n (ch?ng nh?n h?u c? Hàn Qu?c), d?u Canola, mu?i bi?n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (119, N'Snack khoai tây Slide v? phô mai lon 160g',9, 48000, 10, 0, N'Tha?nh phâ?n Vâ?y khoai tây (70%), b?t gia vi? phô mai, tinh b?t khoai tây, tinh b?t khoa mìi ', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (110, N'Snack que nhân cà phê moka và s?a d?a Akiko Oishi lon 240g',9, 46000, 10, 0, N'Không dùng cho ng??i d? ?ng v?i s?a, tr?ng, ??u nành, lúa mì t? b?t gia v?. S?n ph?m có th? ch?a cá t? s?n ph?m khác, s?n xu?t trên cùng dây chuy?n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (111, N'Snack da cá v? ?t xanh Pati gói 50g',9, 41000, 10, 0, N' Da cá 85%, gia v? ?t xanh (maltodextrin, ???ng, dextrose, mu?i, ch?t ?i?u v?, protein th?c v?t thu? phân, gia v? - t?i, ?t c?a gà, thì là, b?t t?i, b?t gi?m, h??ng t? nhiên', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (112, N'Snack que nhân s?a và phô mai Akiko Oishi lon 240g',9, 39000, 10, 0, N'Không dùng cho ng??i d? ?ng v?i s?a, tr?ng, ??u nành, lúa mì t? b?t gia v?. S?n ph?m có th? ch?a cá t? s?n ph?m khác, s?n xu?t trên cùng dây chuy?n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (113, N'Bánh quy b? Danisa h?p 681g',9, 191000, 10, 0, N' B?t lúa mì, ???ng, b? (18.67%), d?u th?c v?t (ch?a ch?t ch?ng oxy hóa tocopherol), glucose syrup, tr?ng, d?a s?y, nho kho, b?t s?a tách béo, mu?i, ch?t t?o x?p E503, h??ng vani t?ng h?p.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (114, N'Bánh quy b? th?p c?m LU h?p 708g',9, 235000, 10, 0, N'B?t mì, ???ng, b? Pháp (12%), shortening, nhân sôcôla h?n h?p (???ng, ch?t béo th?c v?t hydro hóa, b?t cacao, dextrose, ch?t nh? hóa (322(i)), h??ng th?c ph?m t?ng h?p, mu?i)', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (115, N'Bánh quy ng? c?c không ???ng Vitamia gói 330g',9, 112000, 10, 0, N'B?t mì (35,4%), ng? c?c d?ng b?t và v?y (24,6%), ch?t t?o ng?t t?ng h?p, d?u h??ng d??ng, b?, mu?i, ch?t t?o x?p,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (116, N'Bánh g?u 3 v? Assortment Meiji Hello Panda ',9, 108000, 10, 0, N' S?n ph?m có ch?a b?t mì, lúa m?ch (ng? c?c ch?a gluten), s?a và ??u nành, có th? ch?a h?t mè.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (117, N'K?o Ferrero Confetteria Raffaello ',9, 180000, 10, 0, N' D?a khô 25.5%, ch?t béo th?c v?t, ???ng, h?t h?nh nhân nguyên h?t 8%, s?a b?t g?y, whey b?t, b?t mì, tinh b?t s?n, h??ng li?u t? nhiên và gi?ng t? nhiên, ch?t nh? hoá, ch?t t?o x?p', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (118, N'Bánh g?o v? ng?t Richy gói 315g',9, 40000, 10, 0, N'G?o th?m, d?u th?c v?t, ???ng tinh luy?n, tinh b?t khoai tây, mu?i, gelatin, monosodium glutamate, ch?t ?i?u v?', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (119, N'Bánh que Glico Pocky dâu và socola',9, 100000, 10, 0, N'Thành ph?n B?t mì, ???ng, d?u th?c v?t, b?t s?a tách béo,..', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (120, N'Socola Ferrero h?p 375g',9, 360000, 10, 0, N'Socola s?a 30% (???ng, b?, ca cao, b?t ca cao, s?a b?t g?y, ch?t béo s?a d?ng khan, ch?t nh? hoá, ch?t t?o x?p, h??ng li?u gi?ng t? nhiên, h?t ph? 28.5%, mu?i,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (121, N'Thùng 30 gói mì Mama h??ng th?t bò h?m 60g',10, 190000, 10, 0, N' B?t mì 79%, d?u c?, mu?i, ???ng, gia v?, ch?t ?i?u v? (E621, E35), h??ng li?u (c?n tây) 0.75%, n??c t??ng (??u t??ng, mu?i, chi?t xu?t m?ch nha, lúa mì, n?m men, d?u c?), hành tây s?y khô', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (122, N'Thùng 40 gói mì bò cay Samyang Sutah Ramen 120g',10, 840000, 10, 0, N'ho mì, gói súp, gói rau vào trong 550ml n??c sôi và n?u kho?ng 4-5 phút. ?? h??ng v? ngon h?n, có th? thêm kim chi, tr?ng, t?i và hành lá.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (123, N'Thùng 10 túi mì Koreno Jumbo v? kim chi 1kg',10, 760000, 10, 0, N'?un sôi 400ml ~ 450ml n??c. Cho v?t mì, gói gia v?, gói rau vào n?i cùng m?t lúc, n?u trong 4 phút. Sau ?ó t?t b?p, múc ra bát và dùng ???c ngay. S? ngon h?n khi b?n cho thêm tr?ng, hành, rau th?m.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (124, N'Thùng 50 gói mì Udon Hanil Bongojang 200g',10, 745000, 10, 0, N' N??c 64%, b?t mì 34.16%, tinh b?t s?n 0.95%, mu?i 0.79%, ch?t ?i?u ch?nh v? chua (axit lactic, axit acetic, sodium laclate, axit adipic, n??c) 0.1%.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (125, N'Thùng 36 ly mì Mama v?t ti?m 60g',10, 610000, 10, 0, N'B?t mì 75,48%, d?u c? 6,25%, d?u nành 1,75%, gia v? 1,21%, h??ng v?t 0,75%, b?t t?i, b?t ?t, b?t ng?t,...', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (126, N'Thùng 20 gói mì cay h?i s?n Paldo 120g',10, 399000, 10, 0, N' Cho mì, gói gia v? vào 560ml n??c sôi và n?u trong 4 phút cho mì m?m. Khu?y ??u mì ?? ?n.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (127, N'Thùng 18 gói mì th?t b?m Vifon Hoàng Gia 120g',10, 250000, 10, 0, N' Cho v?t mì và các gói gia v? vào tô. Rót vào tô kho?ng 400ml n??c sôi. ??y kín n?p tô và ch? kho?ng 3 phút. M? n?p, c?t gói th?t h?m cho vào tô, khu?y ??u là có th? dùng ???c.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (128, N'gói mì V? H??ng gi?y vàng 60g',10, 2500, 10, 0, N'Cho v?t mì và các gói gia v? vào tô. Ch? n??c sôi vào kho?ng 350ml, ??y n?p l?i và ch? trong 3 phút. M? n?p, tr?n ??u và dùng ???c ngay.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (129, N' mì th?t b?m Vifon Hoàng Gia 120g',10, 3000, 10, 0, N'Cho v?t mì và các gói gia v? vào tô. Rót vào tô kho?ng 400ml n??c sôi. ??y kín n?p tô và ch? kho?ng 3 phút. M? n?p, c?t gói th?t h?m cho vào tô, khu?y ??u là có th? dùng ???c.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (130, N'mì rong bi?n Jin Ottogi 120g',10, 12000, 10, 0, N'1/Tr??c tiên cho 550ml n??c vào n?i và gói rau c? s?y khô vào ?un sôi.2/Khi n??c sôi thì cho gói súp gia v? và mì vào r?i ?un sôi kho?ng 5 phút là ???c', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (131, N'Cây ?ánh tr?ng Silicone 25cm Shika',13, 52000, 10, 0, N'Dài 25 cm c?m g?n tay ng??i l?n, tr?ng l??ng nh? ti?n thao tác, dùng lâu không s? m?i tay', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (132, N'Khuôn làm kem nh?a Hofaco HPL64',13, 35000, 10, 0, N'Kích th??c 14.5cm x 13cm x 8.8cm', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (133, N'Phin cà phê inox Tithafac 7cm',13, 31000, 10, 0, N'Công d?ng S? d?ng pha ch? cà phê truy?n th?ng, ch?t l?c gi?t cà phê s?ch c?n, th?m ngon', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (134, N'V? h?p nh?a ?i?n máy XANH LD-SU616 24cm',13, 80000, 10, 0, N'V? h?p thi?t k? nâu xám, ???ng kính vi?n 24.5 cm g?n ??p ti?n d?ng. V? h?p có th? ?i?u ch?nh phù h?p v?i t?ng lo?i n?i ch?o có ???ng kính khác nhau ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (135, N'B?p c?n inox Rainy hoa mai 23 BCI',13, 65000, 10, 0, N' B?p ???c làm b?ng inox có ?? b?n cao, có ?u ?i?m t?a nhi?t ??u, nóng nhanh, ti?t ki?m nhiên li?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (136, N'B?p c?n inox Rainy tráng men 23 BCM',13, 70000, 10, 0, N'B?p ???c làm b?ng inox tráng men có ?? b?n cao, có ?u ?i?m t?a nhi?t ??u, nóng nhanh, ti?t ki?m nhiên li?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (137, N'Gel r?a tay khô Kleen h??ng trà xanh chai 630ml',14, 110000, 10, 0, N'S? d?ng c?n 96% và d??ng ch?t giúp kháng khu?n hi?u qu? và d??ng ?m da tay', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (138, N'Gel r?a tay khô Kleen h??ng o?i h??ng chai 630ml',14, 110000, 10, 0, N'Cho m?t l??ng nh? vào lòng bàn tay và xoa ??u. Không c?n r?a tay l?i v?i n??c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (139, N'Gel r?a tay khô Dr. Clean h??ng lavender chai 500ml',14, 106000, 10, 0, N'Làm s?ch 99.9% vi khu?n. ?ôi tay luôn m?m m?i, s?ch s?, t??i mát và bay b?ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (140, N'Gel r?a tay khô Lifebuoy b?o v? v??t tr?i chai 235ml',14, 72000, 10, 0, N' Ti?n d?ng r?a tay mà không c?n dùng n??c. V? sinh, di?t khu?n, kh? s?ch mùi r?t t?t ?? b?o s?c kh?e, gi? cho ?ôi tay luôn s?ch s? và m?m mai', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (141, N'N??c r?a tay Kirei Kirei h??ng chanh chai 250ml',14, 74000, 10, 0, N'B?t r?a tay Kirei Kirei H??ng chanh Chai 250 ml v?i chi?t xu?t 100% tinh ch?t t? th?o d??c thiên nhiên cùng công th?c di?t khu?n ??c bi?t cho b?n ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (142, N'N??c r?a tay Lifebuoy b?o v? v??t tr?i túi 443ml',14, 53000, 10, 0, N'Làm ??t tay. Cho m?t l??ng v?a ?? vào lòng bàn tay, xoa ??u trên tay và r?a s?ch v?i n??c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (143, N'S?a r?a tay Goodlook d??ng da h??ng táo 500ml',14, 45000, 10, 0, N' D??ng da và ng?n ng?a vi khu?n, gi? cho da tay luôn m?m m?i, m?n màng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (144, N'N??c r?a tay Aqua Vera d??ng da hoa t? ?inh h??ng 500ml',14, 39000, 10, 0, N'Giúp làm s?ch vi khu?n và b? sung glycerin d??ng ?m m?n màng, cho da tay b?n tr? nên m?m m?i sau khi s? d?ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (145, N'N??c gi?t x? Act',15, 420000, 10, 0, N'Lo?i b? v?t b?n, di?t tr? vi khu?n và các tác nhân gây h?i nh? b?i b?n, b?, ve, r?p và các tác nhân gây d? ?ng, ng?t m?i khác. Kh? mùi ngay c? khi ph?i trong ?i?u ki?n ?m ??t, ph?i trong nhà.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (146, N'N??c gi?t Essence h??ng floral 3.5 lít',15, 309000, 10, 0, N'Hòa tan k? n??c gi?t Essence v?i n??c tr??c khi cho qu?n áo vào n??c v?i t? l? 1 n?p ??y hòa v?i 3 - 4 lít n??c ngâm qu?n áo trong 5 phút, vò nh?, x? qua v?i n??c. ??i v?i máy gi?t theo t? l? 4 - 6 n?p cho 1 l?n gi?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (147, N'B?t gi?t Tide chuyên d?ng 9kg',15, 300000, 10, 0, N'Công th?c tr?ng ??t phá ch?m sóc s?i v?i cho các c? s? chuyên nghi?p. ?ánh bay và lo?i b? các v?t b?n ? c? tay, c? áo, v?t d?u m?, hay bùn ??t bám dính lâu ngày.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (148, N'N??c gi?t x? h?u c? sinh h?c Giel 2 in 1',15, 300000, 10, 0, N'Chà xanh, chanh, lô g?i, h? cây li?u k?t h?p tinh ch?t h??ng hoa t? nhiên th?m mát,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (149, N'N??c gi?t x? Sanzoft ',15, 259000, 10, 0, N'Gi?t s?ch qu?n áo, ch?n màn, v?i vóc. Phù h?p v?i m?i lo?i v?i. L?u l?i h??ng th?m nh? nhàng quy?n r?. Gi? s?c màu qu?n áo luôn t??i m?i', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (150, N'N??c gi?t Ariel Matic s?ch nhanh 3.64 lít',15, 239000, 10, 0, N'Th?m sâu vào t?ng s?i v?i d? dàng t?y s?ch các v?t b?n t?t h?n g?p 2 l?n', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (151, N'B?t gi?t M? H?o 5X di?t khu?n 6kg',15, 220000, 10, 0, N'Lo?i b? các v?t b?n khó gi?t, không tái bám v?t b?n. Di?t khu?n hi?u qu?, kh? mùi m? hôi.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (152, N'N??c gi?t Attack h??ng hoa anh ?ào 2.4kg',15, 180000, 10, 0, N'Gi?t s?ch các v?t b?n khó gi?t nh? v?t d?u m?, d?u xe, v?t b?n t? thúc ?n, ?? u?ng, v?t m?c, v?t b?n c? tay, c? áo cho áo qu?n sachh th?m toàn di?n.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (153, N'S?a t?m h?t ON THE BODY Veilment Spa Lavender 600g',16, 316000, 10, 0, N'Nh? nhàng làm s?ch l?p t? bào ch?t trên da nh? thành ph?n t? th?c v?t, d?u nh? và an toàn giúp da ngày càng sáng m?n', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (154, N'S?a t?m tinh ch?t th?o m?c Body Shower 750ml',16, 237000, 10, 0, N'Kháng khu?n, cân b?ng ?m, b?o v? da kh?i tác h?i c?a môi tr??ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (155, N'S?a t?m Purité d??ng ?m s?a ong chúa và hoa anh ?ào 850ml',16, 210000, 10, 0, N'D??ng ?m sâu t? s?a ong chúa nh? nhàng làm s?ch da, ??ng th?i cung c?p ?? ?m sâu cho da', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (156, N'S?a t?m n??c hoa Enchanteur Deluxe Charming 900g',16, 216000, 10, 0, N'Làm s?ch da, giúp làn da m?m m?n, h??ng th?m dài lâu quy?n r?', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (157, N'S?a t?m Cathy Doll White Tofu 750ml',16, 180000, 10, 0, N'Làm s?ch b?i b?n và c?n bã d? th?a tri?t ??, d??ng da m?n màng tr?ng sáng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (158, N'S?a t?m detox',16, 117000, 10, 0, N'L?y m?t l??ng s?n ph?m v?a ?? ra bông t?m ho?c mi?ng b?t bi?n ?ã ???c làm ??t và t?o b?t. Xoa b?t kh?p c? th? và làm s?ch l?i v?i n??c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (159, N'S?a t?m b?o v? kh?i vi khu?n Lifebuoy',16, 153000, 10, 0, N' Công th?c ion b?c và b?c hà giúp b?o v? c? th? kh?i vi khu?n g?p 10 l?n, cho da mát l?nh s?ng khoái', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (160, N'S?a t?m d??ng sáng Hazeline matcha',16, 140000, 10, 0, N' D??ng da tr?ng sáng r?ng ng?i, d??ng ?m da', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (161, N'S?a t?m n??c hoa Romano Attitude s?ch s?ng khoái 650g',16, 134000, 10, 0, N'Gi? ?m cho da s?ch ??y s?c s?ng cùng mùi h??ng nam tính m?nh m? mang l?i d?u ?n c?a ng??i ?àn ông l?ch lãm, ??y quy?n r?', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (162, N'D?u g?i s?ch gàu Head & Shoulders',17, 347000, 10, 0, N'Làm ??t tóc, xoa d?u g?i nh? nhàng lên tóc và da ??u, mát-xa và x? s?ch l?i v?i n??c. G?i thêm l?n n?a n?u mu?n.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (163, N'D?u g?i Dove ph?c h?i h? t?n 1.36 lít',17, 273000, 10, 0, N'Ph?c h?i b? m?t tóc t?c thì và nuôi d??ng sâu giúp tái c?u trúc s?i tóc t? sâu bên trong, cho mái tóc b?n ch?c kho? dài lâu', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (164, N'D?u g?i Sunsilk m?m m??t di?u k? 1.36 lít',17, 248000, 10, 0, N' Công th?c ??c quy?n v?i công ngh? khoá ?m và 5 tinh d?u t? nhiên giúp l?u gi? ?? ?m c?n thi?t cho mái tóc luôn m?m m??t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (165, N'D?u g?i TRESemmé Salon Detox',17, 221000, 10, 0, N' Bù ??p d??ng ch?t cho tóc, làm s?ch sâu, nuôi d??ng tóc ch?c kho? và bóng m??t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (166, N'D?u g?i Head & Shoulders Classic Clean 700ml',17,2150000, 10, 0, N'Tr? gàu, làm s?ch da ??u, giúp tóc luôn m?m m??t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (167, N'D?u g?i n??c hoa Elastine Kiss The Rose 1000ml',17,1680000, 10, 0, N' Làm ??t tóc, l?y m?t l??ng d?u g?i v?a ?? thoa lên tóc, t?o b?t mát xa nh? nhàng ?? mùi h??ng t?a ??u trên tóc. G?i s?ch l?i v?i n??c.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (168, N'D?u g?i n??c hoa X-Men For Boss Intense 650g',17, 186000, 10, 0, N'?? xa t?m tay tr? em. Tránh ?? s?n ph?m dính vào m?t. N?u dính vào m?t hãy r?a s?ch v?i n??c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (169, N'D?u g?i TRESemmé Salon Detox g?ng và trà xanh 631ml',17, 187000, 10, 0, N'Bù ??p d??ng ch?t cho tóc, làm s?ch sâu, nuôi d??ng tóc ch?c kho? và bóng m??t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (170, N'D?u x? ph?c h?i h? t?n Tsubaki 500ml',17, 179000, 10, 0, N' H?p ch?t ??c bi?t b? sung Protein, Lipit, h?p ch?t hoa trà lên men và chi?t xu?t tinh d?u hoa trà Nh?t B?n', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (171, N'Rau D?n 4KFarm túi 200-300g',21, 4000, 5, N'S?ch nh? rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (172, N'Rau Mùng T?i 4KFarm túi 200-300g',21, 8000, 10, 0, N'S?ch nh? rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (173, N'C?i Dúng 4KFarm túi 300g',21, 9000, 10, 0, N'S?ch nh? rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (174, N'C?i xo?n túi 500g',21, 27000, 10, 0, N'S?ch nh? rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (175, N'Khoai m? túi 1kg',21, 47000, 10, 0, N'S?ch nh? rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (176, N'N?m m? tr?ng h?p 150g',21, 45000, 10, 0, N'S?ch nh? rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (177, N'Xà lách Romaine th?y canh túi 300g',21, 25000, 10, 0, N'S?ch nh? rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (178, N'Bí ?? h? lô túi 700g',21, 23000, 10, 0, N'S?ch nh? rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (179, N'Táo Envy h?p 1kg',22, 242000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (180, N'Nho ?? không h?t h?p 1kg',22, 186000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (181, N'Lê Nam Phi nh?p kh?u h?p 1kg (5 - 6 trái)',22, 86000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (182, N'Xoài cát Hoà L?c túi 1kg',22, 39000, 10, 0, N'??c s?n c?a mi?n Tây b?i h??ng v? th?m ngon, màu s?c b?t m?t, ngu?n dinh d??ng cao. Không ch? n?i ti?ng ? trong n??c, xoài cát Hoà L?c còn là lo?i trái cây xu?t kh?u top ??u trong các lo?i hoa qu? s?ch trên th? gi?i. ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (183, N'B? túi 1kg',22, 34000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (184, N'Lê Singo nh?p kh?u Trung Qu?c h?p 1kg',22, 58000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (185, N'Mãng c?u na túi 500g',22, 31000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (186, N'Thanh long h?ng túi 1kg',22, 44000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (187, N'M?t phúc b?n t? La Fresh h? 210g',23,65000, 10, 0, N'Phúc b?n t? (40%), ???ng mía (50%), pectin qu?, ch?t b?o qu?n (202) và n??c (10%)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (188, N'M?t cam Preserves Golden Farm h? 450g',23, 60000, 10, 0, N'Trái cam (45 - 60%), ???ng mía RE, siro b?p, n??c, ch?t ?n ??nh, ch?t ?i?u ch?nh ?? acid, ch?t b?o qu?n, h??ng cam t?ng h?p, màu th?c ph?m t?ng h?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (189, N'M?t nho Preserves Golden Farm h? 450g',23, 70000, 10, 0, N'Trái nho (45 - 60%), ???ng mía RE, siro b?p, n??c, ch?t ?n ??nh, ch?t ?i?u ch?nh ?? chua, ch?t b?o qu?n, h??ng nho t?ng h?p, ch?t t?o màu t?ng h?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (180, N'M?t dâu t?m Golden Farm h? 450g',23, 56000, 10, 0, N'Th??ng hi?u Golden Farm (Vi?t Nam)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (191, N'M?t th?m Preserves Golden Farm h? 210g',23, 29000, 10, 0, N'Trái th?m (45 - 60%), ???ng mía RE, siro b?p, n??c, ch?t ?n ??nh, ch?t ?i?u ch?nh ?? chua, ch?t b?o qu?n, h??ng th?m t?ng h?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (192, N'L?c 3 h? m?t dâu Preserves Golden Farm 30g',23, 30000, 10, 0, N' ?n kèm kem, sinh t?, bánh mì, trà nóng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (193, N'M?t vi?t qu?t Preserves Golden Farm h? 210g',23, 40000, 10, 0, N' B?o qu?n ? n?i khô ráo, thoáng mát. Gi? l?nh sau khi m? n?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (194, N'H?p quà Orion An h?p 703.8g',24, 135000, 10, 0, N' Bánh Choco.pie Bánh Cutas kem tr?ng Bánh Tok v? t?o bi?n Bánh Tok v? phô mai Bánh g?o n??ng An v? t?o bi?n Bánh quy sô cô la Miz Th?c ph?m b? sung - Bánh Marine Boy v? rong bi?n tuy?t xanh K?o h?ng v? qu?t - m?t ong', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (195, N'Bánh kem tr?ng Custas h?p 470g (20 cái)',24, 99000, 10, 0, N'Tr?ng, b?t mì, ???ng, ch?t béo th?c v?t, ch?t gi? ?m, ch?t nh? hoá, s?a b?t nguyên kem, b?t lòng ?? tr?ng, ch?t ?n ??nh,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (196, N'Bánh bông lan kem h?n h?p 3 mùi Solo h?p 336g',24, 71000, 10, 0, N'B?t mì, ???ng, ch?t béo th?c v?t, tr?ng gà, m?ch nha, ch?t gi? ?m, b?t b?p, ch?t nh? hoá, s?a béo,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (197, N'Bánh bông lan  Solite h?p 324g (18 cái)',24, 50000, 10, 0, N' ?? n?i khô ráo, thoáng mát, tránh ánh n?ng tr?c ti?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (198, N'Bánh bông lan Hura Deli h?p 336g (12 cái)',24,47000, 10, 0, N'B?t mì, ???ng, tr?ng, ch?t béo th?c v?t, m?ch nha, b?, s?a b?t, ch?t gi? ?m, ch?t nh? hoá, n??c, tinh b?t b?p, ch?t t?o x?p, mu?i, sô cô la compound tr?ng, h??ng t?ng h?p,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (199, N'Bánh bông lan  Quasure Light h?p 126g (7 cái)',24, 29000, 10, 0, N'B?t mì, tr?ng, isomalt, ch?t béo th?c v?t, m?ch nha, ch?t gi? ?m, ???ng, s?a b?t, ch?t nh? hoá, ch?t t?o x?p, mu?i, ch?t x? hoà tan, vitamin, h??ng t?ng h?p,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (200, N'Bánh bông lan tròn kem v? dâu Solite h?p 36g (2 cái)',24, 8000, 10, 0, N'?? n?i khô ráo, thoáng mát, tránh ánh n?ng tr?c ti?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (201, N'Th?t heo h?m Master T h?p 180g',33, 26000, 10, 0, N'N?c heo, n??c, hành tây, d?u th?c v?t, mu?i, ???ng, ch?t ?i?u v? (621), ch?t ?n ??nh (451i) và (1422), h??ng th?t t?ng h?p, ch?t b?o qu?n (250)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (202, N'Th?t heo h?m 3 Bông Mai Vissan h?p 150g',33, 22000, 10, 0, N'Th?t heo 50%, ???ng, mu?i, hành, t?i, n??c m?m,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (203, N'Th?t vai heo Picnic Shoulder Categoria Extra Tulip h?p 454g',33, 212000, 10, 0, N'?n tr?c ti?p ho?c ?n kèm c?m, bánh mì, tr?n salad', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (204, N'Heo hai lát Vissan h?p 150g',33, 26000, 10, 0, N'N?c heo 55%, m? heo, n??c, protein ??u nành, ???ng..', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (205, N'Cá ng? s?t cà ri Dongwon lon 100g',33, 33000, 10, 0, N'Dùng tr?c ti?p ho?c hâm nóng tr??c khi dùng, ?n nhanh sau khi m?', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (206, N'Cá kho th?t 3 Bông mai Vissan h?p 150g',33, 17000, 10, 0, N'Cá n?c (30%), th?t heo (25%), n??c, ?t, hành, mu?i i-?t, ???ng, ch?t ?i?u v? (621), ch?t gi? ?m (451i, 452i), tiêu ?en xay, ch?t ?n ??nh (1422), n??c m?m, ph?m màu t?ng h?p (150a)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (207, N'Bò h?m Vissan h?p 150g',33, 35000, 10, 0, N'Th?t bò 55%, mu?i, ???ng, t?i, hành...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (208, N'Cá trích s?t cà Sea Crown h?p 155g',33, 12000, 10, 0, N'Cá trích 60%, s?t cà 27%, n??c 11.7%, mu?i 1%, ch?t ?i?u v? 0.3%', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (209, N'Cá mòi x?t cà chua n?p gi?t 3 Cô Gái h?p 155g (v? ??m ?à)',33, 17000, 10, 0, N'Cá bi?n (cá mòi, cá ngân, cá n?c,...) 60%, x?t cà chua 35%, d?u nành, ???ng, mu?i i-?t, ch?t làm dày (1442, 1414, 412), ch?t ?i?u v? 621, màu th?c ph?m 160d', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (210, N'L?c 3 h?p Cá saba x?t n??c t??ng Norlake 150g',33, 102000, 10, 0, N' ?? n?i khô ráo, thoáng mát, tránh ánh n?ng tr?c ti?p', 3);

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



INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (1,  N'Nguy?n Thanh Sang', N'Bình D??ng', N'0971890712', N'sanglun2254@gmail.com' , 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (2,  N'Minh Cao', N'TPHCM', N'0971890712', N'minhcd@gmail.com',  1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (3,  N'Nguy?n Thanh Sang', N'Q11', N'0971890712', N'sanglun2254_1@gmail.com',  1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (4,  N'Nguy?n Ng?c Hi?n', N'Gò V?p', N'', N'pinkwater98@gmail.com', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (5,  N'H?  Qu?nh Nga', N'280 ADV', N'0904877306', N'wanriky2998@gmail.com',   0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (6,  N'Lê Th? Hi?n', N'Bình Th?nh', N'0904877306', N'hiennt@gmail.com',   0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (7,  N'Lê Thanh Sang', N'Th? ??c', N'0904877306', N'sanglt8@gmail.com',   1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (8,  N'H? Vi?t Th?', N'Q11', N'0904877306', N'thobt@gmail.com',   1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (9,  N'Nguy?n Qu?c Hoàn', N'Q12', N'0904877306', N'hoan2008@gmail.com',   1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (19,  N'?inh V?n Thanh', N'Bình Th?nh', N'0904877306', N'thanhpt@gmail.com',   1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (11,  N'Ngô ??c Anh', N'Khu CN sóng Th?n', N'0904877306', N'ducanh@gmail.com',   1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (12,  N'Nguy?n Th? Ng?c Huy?n', N' V?ng Tàu', N'0904877306', N'huyen1999@gmail.com',   0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (13,  N'H? Di?u Huy?n', N'Q5', N'0904877306', N'hien7965@gmail.com',   0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (14,  N'Nguy?n Th? Uy?n C??ng', N'Th? ??c', N'0904877306', N'cuongcntt8@gmail.com',   0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (15,  N'Lê V?n H?u', N'Bình Tân', N'0904877306', N'haucnaa@gmail.com',   1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (16,  N'Nguy?n Hoàng Anh', N'Bình Th?nh', N'0904877306', N'anhbinhthanh@gmail.com',   0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));



CREATE TABLE HOADON (
  MaHD NUMBER(10) NOT NULL ,
  MaNV NUMBER(10) NOT NULL,
  MaChiNhanh NUMBER(10) NOT NULL,
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
  CONSTRAINT fk_hd_cn FOREIGN KEY (MaChiNhanh) REFERENCES CHINHANH(MaChiNhanh)
);

INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (1, 1,1,1,N'Nguy?n Thanh Sang',N'Bình D??ng', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (2, 1,2,2,N'Minh Cao', N'TPHCM', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),236800,237000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (3, 2,3,3,N'Nguy?n Thanh Sang', N'Q11', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),34500,345000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (4, 3,4,4,N'Nguy?n Ng?c Hi?n', N'Gò V?p', N'',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),1135100,1135000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (5, 4,5,5,N'H?  Qu?nh Nga', N'280 ADV', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),6800,6800);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (6, 5,6,6, N'Lê Th? Hi?n', N'Bình Th?nh', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (7, 6,7,7,N'Lê Thanh Sang', N'Th? ??c', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),356100,256000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (8, 7,8,8,N'H? Vi?t Th?', N'Q11', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),115100,115000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (9, 8,9,9,N'Nguy?n Qu?c Hoàn', N'Q12', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),679000,679000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (10,9,10,19, N'?inh V?n Thanh', N'Bình Th?nh', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),127800,127800);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (11,10,11,11,N'Ngô ??c Anh', N'Khu CN sóng Th?n', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),13500,13500);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (12,11,12,12,N'Nguy?n Th? Ng?c Huy?n', N' V?ng Tàu', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),34200,34000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (13,12,13,13, N'H? Di?u Huy?n', N'Q5', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),50000,50000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (14,13,14,14,N'Nguy?n Th? Uy?n C??ng', N'Th? ??c', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),234000,234000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (15,2,15,15, N'Lê V?n H?u', N'Bình Tân', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);

CREATE TABLE CHITIETHD(
  MaHD NUMBER(10) NOT NULL,
  MaHH NUMBER(10) NOT NULL,
  DonGia NUMBER(10,1) ,
  GiamGia NUMBER(10,1) NULL,
  SoLuong NUMBER(10) ,
  CONSTRAINT pk_cthd PRIMARY KEY (MaHD, MAHH),
  CONSTRAINT fk_cthd_hd FOREIGN KEY (MaHD) REFERENCES HOADON(MaHD),
  CONSTRAINT fk_cthd_hh FOREIGN KEY (MaHH) REFERENCES HANGHOA(MaHH)
);
