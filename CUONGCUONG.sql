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


INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (1, N'Big C Mi?n Ðông');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (2, N'Big C Âu Co');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (3, N'Big C Phú Th?nh');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (4, N'Big C Tru?ng Chinh');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (5, N'Big C Gò V?p');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (6, N'Big C Nguy?n Th? Th?p');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (7, N'Big C Th?o Ði?n');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (8, N'Big C An Phú');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (9, N'Big C An L?c');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (10, N'Big C Bình Duong');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (11, N'Big C B?c Giang');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (12, N'Big C Quy Nhon');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (13, N'Big C Lê Tr?ng T?n');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (14, N' Big C Long Biên');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (15, N' Big C Mê Linh');



CREATE TABLE CHUCVU
(
	MaChucVu NUMBER(10) NOT NULL,
	TenChucVu NVARCHAR2(50) NOT NULL,
     	CONSTRAINT FK_Chuc_Vu PRIMARY KEY (MaChucVu)
);


INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('1', N'Nhân Viên Bán Hàng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('2', N'Nhân Viên Qu?n Lí');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('3', N'Nhân Viên Thu Ngân');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('4', N'Nhân Viên B?o V?');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('5', N'Nhân Viên Tu V?n');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('6', N'Nhân Viên K? Toán');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('7', N'Nhân Viên Kiêm Kê');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('8', N'T? Tru?ng Qu?n Lí');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('9', N'T? Phó Qu?n Lí');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('10', N'T? Tru?ng Bán Hàng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('11', N'T? Phó Bán Hàng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('12', N'T? Tru?ng Thu Ngân');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('13', N'T? Phó Thu Ngân');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('14', N'T? Tru?ng An Ninh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('15', N'T? Phó An Ninh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('16', N'K? Tóan Tru?ng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('17', 'K? Tóan Luong');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('18', N'Nhân Viên Kho');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('19', N'Giám Ð?c Chi Nhánh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('20', N'Qu?n Lý Chi Nhánh');



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
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (1, N'Nguy?n Qu?c Cu?ng', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','NGQL1', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee01@gmail.com',  1,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (2, N'Nguy?n Th? Kim Anh', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','NGQL2', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee02@gmail.com',2,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (3, N'Nguy?n Duy Minh', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','NGQL3', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee03@gmail.com',3,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (4, N'Nguy?n Minh Qu?c', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','NGQL4', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee04@gmail.com', 4,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (5, N'Duong Thái Nh?t', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','NGQL5', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee05@gmail.com',5,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (6, N'Võ Lê Ng?c Di?p', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','NGQL6', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==','employee06@gmail.com',6,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (7, N'Duong T?n Thiên', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Qu?n 11','NGQL7', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==','employee07@gmail.com',7,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (8, N'Ngô Ð?c Anh', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Quân 11','NGQL8', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee08@gmail.com',8,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (9, N'Tr?n Van Nh?t Tân', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '121 Ðu?ng s? 6 P Linh Tây','NGQL9', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee09@gmail.com',9,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (10, N'Ð? Th? B?o Quyên', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '291/12/5 Nguy?n Qu?c Toàn P7 ','NGQL10', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee10@gmail.com', 10,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (11, N'H? Ng?c Hà', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '45 Th?o Ði?n Q10','NGQL11', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee11@gmail.com',11,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (12, N'Nguy?n Hoành Anh', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Quân P5 Quân 11','NGQL12', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee12@gmail.com',12,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (13, N'Lý Hoàng Mai', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '230 An Du?ng Vuong P11 A5','NGQL13', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee13@gmail.com', 13,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (14 , N' H?ng Ð?i ', 0 , TO_TIMESTAMP ('1953-02-05','YYYY-MM-DD'), '0669501295', N'191 Ðu?ng s? 96 Qu?n  Bình Chánh TP.HCM. ', N'NGQL14', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee110834@gmail.com', 14, '20' );
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (15 , N'H? Kim Hoàng ', 0 , TO_TIMESTAMP ('1975-03-18','YYYY-MM-DD'), '0294961558', N'92  Qu?n Bình Th?nh  TP.Th? Ð?c. ', N'NGQL15', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee54214@gmail.com', 15, '20' );
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (16 , N'Võ  H?ng Ð?i ', 0 , TO_TIMESTAMP ('2009-07-12','YYYY-MM-DD'), '0612905938', N'355   TP.Th? Ð?c. ', N'NV3897660', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee472667@gmail.com', 12 , '1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (17 , N'Lý Qu?c Linh ', 1 , TO_TIMESTAMP ('1994-12-07','YYYY-MM-DD'), '0314591996', N'366  Qu?n 9 TP.Th? Ð?c. ', N'NV1491322', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee800428@gmail.com', 9 , '1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (18 , N'  Quang ', 1 , TO_TIMESTAMP ('1960-08-21','YYYY-MM-DD'), '0747157884', N'63  Qu?n 5 TP.Th? Ð?c. ', N'NV9478952', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee789615@gmail.com', 4 , '5');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (19 , N'Hoàng Di?u Hùng ', 0 , TO_TIMESTAMP ('1961-10-13','YYYY-MM-DD'), '0612285495', N'10 Phu?ng 33 Qu?n Bình Th?nh  TP.HCM. ', N'NV0832803', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee134753@gmail.com', 9 , '1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (20 , N'Lý Uy?n Ð?c Anh ', 0 , TO_TIMESTAMP ('1995-05-19','YYYY-MM-DD'), '0181510599', N'861   TP.Th? Ð?c. ', N'NV5912480', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee239949@gmail.com', 14 , '1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (21 , N'Võ  Uy?n Hoa ', 0 , TO_TIMESTAMP ('1996-04-05','YYYY-MM-DD'), '0158301314', N'71  Qu?n 5 TP.HCM. ', N'NV7855664', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee11[722@gmail.com', 7 , '1');


CREATE TABLE LOAI(
  MaLoai NUMBER(10) NOT NULL,
  TenLoai NVARCHAR2(30) NOT NULL,
  CONSTRAINT pk_loai PRIMARY KEY (MaLoai)
);

INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (1, N'Th?c Ph?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (2, N'Khan gi?y, gi?y v? sinh');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (3, N'M? Ph?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (4, N'Van Phòng Ph?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (5, N'Bàn Ch?i, Kem Ðánh Rang');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (6, N'Th?c Ph?m Khô');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (7, N'Nu?c Gi?i Khát');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (8, N'S?a');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (9, N'Bánh K?o');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (10, N'Mì Gói');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (11, N'D?u An');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (12, N'Nu?c x? v?i');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (13, N'Ð? gia d?ng');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (14, N'Nu?c r?a tay');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (15, N'B?t gi?t');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (16, N'S?a t?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (17, N'D?u g?i');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (18, N'Nu?c tang l?c');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (19, N'S?a');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (20, N'Thi?t b? y t?');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (21, N'Rau xanh');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (22, N'Hoa Qu?');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (23, N'M?t');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (24, N'Bánh');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (25, N'K?o');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (26, N'Kh?u trang');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (27, N'Qu?n áo ngu?i l?n');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (28, N'Qu?n áo tr? em');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (29, N'Thi?t b? di?n t?');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (30, N'Ð? công ngh?');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (31, N'Ð? trang s?c');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (32, N'Ð? choi');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (33, N'Th?c an dóng h?p');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (34, N'Th?c an có s?n');

CREATE TABLE NHACUNGCAP(
  MaNCC NUMBER(10) NOT NULL,
  TenCongTy NVARCHAR2(50),
  Email VARCHAR2(50),
  DienThoai VARCHAR2(24),
  DiaChi NVARCHAR2(100),
  CONSTRAINT pk_ncc PRIMARY KEY (MaNCC)
);

INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (1, N'ESHOP', N'eshop@gmail.com', N'1654651326', N'TPHCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (2, N'KENTA', N'kenta@gmail.com', N'653256565', N'TPHCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (3, N'SENDO', N'sendo@gmail.com', N'2356562323', N'TPHCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (4, N'YAME', N'yame@gmail.com', N'32565365323', N'BÌNH D??NG');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (5, N'Cp Nu?c Gi?i Khát Chuong Duong', N' info@cdbeco.com.vn', N'( 84-8) 3836 7518', N'577 Hùng Vuong, P. 12, Qu?n 6 ');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (6, N'Công Ty Tnhh Nu?c Gi?i Khát Delta', N'delta@gmail.com', N'0723827010', N'	S? 42, Võ Ng?c Qu?n, Phu?ng 6, , Vi?t Nam');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (7, N'Th?c Ph?m Ðóng H?p KTC Kiên Giang', N'sale@ktcfood.com.vn', N' 0297.3617724', N'Khu C?ng cá T?c C?u, Châu Thành, Kiên Giang');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (8, N'Công Ty Xu?t Kh?u Rau Qu? Ti?n Giang', N'info@vegetigi.com', N' (84.273) 3834 677', N' Kilômét s? 1977, , Ti?n Giang');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (9, N'Công Ty CP Th?c Ph?m Xu?t Kh?u Ð?ng Giao', N'sales@doveco.com.vn', N'(+84) 229 3770 353', N' Phu?ng Trung Son,Tam Ði?p, Ninh Bình');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (10, N'Công Ty TNHH Th?c Ph?m Dinh Du?ng Sài Gòn', N'yame@gmail.com', N'(84. 0650) 3737 692', N' KCN Sóng Th?n 2, Di An, Bình Duong');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (11, N'Công Ty TNHH Saigon Ve Wong', N'yame@gmail.com', N'(028) 37195550, 37195554', N'1707 Qu?c L? 1A, P. An Phú Ðông, Q. 12, Tp. H? Chí Minh (TPHCM)');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (12, N'CÔNG TY C? PH?N RAU QU? BÌNH THU?N', N'hoangrauqua@fruitsandgreens.com', N'0913 932 446', N'107 Ð?ng Van Lãnh, Phu?ng Phú Tài, , T?nh Bình Thu?n');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (13, N'CÔNG TY C? PH?N PHÂN PH?I ÐI?N T? JVS', N'info@jvs.vn', N'32565365323', N'24 Giai Phóng, P.4, Q. Tân Bình, Tp HCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (14, N'Công ty TNHH Panasonic Vi?t Nam', N' customer@vn.panasonic.com', N'(+84) 024 3955 0111', N'	Lô J1-J2 Khu công nghi?p Thang Long,  Hà N?i, Vi?t Nam.');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (15, N'Công ty TNHH Thaipro', N'thaipro@gmail.com', N'32565365323', N'GD2-14, Khu Công nghi?p Ng?c H?i, Thanh Trì, Hà N?i.');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (16, N'Công ty TNHH Ði?n T? Samsung', N'samsung@gmail.com', N' +84-2839157310', N'S? 2, du?ng H?i Tri?u, Phu?ng B?n Nghé, Qu?n 1, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (17, N'Công ty C? ph?n Th?c ph?m Thiên Huong', N' contact@thienhuongfood.com.vn', N'028 37171449', N'S? 1 Lê Ð?c Th?, Khu Ph? 02, Tân Th?i Hi?p, Qu?n 12, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (18, N'Công ty C? ph?n K? ngh? th?c ph?m Vi?t Nam ', N'vifon@vifon.com.vn', N'028 38153933', N'913 Tru?ng Chinh, P. Tây Th?nh, Q. Tân Phú, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (19, N'Công ty C? ph?n Acecook Vi?t Nam', N'acecook@gmail.com', N'028 3 815 4064', N' Lô II-3, Ðu?ng s? 11, , P.Tây Th?nh, Q. Tân Phú, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (20, N'Công ty C? ph?n Hàng tiêu dùng MaSan', N'danielle@msn.masangroup.com', N' 0286 2555 660', N'T?ng 12, tòa nhà MPlaza Saigon, Qu?n 1, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (21, N'Công ty TNHH S?n xu?t thuong m?i Phúc H?o', N'info@phuchaonoodles.com.vn', N'0932.704.724', N' 347 H? Van T?ng, Huy?n C? Chi, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (22, N'Công ty C? ph?n công ngh? th?c ph?m Châu Á', N'micoem@micoem.vn', N'02223 714 146', N'S? 4 B?ch Ð?ng, P.Th?ch Thang, Q. H?i Châu, TP Ðà N?ng');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (23, N'Cty CP Th?c ph?m Á Châus', N'info@asiafoods.vn', N'028 4450 0588 ', N'801-804 T?ng 8, Saigon Trade Center, TP. H? Chí Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (24, N'Công ty C? ph?n luong th?c th?c ph?m Colusa', N'colusa@comifood.com', N'028 3896 6835', N'1230 Kha V?n Cân, Linh Trung, Th? Ð?c, TP. H? Chí Minh');


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
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (1, N'MÌ AN LI?N MILIKET', 10, 1500, 10, 0, N' V?T MÌ - B?t mì, shortening, tinh b?t khoai mì, mu?i, du?ng, ch?t ?n d?nh (501(i), 452(i), 466), ch?t t?o x?p (500(i)), ph?m màu t? nhiên (160a(ii), 160c, 100(i)), b?t tôm, ch?t ch?ng oxy hoá (321). ', 21);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (2, N'MÌ AN LI?N H?O H?O', 10,  3500, 10, 0, N'?T MÌ - B?t mì (b? sung vi ch?t (k?m, s?t)), d?u th?c v?t (d?u c?, ch?t ch?ng oxy hoá (BHA (320), BHT (321))), tinh b?t, mu?i, du?ng, nu?c m?m, ch?t di?u v? (mononatri glutamat (621)), ch?t ?n d?nh (pentanatri triphosphat (451(i), ', 21);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (3 ,N'MÌ AN LI?N TÔM CHUA CAY', 10, 2500, 10, 0, N'S?i mì 3 Mi?n du?c làm b?t khoai tây, b?t mì, màu t? nhiên, vitamin B1, B2, B3, B6, B9… tr? nên dai, m?m h?p d?n. ', 22);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (4, N'MÌ AN LI?N OMAICHI BÒ H?M', 10 , 5000, 10, 0, N'Mì Omachi X?t Bò H?m sinh ra t? lúa mì và tinh ch?t khoai tây, hòa quy?n v?i tr?ng, t?ng s?i mì Omachi vàng uom dai ngon nay còn du?c d?m mình trong nu?c c?t t? th?t và xuong nên càng d?m dà h?p d?n ', 21);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (5 ,N'MÌ AN LI?N OMACHI TR?N', 10, 5000, 10, 0, N'Mì Omachi x?t Spaghetti v? bò v?i s?i mì m?m, dai, du?c làm t? khoai tây tuoi ch?n l?c, k?t h?p v?i nu?c x?t du?c ch? bi?n t? th?t bò b?m và cà chua tuoi làm nên huong v? d?c trung c?a nu?c Ý. ', 22);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (6, N'MÌ AN LI?N A ONE', 10, 3000, 10, 0, N'B?t mì, d?u shortening, mu?i, ch?t di?u v?: Monosodium glumate (E621), du?ng , b?t tiêu den, b?t ?t, d?u th?c v?t, hành lá s?y, khô, huong th?t xào t?ng h?p. ', 22);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (7, N'ÁO SO MI NAM DÀI TAY TR?NG SMT16', 27 , 350000, 10, 0.15, N'So mi tay dài tr?ng phong cách tinh ', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (11, N'ÁO SO MI NAM DÀI TAY TR?NG SMT12', 27, 280000, 10, 0.12, N'Áo so mi nam C? B? V?i L?a Thái ch?ng nhan (CAM K?T ?NH TH?T)-Dáng ôm Body Hàn Qu?c d?p', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (17, N'ÁO SO MI NAM DÀI TAY TR?NG SMT16', 27, 280000, 10, 0, N'SKU: SMT16 Category: Áo So Mi Nam Tags: áo so mi, áo so mi den, áo so mi tr?ng', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (18, N'ÁO SO MI NAM DÀI TAY TR?NG SMT0001', 27,  300000, 10, 0.2, N'Mua ngay Áo so mi nam V?i L?a Thái Tr?ng ch?ng nhan SMT001-Dáng ôm Body Hàn qu?c chính hãng ', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (19, N'ÁO SO MI NAM DÀI TAY S?C ÐEN TR?NG SMT0004', 27, 320000, 10, 0.2, N'Áo so mi s?c den tim den- UNISEX cao c?p giá r?. So mi nam dài tay màu tr?ng sành di?u thoáng mát không nhan.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (20, N'ÁO SO MI NAM DÀI TAY S?C SMT0006',27, 300000, 10, 0.2, N'áo so mi nam trung niên d?p, l?ch s? v?i ch?t li?u cao c?p : cotton, s?i tre, nano. Ð? size t? 38-43.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (21, N'ÁO SO MI NAM DÀI TAY S?C XÁM SMT0018', 27,  300000, 10, 0.2, N'Áo so mi nam dài tay, Áo so mi nam công s? h?a ti?t k? s?c có túi ng?c, Ki?u so mi thoáng mát b?n d?p sang', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (22, N'ÁO SO MI NAM DÀI TAY  XANH S?C DEN  SMT0026',27, 300000, 10, 0.2, N'Áo so mi nam dài tay thuong hi?u Anton k? s?c xanh duong ', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (23, N'ÁO SO MI NAM  NG?N TAY SMT0001', 27,  300000, 10, 0.2, N'Áo so mi nam tay ng?n cho quý ông tr? trung. Áo so mi c?c tay l?ch s? mà v?n nang d?ng th? hi?n b?n linh dàn ông dích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (24, N'ÁO SO MI NAM  NG?N TAY H?A TI?T SMT0065', 27, 300000, 10, 0.2, N'Các m?u áo so mi nam ng?n tay cao c?p, giá c? h?p lý.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (25, N'ÁO SO MI NAM  NG?N TAY SMT0069', 27,  300000, 10, 0.2, N'Áo so mi nam tay ng?n cho quý ông tr? trung. Áo so mi c?c tay l?ch s? mà v?n nang d?ng th? hi?n b?n linh dàn ông dích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (26, N'ÁO SO MI NAM  NG?N TAY SMT0005', 27,  110000, 10, 0.2, N'Áo so mi nam tay ng?n cho quý ông tr? trung. Áo so mi c?c tay l?ch s? mà v?n nang d?ng th? hi?n b?n linh dàn ông dích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (27, N'ÁO SO MI NAM  NG?N TAY SMT0001', 27, 110000, 10, 0.2, N'Áo so mi nam tay ng?n cho quý ông tr? trung. Áo so mi c?c tay l?ch s? mà v?n nang d?ng th? hi?n b?n linh dàn ông dích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (28, N'ÁO SO MI NAM  NG?N TAY SMT0010',27,  110000, 10, 0.2, N'Áo so mi nam tay ng?n cho quý ông tr? trung. Áo so mi c?c tay l?ch s? mà v?n nang d?ng th? hi?n b?n linh dàn ông dích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (29, N'ÁO SO MI NAM  NG?N TAY SMT0041', 27, 110000, 10, 0.2, N'Áo so mi nam tay ng?n cho quý ông tr? trung. Áo so mi c?c tay l?ch s? mà v?n nang d?ng th? hi?n b?n linh dàn ông dích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (30, N'ÁO SO MI NAM  NG?N TAY   SMT0073',27,  110000, 10, 0.2, N'Áo so mi nam tay ng?n cho quý ông tr? trung. Áo so mi c?c tay l?ch s? mà v?n nang d?ng th? hi?n b?n linh dàn ông dích th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (31, N'D?u an Neptune',11, 45000, 10, 0.2, N'D?u an Neptune 1:1:1 là lo?i d?u th?c v?t th? h? m?i t?t cho s?c kh?e c?a công ty d?u th?c v?t Cái Lân. Ðây cung là lo?i d?u th?c v?t duy nh?t trên th? tru?ng du?c s?n xu?t t? h?n h?p d?u g?o, d?u h?t c?i, d?u d?u nành và d?u Olein, không ch?a a-xít béo c?u hình trans, không cholesterol r?t t?t cho s?c kh?e tim m?ch…', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (32, N'D?u an hu?ng duong Nga',11, 52000, 10, 0.2, N'D?u an hu?ng duong Nga du?c làm t? 100% h?t hu?ng duong nguyên ch?t, du?c s?n xu?t d?a trên công ngh? ép l?nh không tinh ch?. Vì v?y, gi? du?c d?y d? các thành ph?n vitamin và khoáng ch?t có l?i cho s?c kh?e nhu: vitamin A, B,E và các axit không bão hòa da (Omega 3, 6, 9) và có màu vàng t? nhiên.i', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (33, N'D?u an Meizan',11,  41000, 10, 0.2, N'D?u an Meizan cung là m?t s? l?a ch?n thông minh cho các bà n?i tr?. Meizan có da d?ng các lo?i d?u an d?u có l?i cho s?c kh?e nhu: D?u th?c v?t Meizan, D?u d?u nành Meizan, Bo th?c v?t Meizan, D?u mè thom h?o h?ng Meizan. ', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (34, N'D?u an Simply',11, 49000, 10, 0.2, N'd?u d?u nành Simply du?c làm t? 100% d?u nành nguyên ch?t, là m?t trong nh?ng lo?i d?u th?c v?t du?c s? d?ng r?ng rãi nh?t trên th? gi?i b?i nh?ng l?i ích s?c kh?e, thành ph?n và ch?t ch?ng oxi hóa v?n còn luu l?i trong d?u ngay c? sau khi du?c tinh luy?n.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (35, N' D?u an olive',11, 221000, 10, 0.2, N'là m?t ngu?i m? d?m dang thì không th? không quan tâm d?n s?c kh?e c?a con cái d?c bi?t là tr? nh? t? 3 - 5 tu?i. Ðây là giai do?n phát tri?n c?a tr?. Tr? c?n nh?ng th?c an d?y d? dinh du?ng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (36, N'D?u an Cái Lân',11,  28000, 10, 0.2, N'D?u an Cái Lân là m?t thuong hi?u d?u an n?i ti?ng, lâu d?i mang thuong hi?u Vi?t Nam. D?u an h?o h?ng Cái Lân du?c s?n xu?t theo quy trình hi?n d?i, h?p v? sinh an toàn th?c ph?m. Nh?ng nguyên li?u d? tinh ch? du?c ch?n l?c m?t cách sát sao. ', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (37, N'D?u an Tu?ng An',11,  95000, 10, 0.2, N'Hãng d?u an Tu?ng An v?i kinh nghi?m s?n xu?t g?n 35 nam cùng nh?ng thi?t b? máy móc, ch? bi?n hi?n d?i, ngày càng du?c c?i ti?n và nâng c?p. Ð?i v?i Tu?ng An, m?c tiêu quan tr?ng nh?t là không ng?ng c?i ti?n nâng cao ch?t lu?ng và an toàn th?c ph?m, dáp ?ng t?t nh?t m?i yêu c?u c?a khách hàng.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (38, N'D?u an cao c?p Ranee ',11, 24000, 10, 0.2, N'D?u an cao c?p Ranee 100% t? cá du?c s?n xu?t v?i dây chuy?n công ngh? v?t lý tinh luy?n t? Châu Âu, giúp x? lý mùi t?i uu nhung v?n luu gi? tron v?n các du?ng ch?t t? nhiên t? cá nhu omega 3-6-9, DHA/EPA và Vitamin E', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (39, N'D?u an Marvela',11,  35000, 10, 0.2, N'D?u an Marvela là thuong hi?u n?i ti?ng ? Vi?t Nam. Ðu?c m?i ngu?i tin dùng và s? d?ng su?t nh?ng nam qua. Cung gi?ng các thuong hi?u khác, Marvela cho ra d?i nhi?u lo?i d?u an v?i nh?ng nguyên li?u, thành ph?n khác nhau. Kéo theo dó là nh?ng công d?ng khác nhau.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (40, N'B? M? ph?m du?ng tr?ng da Ohui White Extreme',3, 110000, 10, 0.2, N'V? t?ng quan b? m? ph?m Hàn Qu?c Ohui Extreme White là dòng s?n ph?m du?ng tr?ng da cao c?p du?c Ohui phát tri?n nh?m giúp phái d?p nuôi du?ng, tái t?o v? tuoi sáng cho làn da, mong mu?n dem d?n cho phái d?p m?t s? thay d?i d?t phá, thú v?, làn da d?p, sáng trong không tì v?t cùng tâm tr?ng vui v? và cu?c s?ng h?nh phúc.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (41, N'Kem ch?ng n?ng Ohui Black',3,  310000, 10, 0.2, N'Ohui Perfect Sun Black có ch? s? ch?ng n?ng ? m?c phù h?p (SPF50+/PA++++) giúp ch?ng n?ng hi?u qu?. Ngoài tác d?ng c?a kem ch?ng n?ng thì s?n ph?m này còn giúp du?ng sáng da và c?p ?m hi?u qu?. ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (42, N'Kem du?ng Innisfree balancing cream',3,  310000, 10, 0.2, N'Ðây du?c xem nhu dòng s?n ph?m du?ng ch? d?o và du?c dánh giá cao nh?t c?a hãng. Green tea balancing cream – Kem du?ng ?m cân b?ng V?i chi?t xu?t t? trà xanh s? cung c?p, b? sung du?ng ch?t cho da m?t.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (43, N'M?t n? ng? Laneige Water Sleeping Mask',3,  110000, 10, 0.2, N'S?n ph?m có d?ng gel l?ng m?n ch?a “nu?c t? bang tuy?t tan”, tinh ch?t t? qu? mo Hunza và tinh ch?t h?t d? th?m nhanh vào da và giúp cung c?p dinh du?ng cho t? bào da cung nhu làm hydrat hóa làn da d? gi? ?m và thay d?i s?c t? da d? làm tr?ng.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (44, N'Ph?n nu?c du?ng tr?ng Laneige BB',3,  310000, 10, 0.2, N'Laneige whitening là m?t s?n ph?m 5 trong 1 mang tính “cách m?ng” c?a hãng trong công cu?c làm d?p, v?i d? che ph? ch?ng n?ng SPF 50, lu?ng nu?c khoáng t?i uu, hi?u ch?nh màu s?c t?t c? trong m?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (45, N'Son môi Mamonde Highlight Lip Tint',3,  110000, 10, 0.2, N'Th?i son tint Mamonde này có thi?t k? c?c don gi?n nhung dáng yêu v?i thân son nh?a có màu tuong ?ng v?i màu son bên trong.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (46, N'M? ph?m Sulwhasoo',3, 110000, 10, 0.2, N'Sulwhasoo du?c dón nh?n nhi?t tình nh? các s?n ph?m ch?t lu?ng cao, du?c nghiên c?u và chi?t xu?t t? hon 3,000 lo?i th?o m?c và các lo?i du?c li?u quý.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (47, N'S?a r?a m?t Herb Day 365',3,  300000, 10, 0.2, N'M?t trong nh?ng s?n ph?m n?i b?t nh?t c?a hãng chính là dòng s?a r?a m?t t?o b?t Herb Day 365 Cleansing Foam TheFaceShop, dòng s?n ph?m g?m 6 mùi huong tuoi tr? có th? dùng nhu m?t lo?i kem t?y trang dùng sau khi trang di?m', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (48, N'Son Etude house dear darling tint',3, 110000, 10, 0.2, N'Ðây là m?t s?n ph?m dang làm mua làm gió t?i th? tru?ng Vi?t Nam th?i gian g?n dây b?i d? “cute” vô d?i c?a thi?t k? hình que kem bé bé xinh xinh.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (49, N'M?t n? du?ng den dâu skinfood',3,  110000, 10, 0.2, N'Là m?t hãng m? ph?m Hàn Qu?c ch?t lu?ng da d?ng các s?n ph?m t? cham sóc da d?n trang di?m giá thành h?p lí và dáng d? th? khi b?n mu?n tìm m?t hãng m? ph?m bình dân ch?t lu?ng.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (50, N'Me Cay R?ng Con',6,  51000, 10, 0.2, N'ME XÍ MUÔI CHUA CAY v?a là món an v?t h?p d?n và l? mi?ng, v? chua c?a me, m?n, ng?t c?a du?ng và mu?i k?t h?p v?i m?t ít cay c?a ?t t?o nên m?t s?n ph?m r?t d?c bi?t', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (51, N'Ð?u Ph?ng Nu?c C?t D?a',6, 51000, 10, 0.2, N'Khách an vào s? c?m nh?n du?c d? giòn, béo, d? x?p. S?n ph?m hoàn toàn không thêm ch?t b?o qu?n, gi? nguyên huong v? t? nhiên c?a s?n ph?m. Dùng du?c cho ngu?i an chay.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (52 ,N'Ð?u Hà Lan S?y Mu?i',6,  51000, 10, 0.2, N'Ð?u Hà Lan S?y v? phô mai an vào v?a x?p, v?a giòn, v?a có d? béo c?a phô mai, h?t d?u Hà Lan không c?ng, không chai.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (53, N' táo d? tân cuong',6, 110000, 10, 0.2, N'TÁO Ð? C?A NGU?I HÀN QU?C khác h?n nh?ng lo?i táo d? du?c tr?ng ? Trung Qu?c hay noi khác vì trái to, ng?t, h?t r?t nh?, thom', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (54, N'H?t macca ',6,  290000, 10, 0.2, N'Có xu?t x? t?i châu Úc, khu v?c có khí h?u nhi?t d?i và c?n nhi?t d?i cùng v?i d?c trung noi dây các lo?i khoáng s?n phong phú nên hàm lu?ng dinh du?ng có trong h?t m?c ca t? dó cung x?p h?ng cao nh?t trong các lo?i h?t dinh du?ng', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (55, N'Qu? óc chó m? dã s?y chín',6,  110000, 10, 0.2, N'Qu? óc chó có tên ti?ng Anh là Walnuts hay tên khác qu? H? Ðào (Juglans regiaL) là m?t h? th?c v?t có hoa bao g?m các lo?i cây thân g? trong b? D? (Fagales). Lo?i qu? này có hon 20 lo?i khác nhau và du?c tr?ng ch? y?u ? California walnuts – M? (USA) ', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (56, N'H?T CHIA TÍM NH?P KH?U ÚC',6, 69000, 10, 0.2, N'H?t Chia hay còn g?i là Salvia là th?c ph?m ch?a nhi?u ch?t dinh du?ng hi?m có trong th? gi?i th?c ph?m, d?c bi?t là nh?ng vi ch?t mà chúng ta khó có th? b? sung du?c b?ng thu?c b? ', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (57, N'1kg h?t sen khô',6,  169000, 10, 0.2, N'H?n s? d?ng: 6 tháng.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (58, N' Khô cá ch? vàng ',6,  210000, 10, 0.2, N'Cá ch? vàng là m?t lo?i cá b? du?ng và thom ngon vì trong th?t cá có ch?a r?t nhi?u protein, lipid và c?c k? nhi?u omega 3 t?t cho tim m?ch và m?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (59, N'Khô cá s?c Vi?t Hà',6,  100000, 10, 0.2, N'Khô cá s?c ngon ? ch? b?ng khô cá r?t béo và thom. Nhung cung chính vì b?ng cá r?t ngon nên khi ch? bi?n c?n làm s?ch mùi tanh và khi phoi ph?i b?o qu?n c?n th?n kh?i ru?i d?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (60, N'Khô cá lu?i trâu Song Phuong',6,  450000, 10, 0.2, N'Cá lu?i trâu là m?t loài cá s?ch, ít xuong, th?t ng?t, lành tính và s?ng trong thiên nhiên. Khô cá lu?i trâu du?c dánh giá là khô ngon nh?t tuy d?m b?c nhung d?c dáo nh? th?t ng?t, m?m và mùi v? thom ngon không chê du?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (61, N'Khô cá com s?a Phong Phuong',6,  110000, 10, 0.2, N'Cá com s?a là m?t lo?i cá com r?t nh?, dài ch? kho?ng 3 phân, th?t trong su?t. Cá com s?a có huong v? r?t d?m dà, th?t cá ngon ng?t và c?c k? giàu ch?t dinh du?ng, không h? thua kém các lo?i cá khác.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (62, N'Khô cá dù Song Phuong',6, 110000, 10, 0.2, N'Khô cá dù nhi?u th?t và ít xuong hon h?n các lo?i cá khác. Cá dù ngon ? ch? ph?n thân sau c?a cá c?c k? béo và nhi?u m?. Th?t cá khá là ng?t, bùi bùi và v?i di?m nh?n là v? béo ? ph?n duôi làm chúng ta an hoài không th?y ngán.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (63, N'Gi?y v? sinh CAT Premium',2, 20000, 10, 0, N'10 cu?n/ túi, 3 l?p. Noi s?n xu?t:Vi?t Nam, B?o hành:5 Nam', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (64, N'GI?Y V? SINH CU?N L?N CHUYÊN CHO KS, TÒA NHÀ, VP, NHÀ HÀNG',2, 24500, 10, 0, N'Phân h?y trong nu?c nhanh gi?m thi?u nguy cot?c ngh?n. Dai v?a ph?i, hoi bông x?p, êm nh?', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (65, N'GI?Y CU?N DÀI TH?M HÚT D?U AN',2, 17000, 10, 0, N'Thành ph?n: 100% B?t gi?y.Ð?c di?m: Không l?n gi?y tái ch?, không hóa ch?t d?c h?i', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (66, N'B? khan s?a Mollis 100% bamboo ',2, 209000, 10, 0, N'Ðu?c làm t? 100% s?i bamboo, c?c k? m?m m?i và thoáng mát, giúp cho m? v? sinh m?t, mui cho em bé mà không s? khô, rát bé', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (67, N'Khan l?nh Wuna không mùi ',2, 180000, 10, 0, N'Thành ph?n V?i không d?t, nu?c tinh khi?t R.O, Quaternary Ammonium Salts, Citric Acid, huong thom', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (68, N'Khan gi?y u?t d?ng nén Nikkori 50 cái',2, 85000, 10, 0, N'Khan gi?y nén m?m m?i, h?p v? sinh, tiêu h?y nhanh, không ?nh hu?ng d?n môi tru?ng, an toàn m?i lo?i da. Ð?c bi?t làn da tr? so sinh', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (69, N'Khan u?t Hensley không mùi ',2, 48500, 10, 0, N'Không có ch?t tang tr?ng quang h?c, không ch?a c?n, không ch?t t?o màu, không hoá ch?t b?o qu?n, không huong li?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (70, N'Khan u?t em bé Bobby',2,39000, 10, 0, N'Cham sóc v? sinh da, thích h?p khi thay tã cho bé, tang cu?ng kh? nang kháng khu?n nh? công ngh? Nano B?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (81, N'Bàn ch?i cho bé t? 4 tu?i Splat',5, 89000, 10, 0, N'Lông bàn ch?i làm b?ng v?t li?u cao c?p ch?a ion b?c ngan ng?a s? phát tri?n c?a vi khu?n và làm s?ch hi?u qu? Không ch?a', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (82, N'B? 3 bàn ch?i Oral-B Pro-Health',5, 80000, 10, 0, N'Ch?i rang theo hu?ng d?n c?a nha si. R?a s?ch bàn ch?i sau khi s? d?ng. C?m th?ng và gi? noi khô ráo', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (83, N'B? 2 bàn ch?i Oral-Clean Spiral Carbon Gold',5, 69000, 10, 0, N' Ch?i rang theo hu?ng d?n c?a nha si. R?a s?ch bàn ch?i sau khi s? d?ng. C?m th?ng và gi? noi khô ráo', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (84, N'Bàn ch?i dánh rang ngu?i l?n Bamboo Salt',5, 49000, 10, 0, N'Bàn ch?i dánh rang ngu?i l?n Bamboo Salt mu?i h?ng Himalaya lông to m?m m?i HSD hon 3 nam', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (85, N'Kem dánh rang Splat Special th?o m?c',5, 127000, 10, 0, N'Nên ch?i rang 2 l?n/ngày sau khi an. S? d?ng trong vòng 12 tháng sau khi m? n?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (86, N'Kem dánh rang Splat Special than ho?t tính',5, 127000, 10, 0.5, N'Nên ch?i rang 2 l?n/ngày sau khi an. S? d?ng trong vòng 12 tháng sau khi m? n?p', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (87, N'Kem dánh rang Splat ph?c h?i men & tr?ng rang',5, 84000, 10, 0, N' Nên ch?i rang 2 l?n/ngày sau khi an. S? d?ng trong vòng 12 tháng sau khi m? n?p', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (88, N'Kem dánh rang Colgate Sensitive Pro Relief Complete',5, 69000, 10, 0, N' Gi?m ê bu?t nhanh chóng và lâu dài, ng?a sâu rang, cham sóc nu?u, giúp tr?ng rang, gi?m m?ng bám, b?o v? men rang, hoi th? thom mát', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (89, N'Kem dánh rang Perioe Pumping huong b?c hà',5, 169000, 10, 0, N'Tr? du?i 2-6 tu?i ch? s? d?ng m?t lu?ng kem nh? b?ng h?t d?u và c?n s? hu?ng d?n c?a ngu?i l?n. Tr? em du?i 2 tu?i c?n có s? tu v?n c?a nha si ho?c bác si', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (90, N'B?t dánh tr?ng rang Eucryl Toothpowder',5 , 55000, 10, 0, N'Lo?i b? m?ng bám b?n, giúp tr?ng rang, ngan hôi mi?ng, rang sáng bóng, ch?c kh?e', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (91, N'Nu?c ng?t có ga Coca Cola Zero chai 390ml',7, 6500, 10, 0, N'Nu?c bão hòa CO2, màu t? nhiên, ch?t di?u ch?nh d? acid, ch?t t?o ng?t t?ng h?p, ch?t b?o qu?n, huong cola t? nhiên và caffeine.', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (92, N'24 lon nu?c tang l?c Monster Energy Ultra 355ml',7, 696000, 10, 0, N'L?c nh? tru?c khi u?ng, dùng ngay sau khi m? n?p. Ngon hon khi u?ng l?nh.', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (93, N'Trà xanh huong chanh C2 Plus Immunity ít du?ng 500ml',7, 12000, 10, 0, N'Ð? noi khô ráo, thoáng mát, tránh ánh sáng tr?c ti?p ho?c noi có nhi?t d? cao.', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (94, N'nu?c ng?t Mirinda v? cam 330ml',7, 8000, 10, 0, N'Nu?c bão hoà CO2, du?ng mía, du?ng HFCS, ch?t di?u ch?nh d? acid, tinh b?t bi?n tính, ch?t b?o qu?n, ch?t nhu hoá, huong cam t? nhiên, màu t?ng h?p', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (95, N'nu?c tang l?c Wake Up 247 v? cà phê 330ml',7, 7800, 10, 0, N' Nu?c, du?ng, C02 th?c ph?m, màu t?ng h?p caramen, huong vani, huong cà phê, caffeine, taurine, inositol, vitamin B3, vitamin B6, ch?t di?u ch?nh d? axit, mu?i', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (96, N'tang l?c Compact v? cherry 330ml',7, 9100, 10, 0, N'Nu?c, du?ng, glucose syrup, ch?t di?u ch?nh d? acid (330, 500ii), ch?t t?o khí carbonic (290), huong li?u (huong m?t hoa t? nhiên, huong cherry t?ng h?p, gi?ng t? nhiên)', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (97, N'trà xanh matcha Tea Plus 455ml',7, 82000, 10, 0, N' Ð? noi khô ráo, thoáng mát, tránh ánh sáng tr?c ti?p ho?c noi có nhi?t d? cao.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (98, N'Revive chanh mu?i 390ml',7, 78000, 10, 0, N'L?c nh? tru?c khi u?ng, dùng ngay sau khi m? n?p. Ngon hon khi u?ng l?nh.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (99, N'Cà phê den TNI King Coffee Espresso 250g ( 100 gói x 2.5g )',7, 295000, 10, 0, N'U?NG NÓNG dùng 1 gói pha v?i 70ml nu?c nóng. Có th? thêm s?a ho?c du?ng tu? s? thích', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (100, N'Strongbow dâu den 330ml',7, 21000, 10, 0, N' S?n ph?m dành cho ngu?i trên 18 tu?i và không dành cho ph? n? mang thai. Thu?ng th?c có trách nhi?m, dã u?ng d? u?ng có c?n thì không lái xe!', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (101, N'bia Heineken 0.0% d? c?n 330ml',7, 15000, 10, 0, N' S?n ph?m dành cho ngu?i trên 18 tu?i và không dành cho ph? n? mang thai. Thu?ng th?c có trách nhi?m, dã u?ng d? u?ng có c?n thì không lái xe!', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (102, N'bia Tiger Crystal 330ml',7, 11000, 10, 0, N'Bia Tiger Crystal 330ml không ch? d?t d?n ch?t lu?ng r?ng danh trên toàn th? gi?i mà còn mang d?n c?m giác th?t s?ng khoái và r?t d? u?ng cho ngu?i dùng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (103, N'chai trà s?a Kirin Tea Break 345ml',7, 10000, 10, 0, N'Trà s?a Tea Break chai 345ml v?i nguyên li?u t? nhiên k?t h?p v?i nhau t?o nên huong v? c?a s?a r?t d?c trung.  không quá béo giúp ngu?i dùng c?m th?y ngon mi?ng không b? ng?y.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (104, N'h?p s?a tuoi nguyên ch?t không du?ng Vinamilk 100% Organic 1 lít',8, 52000, 10, 0, N'S?a tuoi ti?t trùng Vinamilk có huong v? s?a tuoi 100% h?u co thom ngon, h?p d?n.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (105, N'h?p s?a tuoi ti?t trùng du?ng den Nutimilk 1 lít',8, 38000, 10, 0, N'S?a bò tuoi, du?ng tinh luy?n, si-rô, du?ng den, ch?t ?n d?nh, huong li?u t?ng h?p dành cho th?c ph?m,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (106, N's?a tuoi ti?t trùng huong dâu TH true MILK 180ml',8, 32000, 10, 0, N'thom ngon, d? u?ng, du?c làm hoàn toàn t? ngu?n s?a tuoi s?ch. Trong s?a ch?a nhi?u du?ng ch?t thi?t y?u t?t cho s?c kho? nhu Vitamin A, D, B1, B2, Canxi, k?m...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (107, N'Thùng 12 h?p s?a tuoi ti?t trùng TH true MILK Organic',8, 378000, 10, 0, N'S?n ph?m h?u co không ch?a ch?t b?o qu?n, r?t an toàn cho s?c kho?, trong s?a còn ch?a nhi?u du?ng ch?t thi?t y?u cung nhu huong v? thom ngon, béo ng?y d?c trung.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (108, N'Thùng 12 h?p s?a d?u den óc chó h?nh nhân Sahmyook',8, 950000, 10, 0, N' Nu?c d?u den, b?t d?u nành, du?ng tr?ng, siro ngô fructose cao, ch?t nhu hóa, b?t qu? óc chó, b?t d?u den, b?t h?nh nhân, mu?i, bo h?t thông, d?u th?c v?t.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (109, N's?a d?u nành h?nh nhân Vinamilk 180ml',8, 12000, 10, 0, N'Phù h?p Dùng cho tr? t? 4 tu?i tr? lên', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (110, N'Thùng 16 h?p s?a d?u nành v? h?nh nhân và óc chó Vegemil',8, 216000, 10, 0, N'S?a d?u nành (nu?c tinh khi?t, d?u nành 7%), du?ng, maltooligosacarit, xi rô ngô hàm lu?ng cao fructose, nu?c, qu? óc chó và h?n h?p các lo?i h?t ', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (111, N'Ngôi sao Phuong Nam xanh lá ',8, 60000, 10, 0, N'Thích h?p Pha cà phê, xay sinh t?, làm s?a chua, bánh flan...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (112, N'Kem d?c có du?ng DeliPure lon 1kg',8, 35000, 10, 0, N'Pha m?t lu?ng creamer theo kh?u v? s?n ph?m v?i kho?ng 60ml nu?c dun sôi, sau dó d? ngu?i r?i u?ng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (113, N'S?a d?c có du?ng Ông Th? tr?ng nhãn vàng lon 380g',8, 29000, 10, 0, N'Pha m?t ph?n s?a v?i 3 ph?n nu?c ?m d? u?ng ho?c pha cùng cà phê, an cùng bánh mì,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (114, N'Thùng 24 chai s?a chua u?ng nha dam Vinamilk Yomilk 150ml',8, 139000, 10, 0, N'Thành ph?n Nu?c, du?ng tinh luy?n, ch?t béo s?a,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (115, N'L?c 8 h?p s?a lúa m?ch Milo Active Go 115ml',8, 34000, 10, 0, N'Nu?c, s?a - milk 35% nu?c, s?a b?t, ch?t béo s?a, b?t whey t? s?a), PROTOMALT 3,3% (chi?t xu?t t? m?m lúa m?ch - extract from malted barley), du?ng 33%),', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (116, N'S?a b?t Ensure Gold lúa m?ch ít ng?t h?p 850g',8, 732000, 10, 0, N'Ð? dáp ?ng nhu c?u dinh du?ng cho ngu?i l?n tu?i, h? tr? tang cu?ng s?c kh?e, th? ch?t và ch?t lu?ng cu?c s?ng', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (117, N'S?a b?t Frisomum Gold huong cam lon 900g',8, 561000, 10, 0, N'Phù h?p Ph? n? mang thai và cho con bú', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (118, N'Rong bi?n h?u co an li?n cho bé Alvins h?p 20g',9, 118000, 10, 0, N'Thành ph?n Rong bi?n (ch?ng nh?n h?u co Hàn Qu?c), d?u Canola, mu?i bi?n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (119, N'Snack khoai tây Slide v? phô mai lon 160g',9, 48000, 10, 0, N'Tha`nh phâ`n Vâ?y khoai tây (70%), b?t gia vi? phô mai, tinh b?t khoai tây, tinh b?t khoa mìi ', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (110, N'Snack que nhân cà phê moka và s?a d?a Akiko Oishi lon 240g',9, 46000, 10, 0, N'Không dùng cho ngu?i d? ?ng v?i s?a, tr?ng, d?u nành, lúa mì t? b?t gia v?. S?n ph?m có th? ch?a cá t? s?n ph?m khác, s?n xu?t trên cùng dây chuy?n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (111, N'Snack da cá v? ?t xanh Pati gói 50g',9, 41000, 10, 0, N' Da cá 85%, gia v? ?t xanh (maltodextrin, du?ng, dextrose, mu?i, ch?t di?u v?, protein th?c v?t thu? phân, gia v? - t?i, ?t c?a gà, thì là, b?t t?i, b?t gi?m, huong t? nhiên', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (112, N'Snack que nhân s?a và phô mai Akiko Oishi lon 240g',9, 39000, 10, 0, N'Không dùng cho ngu?i d? ?ng v?i s?a, tr?ng, d?u nành, lúa mì t? b?t gia v?. S?n ph?m có th? ch?a cá t? s?n ph?m khác, s?n xu?t trên cùng dây chuy?n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (113, N'Bánh quy bo Danisa h?p 681g',9, 191000, 10, 0, N' B?t lúa mì, du?ng, bo (18.67%), d?u th?c v?t (ch?a ch?t ch?ng oxy hóa tocopherol), glucose syrup, tr?ng, d?a s?y, nho kho, b?t s?a tách béo, mu?i, ch?t t?o x?p E503, huong vani t?ng h?p.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (114, N'Bánh quy bo th?p c?m LU h?p 708g',9, 235000, 10, 0, N'B?t mì, du?ng, bo Pháp (12%), shortening, nhân sôcôla h?n h?p (du?ng, ch?t béo th?c v?t hydro hóa, b?t cacao, dextrose, ch?t nhu hóa (322(i)), huong th?c ph?m t?ng h?p, mu?i)', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (115, N'Bánh quy ngu c?c không du?ng Vitamia gói 330g',9, 112000, 10, 0, N'B?t mì (35,4%), ngu c?c d?ng b?t và v?y (24,6%), ch?t t?o ng?t t?ng h?p, d?u hu?ng duong, bo, mu?i, ch?t t?o x?p,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (116, N'Bánh g?u 3 v? Assortment Meiji Hello Panda ',9, 108000, 10, 0, N' S?n ph?m có ch?a b?t mì, lúa m?ch (ngu c?c ch?a gluten), s?a và d?u nành, có th? ch?a h?t mè.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (117, N'K?o Ferrero Confetteria Raffaello ',9, 180000, 10, 0, N' D?a khô 25.5%, ch?t béo th?c v?t, du?ng, h?t h?nh nhân nguyên h?t 8%, s?a b?t g?y, whey b?t, b?t mì, tinh b?t s?n, huong li?u t? nhiên và gi?ng t? nhiên, ch?t nhu hoá, ch?t t?o x?p', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (118, N'Bánh g?o v? ng?t Richy gói 315g',9, 40000, 10, 0, N'G?o thom, d?u th?c v?t, du?ng tinh luy?n, tinh b?t khoai tây, mu?i, gelatin, monosodium glutamate, ch?t di?u v?', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (119, N'Bánh que Glico Pocky dâu và socola',9, 100000, 10, 0, N'Thành ph?n B?t mì, du?ng, d?u th?c v?t, b?t s?a tách béo,..', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (120, N'Socola Ferrero h?p 375g',9, 360000, 10, 0, N'Socola s?a 30% (du?ng, bo, ca cao, b?t ca cao, s?a b?t g?y, ch?t béo s?a d?ng khan, ch?t nhu hoá, ch?t t?o x?p, huong li?u gi?ng t? nhiên, h?t ph? 28.5%, mu?i,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (121, N'Thùng 30 gói mì Mama huong th?t bò h?m 60g',10, 190000, 10, 0, N' B?t mì 79%, d?u c?, mu?i, du?ng, gia v?, ch?t di?u v? (E621, E35), huong li?u (c?n tây) 0.75%, nu?c tuong (d?u tuong, mu?i, chi?t xu?t m?ch nha, lúa mì, n?m men, d?u c?), hành tây s?y khô', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (122, N'Thùng 40 gói mì bò cay Samyang Sutah Ramen 120g',10, 840000, 10, 0, N'ho mì, gói súp, gói rau vào trong 550ml nu?c sôi và n?u kho?ng 4-5 phút. Ð? huong v? ngon hon, có th? thêm kim chi, tr?ng, t?i và hành lá.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (123, N'Thùng 10 túi mì Koreno Jumbo v? kim chi 1kg',10, 760000, 10, 0, N'Ðun sôi 400ml ~ 450ml nu?c. Cho v?t mì, gói gia v?, gói rau vào n?i cùng m?t lúc, n?u trong 4 phút. Sau dó t?t b?p, múc ra bát và dùng du?c ngay. S? ngon hon khi b?n cho thêm tr?ng, hành, rau thom.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (124, N'Thùng 50 gói mì Udon Hanil Bongojang 200g',10, 745000, 10, 0, N' Nu?c 64%, b?t mì 34.16%, tinh b?t s?n 0.95%, mu?i 0.79%, ch?t di?u ch?nh v? chua (axit lactic, axit acetic, sodium laclate, axit adipic, nu?c) 0.1%.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (125, N'Thùng 36 ly mì Mama v?t ti?m 60g',10, 610000, 10, 0, N'B?t mì 75,48%, d?u c? 6,25%, d?u nành 1,75%, gia v? 1,21%, huong v?t 0,75%, b?t t?i, b?t ?t, b?t ng?t,...', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (126, N'Thùng 20 gói mì cay h?i s?n Paldo 120g',10, 399000, 10, 0, N' Cho mì, gói gia v? vào 560ml nu?c sôi và n?u trong 4 phút cho mì m?m. Khu?y d?u mì d? an.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (127, N'Thùng 18 gói mì th?t b?m Vifon Hoàng Gia 120g',10, 250000, 10, 0, N' Cho v?t mì và các gói gia v? vào tô. Rót vào tô kho?ng 400ml nu?c sôi. Ð?y kín n?p tô và ch? kho?ng 3 phút. M? n?p, c?t gói th?t h?m cho vào tô, khu?y d?u là có th? dùng du?c.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (128, N'gói mì V? Huong gi?y vàng 60g',10, 2500, 10, 0, N'Cho v?t mì và các gói gia v? vào tô. Ch? nu?c sôi vào kho?ng 350ml, d?y n?p l?i và ch? trong 3 phút. M? n?p, tr?n d?u và dùng du?c ngay.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (129, N' mì th?t b?m Vifon Hoàng Gia 120g',10, 3000, 10, 0, N'Cho v?t mì và các gói gia v? vào tô. Rót vào tô kho?ng 400ml nu?c sôi. Ð?y kín n?p tô và ch? kho?ng 3 phút. M? n?p, c?t gói th?t h?m cho vào tô, khu?y d?u là có th? dùng du?c.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (130, N'mì rong bi?n Jin Ottogi 120g',10, 12000, 10, 0, N'1/Tru?c tiên cho 550ml nu?c vào n?i và gói rau c? s?y khô vào dun sôi.2/Khi nu?c sôi thì cho gói súp gia v? và mì vào r?i dun sôi kho?ng 5 phút là du?c', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (131, N'Cây dánh tr?ng Silicone 25cm Shika',13, 52000, 10, 0, N'Dài 25 cm c?m g?n tay ngu?i l?n, tr?ng lu?ng nh? ti?n thao tác, dùng lâu không s? m?i tay', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (132, N'Khuôn làm kem nh?a Hofaco HPL64',13, 35000, 10, 0, N'Kích thu?c 14.5cm x 13cm x 8.8cm', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (133, N'Phin cà phê inox Tithafac 7cm',13, 31000, 10, 0, N'Công d?ng S? d?ng pha ch? cà phê truy?n th?ng, ch?t l?c gi?t cà phê s?ch c?n, thom ngon', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (134, N'V? h?p nh?a Ði?n máy XANH LD-SU616 24cm',13, 80000, 10, 0, N'V? h?p thi?t k? nâu xám, du?ng kính vi?n 24.5 cm g?n d?p ti?n d?ng. V? h?p có th? di?u ch?nh phù h?p v?i t?ng lo?i n?i ch?o có du?ng kính khác nhau ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (135, N'B?p c?n inox Rainy hoa mai 23 BCI',13, 65000, 10, 0, N' B?p du?c làm b?ng inox có d? b?n cao, có uu di?m t?a nhi?t d?u, nóng nhanh, ti?t ki?m nhiên li?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (136, N'B?p c?n inox Rainy tráng men 23 BCM',13, 70000, 10, 0, N'B?p du?c làm b?ng inox tráng men có d? b?n cao, có uu di?m t?a nhi?t d?u, nóng nhanh, ti?t ki?m nhiên li?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (137, N'Gel r?a tay khô Kleen huong trà xanh chai 630ml',14, 110000, 10, 0, N'S? d?ng c?n 96% và du?ng ch?t giúp kháng khu?n hi?u qu? và du?ng ?m da tay', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (138, N'Gel r?a tay khô Kleen huong o?i huong chai 630ml',14, 110000, 10, 0, N'Cho m?t lu?ng nh? vào lòng bàn tay và xoa d?u. Không c?n r?a tay l?i v?i nu?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (139, N'Gel r?a tay khô Dr. Clean huong lavender chai 500ml',14, 106000, 10, 0, N'Làm s?ch 99.9% vi khu?n. Ðôi tay luôn m?m m?i, s?ch s?, tuoi mát và bay b?ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (140, N'Gel r?a tay khô Lifebuoy b?o v? vu?t tr?i chai 235ml',14, 72000, 10, 0, N' Ti?n d?ng r?a tay mà không c?n dùng nu?c. V? sinh, di?t khu?n, kh? s?ch mùi r?t t?t d? b?o s?c kh?e, gi? cho dôi tay luôn s?ch s? và m?m mai', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (141, N'Nu?c r?a tay Kirei Kirei huong chanh chai 250ml',14, 74000, 10, 0, N'B?t r?a tay Kirei Kirei Huong chanh Chai 250 ml v?i chi?t xu?t 100% tinh ch?t t? th?o du?c thiên nhiên cùng công th?c di?t khu?n d?c bi?t cho b?n ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (142, N'Nu?c r?a tay Lifebuoy b?o v? vu?t tr?i túi 443ml',14, 53000, 10, 0, N'Làm u?t tay. Cho m?t lu?ng v?a d? vào lòng bàn tay, xoa d?u trên tay và r?a s?ch v?i nu?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (143, N'S?a r?a tay Goodlook du?ng da huong táo 500ml',14, 45000, 10, 0, N' Du?ng da và ngan ng?a vi khu?n, gi? cho da tay luôn m?m m?i, m?n màng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (144, N'Nu?c r?a tay Aqua Vera du?ng da hoa t? dinh huong 500ml',14, 39000, 10, 0, N'Giúp làm s?ch vi khu?n và b? sung glycerin du?ng ?m m?n màng, cho da tay b?n tr? nên m?m m?i sau khi s? d?ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (145, N'Nu?c gi?t x? Act',15, 420000, 10, 0, N'Lo?i b? v?t b?n, di?t tr? vi khu?n và các tác nhân gây h?i nhu b?i b?n, b?, ve, r?p và các tác nhân gây d? ?ng, ng?t mui khác. Kh? mùi ngay c? khi phoi trong di?u ki?n ?m u?t, phoi trong nhà.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (146, N'Nu?c gi?t Essence huong floral 3.5 lít',15, 309000, 10, 0, N'Hòa tan k? nu?c gi?t Essence v?i nu?c tru?c khi cho qu?n áo vào nu?c v?i t? l? 1 n?p d?y hòa v?i 3 - 4 lít nu?c ngâm qu?n áo trong 5 phút, vò nh?, x? qua v?i nu?c. Ð?i v?i máy gi?t theo t? l? 4 - 6 n?p cho 1 l?n gi?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (147, N'B?t gi?t Tide chuyên d?ng 9kg',15, 300000, 10, 0, N'Công th?c tr?ng d?t phá cham sóc s?i v?i cho các co s? chuyên nghi?p. Ðánh bay và lo?i b? các v?t b?n ? c? tay, c? áo, v?t d?u m?, hay bùn d?t bám dính lâu ngày.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (148, N'Nu?c gi?t x? h?u co sinh h?c Giel 2 in 1',15, 300000, 10, 0, N'Chà xanh, chanh, lô g?i, h? cây li?u k?t h?p tinh ch?t huong hoa t? nhiên thom mát,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (149, N'Nu?c gi?t x? Sanzoft ',15, 259000, 10, 0, N'Gi?t s?ch qu?n áo, chan màn, v?i vóc. Phù h?p v?i m?i lo?i v?i. Luu l?i huong thom nh? nhàng quy?n ru. Gi? s?c màu qu?n áo luôn tuoi m?i', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (150, N'Nu?c gi?t Ariel Matic s?ch nhanh 3.64 lít',15, 239000, 10, 0, N'Th?m sâu vào t?ng s?i v?i d? dàng t?y s?ch các v?t b?n t?t hon g?p 2 l?n', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (151, N'B?t gi?t M? H?o 5X di?t khu?n 6kg',15, 220000, 10, 0, N'Lo?i b? các v?t b?n khó gi?t, không tái bám v?t b?n. Di?t khu?n hi?u qu?, kh? mùi m? hôi.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (152, N'Nu?c gi?t Attack huong hoa anh dào 2.4kg',15, 180000, 10, 0, N'Gi?t s?ch các v?t b?n khó gi?t nhu v?t d?u m?, d?u xe, v?t b?n t? thúc an, d? u?ng, v?t m?c, v?t b?n c? tay, c? áo cho áo qu?n sachh thom toàn di?n.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (153, N'S?a t?m h?t ON THE BODY Veilment Spa Lavender 600g',16, 316000, 10, 0, N'Nh? nhàng làm s?ch l?p t? bào ch?t trên da nh? thành ph?n t? th?c v?t, d?u nh? và an toàn giúp da ngày càng sáng m?n', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (154, N'S?a t?m tinh ch?t th?o m?c Body Shower 750ml',16, 237000, 10, 0, N'Kháng khu?n, cân b?ng ?m, b?o v? da kh?i tác h?i c?a môi tru?ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (155, N'S?a t?m Purité du?ng ?m s?a ong chúa và hoa anh dào 850ml',16, 210000, 10, 0, N'Du?ng ?m sâu t? s?a ong chúa nh? nhàng làm s?ch da, d?ng th?i cung c?p d? ?m sâu cho da', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (156, N'S?a t?m nu?c hoa Enchanteur Deluxe Charming 900g',16, 216000, 10, 0, N'Làm s?ch da, giúp làn da m?m m?n, huong thom dài lâu quy?n ru', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (157, N'S?a t?m Cathy Doll White Tofu 750ml',16, 180000, 10, 0, N'Làm s?ch b?i b?n và c?n bã du th?a tri?t d?, du?ng da m?n màng tr?ng sáng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (158, N'S?a t?m detox',16, 117000, 10, 0, N'L?y m?t lu?ng s?n ph?m v?a d? ra bông t?m ho?c mi?ng b?t bi?n dã du?c làm u?t và t?o b?t. Xoa b?t kh?p co th? và làm s?ch l?i v?i nu?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (159, N'S?a t?m b?o v? kh?i vi khu?n Lifebuoy',16, 153000, 10, 0, N' Công th?c ion b?c và b?c hà giúp b?o v? co th? kh?i vi khu?n g?p 10 l?n, cho da mát l?nh s?ng khoái', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (160, N'S?a t?m du?ng sáng Hazeline matcha',16, 140000, 10, 0, N' Du?ng da tr?ng sáng r?ng ng?i, du?ng ?m da', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (161, N'S?a t?m nu?c hoa Romano Attitude s?ch s?ng khoái 650g',16, 134000, 10, 0, N'Gi? ?m cho da s?ch d?y s?c s?ng cùng mùi huong nam tính m?nh m? mang l?i d?u ?n c?a ngu?i dàn ông l?ch lãm, d?y quy?n ru', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (162, N'D?u g?i s?ch gàu Head & Shoulders',17, 347000, 10, 0, N'Làm u?t tóc, xoa d?u g?i nh? nhàng lên tóc và da d?u, mát-xa và x? s?ch l?i v?i nu?c. G?i thêm l?n n?a n?u mu?n.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (163, N'D?u g?i Dove ph?c h?i hu t?n 1.36 lít',17, 273000, 10, 0, N'Ph?c h?i b? m?t tóc t?c thì và nuôi du?ng sâu giúp tái c?u trúc s?i tóc t? sâu bên trong, cho mái tóc b?n ch?c kho? dài lâu', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (164, N'D?u g?i Sunsilk m?m mu?t di?u k? 1.36 lít',17, 248000, 10, 0, N' Công th?c d?c quy?n v?i công ngh? khoá ?m và 5 tinh d?u t? nhiên giúp luu gi? d? ?m c?n thi?t cho mái tóc luôn m?m mu?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (165, N'D?u g?i TRESemmé Salon Detox',17, 221000, 10, 0, N' Bù d?p du?ng ch?t cho tóc, làm s?ch sâu, nuôi du?ng tóc ch?c kho? và bóng mu?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (166, N'D?u g?i Head & Shoulders Classic Clean 700ml',17,2150000, 10, 0, N'Tr? gàu, làm s?ch da d?u, giúp tóc luôn m?m mu?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (167, N'D?u g?i nu?c hoa Elastine Kiss The Rose 1000ml',17,1680000, 10, 0, N' Làm u?t tóc, l?y m?t lu?ng d?u g?i v?a d? thoa lên tóc, t?o b?t mát xa nh? nhàng d? mùi huong t?a d?u trên tóc. G?i s?ch l?i v?i nu?c.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (168, N'D?u g?i nu?c hoa X-Men For Boss Intense 650g',17, 186000, 10, 0, N'Ð? xa t?m tay tr? em. Tránh d? s?n ph?m dính vào m?t. N?u dính vào m?t hãy r?a s?ch v?i nu?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (169, N'D?u g?i TRESemmé Salon Detox g?ng và trà xanh 631ml',17, 187000, 10, 0, N'Bù d?p du?ng ch?t cho tóc, làm s?ch sâu, nuôi du?ng tóc ch?c kho? và bóng mu?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (170, N'D?u x? ph?c h?i hu t?n Tsubaki 500ml',17, 179000, 10, 0, N' H?p ch?t d?c bi?t b? sung Protein, Lipit, h?p ch?t hoa trà lên men và chi?t xu?t tinh d?u hoa trà Nh?t B?n', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (171, N'Rau D?n 4KFarm túi 200-300g',21, 4000, 5, N'S?ch nhu rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (172, N'Rau Mùng Toi 4KFarm túi 200-300g',21, 8000, 10, 0, N'S?ch nhu rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (173, N'C?i Dúng 4KFarm túi 300g',21, 9000, 10, 0, N'S?ch nhu rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (174, N'C?i xoan túi 500g',21, 27000, 10, 0, N'S?ch nhu rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (175, N'Khoai m? túi 1kg',21, 47000, 10, 0, N'S?ch nhu rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (176, N'N?m m? tr?ng h?p 150g',21, 45000, 10, 0, N'S?ch nhu rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (177, N'Xà lách Romaine th?y canh túi 300g',21, 25000, 10, 0, N'S?ch nhu rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (178, N'Bí d? h? lô túi 700g',21, 23000, 10, 0, N'S?ch nhu rau nhà', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (179, N'Táo Envy h?p 1kg',22, 242000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (180, N'Nho d? không h?t h?p 1kg',22, 186000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (181, N'Lê Nam Phi nh?p kh?u h?p 1kg (5 - 6 trái)',22, 86000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (182, N'Xoài cát Hoà L?c túi 1kg',22, 39000, 10, 0, N'd?c s?n c?a mi?n Tây b?i huong v? thom ngon, màu s?c b?t m?t, ngu?n dinh du?ng cao. Không ch? n?i ti?ng ? trong nu?c, xoài cát Hoà L?c còn là lo?i trái cây xu?t kh?u top d?u trong các lo?i hoa qu? s?ch trên th? gi?i. ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (183, N'Bo túi 1kg',22, 34000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (184, N'Lê Singo nh?p kh?u Trung Qu?c h?p 1kg',22, 58000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (185, N'Mãng c?u na túi 500g',22, 31000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (186, N'Thanh long h?ng túi 1kg',22, 44000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (187, N'M?t phúc b?n t? La Fresh hu 210g',23,65000, 10, 0, N'Phúc b?n t? (40%), du?ng mía (50%), pectin qu?, ch?t b?o qu?n (202) và nu?c (10%)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (188, N'M?t cam Preserves Golden Farm hu 450g',23, 60000, 10, 0, N'Trái cam (45 - 60%), du?ng mía RE, siro b?p, nu?c, ch?t ?n d?nh, ch?t di?u ch?nh d? acid, ch?t b?o qu?n, huong cam t?ng h?p, màu th?c ph?m t?ng h?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (189, N'M?t nho Preserves Golden Farm hu 450g',23, 70000, 10, 0, N'Trái nho (45 - 60%), du?ng mía RE, siro b?p, nu?c, ch?t ?n d?nh, ch?t di?u ch?nh d? chua, ch?t b?o qu?n, huong nho t?ng h?p, ch?t t?o màu t?ng h?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (180, N'M?t dâu t?m Golden Farm hu 450g',23, 56000, 10, 0, N'Thuong hi?u Golden Farm (Vi?t Nam)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (191, N'M?t thom Preserves Golden Farm hu 210g',23, 29000, 10, 0, N'Trái thom (45 - 60%), du?ng mía RE, siro b?p, nu?c, ch?t ?n d?nh, ch?t di?u ch?nh d? chua, ch?t b?o qu?n, huong thom t?ng h?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (192, N'L?c 3 hu m?t dâu Preserves Golden Farm 30g',23, 30000, 10, 0, N' An kèm kem, sinh t?, bánh mì, trà nóng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (193, N'M?t vi?t qu?t Preserves Golden Farm hu 210g',23, 40000, 10, 0, N' B?o qu?n ? noi khô ráo, thoáng mát. Gi? l?nh sau khi m? n?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (194, N'H?p quà Orion An h?p 703.8g',24, 135000, 10, 0, N' Bánh Choco.pie Bánh Cutas kem tr?ng Bánh Tok v? t?o bi?n Bánh Tok v? phô mai Bánh g?o nu?ng An v? t?o bi?n Bánh quy sô cô la Miz Th?c ph?m b? sung - Bánh Marine Boy v? rong bi?n tuy?t xanh K?o h?ng v? qu?t - m?t ong', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (195, N'Bánh kem tr?ng Custas h?p 470g (20 cái)',24, 99000, 10, 0, N'Tr?ng, b?t mì, du?ng, ch?t béo th?c v?t, ch?t gi? ?m, ch?t nhu hoá, s?a b?t nguyên kem, b?t lòng d? tr?ng, ch?t ?n d?nh,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (196, N'Bánh bông lan kem h?n h?p 3 mùi Solo h?p 336g',24, 71000, 10, 0, N'B?t mì, du?ng, ch?t béo th?c v?t, tr?ng gà, m?ch nha, ch?t gi? ?m, b?t b?p, ch?t nhu hoá, s?a béo,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (197, N'Bánh bông lan  Solite h?p 324g (18 cái)',24, 50000, 10, 0, N' Ð? noi khô ráo, thoáng mát, tránh ánh n?ng tr?c ti?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (198, N'Bánh bông lan Hura Deli h?p 336g (12 cái)',24,47000, 10, 0, N'B?t mì, du?ng, tr?ng, ch?t béo th?c v?t, m?ch nha, bo, s?a b?t, ch?t gi? ?m, ch?t nhu hoá, nu?c, tinh b?t b?p, ch?t t?o x?p, mu?i, sô cô la compound tr?ng, huong t?ng h?p,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (199, N'Bánh bông lan  Quasure Light h?p 126g (7 cái)',24, 29000, 10, 0, N'B?t mì, tr?ng, isomalt, ch?t béo th?c v?t, m?ch nha, ch?t gi? ?m, du?ng, s?a b?t, ch?t nhu hoá, ch?t t?o x?p, mu?i, ch?t xo hoà tan, vitamin, huong t?ng h?p,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (200, N'Bánh bông lan tròn kem v? dâu Solite h?p 36g (2 cái)',24, 8000, 10, 0, N'Ð? noi khô ráo, thoáng mát, tránh ánh n?ng tr?c ti?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (201, N'Th?t heo h?m Master T h?p 180g',33, 26000, 10, 0, N'N?c heo, nu?c, hành tây, d?u th?c v?t, mu?i, du?ng, ch?t di?u v? (621), ch?t ?n d?nh (451i) và (1422), huong th?t t?ng h?p, ch?t b?o qu?n (250)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (202, N'Th?t heo h?m 3 Bông Mai Vissan h?p 150g',33, 22000, 10, 0, N'Th?t heo 50%, du?ng, mu?i, hành, t?i, nu?c m?m,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (203, N'Th?t vai heo Picnic Shoulder Categoria Extra Tulip h?p 454g',33, 212000, 10, 0, N'An tr?c ti?p ho?c an kèm com, bánh mì, tr?n salad', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (204, N'Heo hai lát Vissan h?p 150g',33, 26000, 10, 0, N'N?c heo 55%, m? heo, nu?c, protein d?u nành, du?ng..', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (205, N'Cá ng? s?t cà ri Dongwon lon 100g',33, 33000, 10, 0, N'Dùng tr?c ti?p ho?c hâm nóng tru?c khi dùng, an nhanh sau khi m?', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (206, N'Cá kho th?t 3 Bông mai Vissan h?p 150g',33, 17000, 10, 0, N'Cá n?c (30%), th?t heo (25%), nu?c, ?t, hành, mu?i i-?t, du?ng, ch?t di?u v? (621), ch?t gi? ?m (451i, 452i), tiêu den xay, ch?t ?n d?nh (1422), nu?c m?m, ph?m màu t?ng h?p (150a)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (207, N'Bò h?m Vissan h?p 150g',33, 35000, 10, 0, N'Th?t bò 55%, mu?i, du?ng, t?i, hành...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (208, N'Cá trích s?t cà Sea Crown h?p 155g',33, 12000, 10, 0, N'Cá trích 60%, s?t cà 27%, nu?c 11.7%, mu?i 1%, ch?t di?u v? 0.3%', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (209, N'Cá mòi x?t cà chua n?p gi?t 3 Cô Gái h?p 155g (v? d?m dà)',33, 17000, 10, 0, N'Cá bi?n (cá mòi, cá ngân, cá n?c,...) 60%, x?t cà chua 35%, d?u nành, du?ng, mu?i i-?t, ch?t làm dày (1442, 1414, 412), ch?t di?u v? 621, màu th?c ph?m 160d', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (210, N'L?c 3 h?p Cá saba x?t nu?c tuong Norlake 150g',33, 102000, 10, 0, N' Ð? noi khô ráo, thoáng mát, tránh ánh n?ng tr?c ti?p', 3);

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
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (1,  N'Nguy?n Thanh Sang', N'Bình Duong', N'0971890712', N'sanglun2254@gmail.com' , 1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (2,  N'Minh Cao', N'TPHCM', N'0971890712', N'minhcd@gmail.com',  1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (3,  N'Nguy?n Thanh Sang', N'Q11', N'0971890712', N'sanglun2254_1@gmail.com',  1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (4,  N'Nguy?n Ng?c Hi?n', N'Gò V?p', N'', N'pinkwater98@gmail.com', 0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (5,  N'H?  Qu?nh Nga', N'280 ADV', N'0904877306', N'wanriky2998@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (6,  N'Lê Th? Hi?n', N'Bình Th?nh', N'0904877306', N'hiennt@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (7,  N'Lê Thanh Sang', N'Th? Ð?c', N'0904877306', N'sanglt8@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (8,  N'H? Vi?t Th?', N'Q11', N'0904877306', N'thobt@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (9,  N'Nguy?n Qu?c Hoàn', N'Q12', N'0904877306', N'hoan2008@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (19,  N'Ðinh Van Thanh', N'Bình Th?nh', N'0904877306', N'thanhpt@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (11,  N'Ngô Ð?c Anh', N'Khu CN sóng Th?n', N'0904877306', N'ducanh@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (12,  N'Nguy?n Th? Ng?c Huy?n', N' Vung Tàu', N'0904877306', N'huyen1999@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (13,  N'H? Di?u Huy?n', N'Q5', N'0904877306', N'hien7965@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (14,  N'Nguy?n Th? Uy?n Cuong', N'Th? Ð?c', N'0904877306', N'cuongcntt8@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (15,  N'Lê Van H?u', N'Bình Tân', N'0904877306', N'haucnaa@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (16,  N'Nguy?n Hoàng Anh', N'Bình Th?nh', N'0904877306', N'anhbinhthanh@gmail.com',   0, NULL);





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
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (1, 1,1,1,N'Nguy?n Thanh Sang',N'Bình Duong', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (2, 1,2,2,N'Minh Cao', N'TPHCM', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),236800,237000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (3, 2,3,3,N'Nguy?n Thanh Sang', N'Q11', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),34500,345000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (4, 3,4,4,N'Nguy?n Ng?c Hi?n', N'Gò V?p', N'',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),1135100,1135000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (5, 4,5,5,N'H?  Qu?nh Nga', N'280 ADV', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),6800,6800);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (6, 5,6,6, N'Lê Th? Hi?n', N'Bình Th?nh', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (7, 6,7,7,N'Lê Thanh Sang', N'Th? Ð?c', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),356100,256000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (8, 7,8,8,N'H? Vi?t Th?', N'Q11', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),115100,115000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (9, 8,9,9,N'Nguy?n Qu?c Hoàn', N'Q12', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),679000,679000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (10,9,10,19, N'Ðinh Van Thanh', N'Bình Th?nh', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),127800,127800);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (11,10,11,11,N'Ngô Ð?c Anh', N'Khu CN sóng Th?n', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),13500,13500);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (12,11,12,12,N'Nguy?n Th? Ng?c Huy?n', N' Vung Tàu', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),34200,34000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (13,12,13,13, N'H? Di?u Huy?n', N'Q5', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),50000,50000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (14,13,14,14,N'Nguy?n Th? Uy?n Cuong', N'Th? Ð?c', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),234000,234000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (15,2,15,15, N'Lê Van H?u', N'Bình Tân', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);


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
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (1 , 1, 1282207.6 , 2.0 , 382 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (2 , 2, 943016.5 , 3.7 , 653 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (3 , 3, 28077.6 , 4.2 , 463 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (4 , 4, 1952539.0 , 3.5 , 847 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (5 , 5 , 447250.8 , 5.0 , 990 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (6 , 6 , 67025.4 , 4.9 , 987 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (7 , 7 , 162949.2 , 2.8 , 423 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (8 , 8 , 817827.0 , 2.6 , 860 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (9 , 9 , 88087.7 , 3.4 , 475 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (10 , 20 , 266743.8 , 2.7 , 990 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (11 , 21 , 287947.8 , 3.3 , 281 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (12 , 22 , 589428.5 , 4.8 , 999 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (13 , 23 , 1556475.7 , 1.3 , 528 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (14 , 24 , 362289.1 , 1.2 , 968 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (15 , 25 , 1508319.1 , 1.3 , 371 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (16 , 26 , 1856226.2 , 1.4 , 311 );
INSERT INTO CHITIETHD ( MaHD, MaHH, DonGia, GiamGia, SoLuong) VALUES (17 , 27 , 1414540.6 , 1.4 , 262 );
I