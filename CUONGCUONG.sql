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


INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (1, N'Big C Mi?n ��ng');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (2, N'Big C �u Co');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (3, N'Big C Ph� Th?nh');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (4, N'Big C Tru?ng Chinh');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (5, N'Big C G� V?p');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (6, N'Big C Nguy?n Th? Th?p');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (7, N'Big C Th?o �i?n');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (8, N'Big C An Ph�');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (9, N'Big C An L?c');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (10, N'Big C B�nh Duong');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (11, N'Big C B?c Giang');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (12, N'Big C Quy Nhon');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (13, N'Big C L� Tr?ng T?n');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (14, N' Big C Long Bi�n');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (15, N' Big C M� Linh');



CREATE TABLE CHUCVU
(
	MaChucVu NUMBER(10) NOT NULL,
	TenChucVu NVARCHAR2(50) NOT NULL,
     	CONSTRAINT FK_Chuc_Vu PRIMARY KEY (MaChucVu)
);


INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('1', N'Nh�n Vi�n B�n H�ng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('2', N'Nh�n Vi�n Qu?n L�');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('3', N'Nh�n Vi�n Thu Ng�n');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('4', N'Nh�n Vi�n B?o V?');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('5', N'Nh�n Vi�n Tu V?n');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('6', N'Nh�n Vi�n K? To�n');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('7', N'Nh�n Vi�n Ki�m K�');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('8', N'T? Tru?ng Qu?n L�');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('9', N'T? Ph� Qu?n L�');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('10', N'T? Tru?ng B�n H�ng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('11', N'T? Ph� B�n H�ng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('12', N'T? Tru?ng Thu Ng�n');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('13', N'T? Ph� Thu Ng�n');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('14', N'T? Tru?ng An Ninh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('15', N'T? Ph� An Ninh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('16', N'K? T�an Tru?ng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('17', 'K? T�an Luong');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('18', N'Nh�n Vi�n Kho');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('19', N'Gi�m �?c Chi Nh�nh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('20', N'Qu?n L� Chi Nh�nh');



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
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (1, N'Nguy?n Qu?c Cu?ng', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','NGQL1', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee01@gmail.com',  1,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (2, N'Nguy?n Th? Kim Anh', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','NGQL2', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee02@gmail.com',2,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (3, N'Nguy?n Duy Minh', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','NGQL3', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee03@gmail.com',3,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (4, N'Nguy?n Minh Qu?c', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','NGQL4', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee04@gmail.com', 4,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (5, N'Duong Th�i Nh?t', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','NGQL5', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee05@gmail.com',5,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (6, N'V� L� Ng?c Di?p', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','NGQL6', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==','employee06@gmail.com',6,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (7, N'Duong T?n Thi�n', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','NGQL7', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==','employee07@gmail.com',7,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (8, N'Ng� �?c Anh', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu�n 11','NGQL8', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee08@gmail.com',8,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (9, N'Tr?n Van Nh?t T�n', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '121 �u?ng s? 6 P Linh T�y','NGQL9', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee09@gmail.com',9,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (10, N'�? Th? B?o Quy�n', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '291/12/5 Nguy?n Qu?c To�n P7 ','NGQL10', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee10@gmail.com', 10,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (11, N'H? Ng?c H�', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '45 Th?o �i?n Q10','NGQL11', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee11@gmail.com',11,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (12, N'Nguy?n Ho�nh Anh', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu�n 11','NGQL12', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee12@gmail.com',12,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (13, N'L� Ho�ng Mai', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '230 An Du?ng Vuong P11 A5','NGQL13', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee13@gmail.com', 13,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (14 , N' H?ng �?i ', 0 , TO_TIMESTAMP ('1953-02-05','YYYY-MM-DD'), '0669501295', N'191 �u?ng s? 96 Qu?n  B�nh Ch�nh TP.HCM. ', N'NGQL14', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee110834@gmail.com', 14, '20' );
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (15 , N'H? Kim Ho�ng ', 0 , TO_TIMESTAMP ('1975-03-18','YYYY-MM-DD'), '0294961558', N'92  Qu?n B�nh Th?nh  TP.Th? �?c. ', N'NGQL15', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee54214@gmail.com', 15, '20' );
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (16 , N'V�  H?ng �?i ', 0 , TO_TIMESTAMP ('2009-07-12','YYYY-MM-DD'), '0612905938', N'355   TP.Th? �?c. ', N'NV3897660', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee472667@gmail.com', 12 , '1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (17 , N'L� Qu?c Linh ', 1 , TO_TIMESTAMP ('1994-12-07','YYYY-MM-DD'), '0314591996', N'366  Qu?n 9 TP.Th? �?c. ', N'NV1491322', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee800428@gmail.com', 9 , '1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (18 , N'  Quang ', 1 , TO_TIMESTAMP ('1960-08-21','YYYY-MM-DD'), '0747157884', N'63  Qu?n 5 TP.Th? �?c. ', N'NV9478952', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee789615@gmail.com', 4 , '5');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (19 , N'Ho�ng Di?u H�ng ', 0 , TO_TIMESTAMP ('1961-10-13','YYYY-MM-DD'), '0612285495', N'10 Phu?ng 33 Qu?n B�nh Th?nh  TP.HCM. ', N'NV0832803', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee134753@gmail.com', 9 , '1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (20 , N'L� Uy?n �?c Anh ', 0 , TO_TIMESTAMP ('1995-05-19','YYYY-MM-DD'), '0181510599', N'861   TP.Th? �?c. ', N'NV5912480', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee239949@gmail.com', 14 , '1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (21 , N'V�  Uy?n Hoa ', 0 , TO_TIMESTAMP ('1996-04-05','YYYY-MM-DD'), '0158301314', N'71  Qu?n 5 TP.HCM. ', N'NV7855664', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==' , N'employee11[722@gmail.com', 7 , '1');


CREATE TABLE LOAI(
  MaLoai NUMBER(10) NOT NULL,
  TenLoai NVARCHAR2(30) NOT NULL,
  CONSTRAINT pk_loai PRIMARY KEY (MaLoai)
);

INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (1, N'Th?c Ph?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (2, N'Khan gi?y, gi?y v? sinh');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (3, N'M? Ph?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (4, N'Van Ph�ng Ph?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (5, N'B�n Ch?i, Kem ��nh Rang');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (6, N'Th?c Ph?m Kh�');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (7, N'Nu?c Gi?i Kh�t');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (8, N'S?a');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (9, N'B�nh K?o');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (10, N'M� G�i');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (11, N'D?u An');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (12, N'Nu?c x? v?i');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (13, N'�? gia d?ng');
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
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (24, N'B�nh');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (25, N'K?o');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (26, N'Kh?u trang');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (27, N'Qu?n �o ngu?i l?n');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (28, N'Qu?n �o tr? em');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (29, N'Thi?t b? di?n t?');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (30, N'�? c�ng ngh?');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (31, N'�? trang s?c');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (32, N'�? choi');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (33, N'Th?c an d�ng h?p');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (34, N'Th?c an c� s?n');

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
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (4, N'YAME', N'yame@gmail.com', N'32565365323', N'B�NH D??NG');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (5, N'Cp Nu?c Gi?i Kh�t Chuong Duong', N' info@cdbeco.com.vn', N'( 84-8) 3836 7518', N'577 H�ng Vuong, P. 12, Qu?n 6 ');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (6, N'C�ng Ty Tnhh Nu?c Gi?i Kh�t Delta', N'delta@gmail.com', N'0723827010', N'	S? 42, V� Ng?c Qu?n, Phu?ng 6, , Vi?t Nam');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (7, N'Th?c Ph?m ��ng H?p KTC Ki�n Giang', N'sale@ktcfood.com.vn', N' 0297.3617724', N'Khu C?ng c� T?c C?u, Ch�u Th�nh, Ki�n Giang');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (8, N'C�ng Ty Xu?t Kh?u Rau Qu? Ti?n Giang', N'info@vegetigi.com', N' (84.273) 3834 677', N' Kil�m�t s? 1977, , Ti?n Giang');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (9, N'C�ng Ty CP Th?c Ph?m Xu?t Kh?u �?ng Giao', N'sales@doveco.com.vn', N'(+84) 229 3770 353', N' Phu?ng Trung Son,Tam �i?p, Ninh B�nh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (10, N'C�ng Ty TNHH Th?c Ph?m Dinh Du?ng S�i G�n', N'yame@gmail.com', N'(84. 0650) 3737 692', N' KCN S�ng Th?n 2, Di An, B�nh Duong');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (11, N'C�ng Ty TNHH Saigon Ve Wong', N'yame@gmail.com', N'(028) 37195550, 37195554', N'1707 Qu?c L? 1A, P. An Ph� ��ng, Q. 12, Tp. H? Ch� Minh (TPHCM)');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (12, N'C�NG TY C? PH?N RAU QU? B�NH THU?N', N'hoangrauqua@fruitsandgreens.com', N'0913 932 446', N'107 �?ng Van L�nh, Phu?ng Ph� T�i, , T?nh B�nh Thu?n');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (13, N'C�NG TY C? PH?N PH�N PH?I �I?N T? JVS', N'info@jvs.vn', N'32565365323', N'24 Giai Ph�ng, P.4, Q. T�n B�nh, Tp HCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (14, N'C�ng ty TNHH Panasonic Vi?t Nam', N' customer@vn.panasonic.com', N'(+84) 024 3955 0111', N'	L� J1-J2 Khu c�ng nghi?p Thang Long,  H� N?i, Vi?t Nam.');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (15, N'C�ng ty TNHH Thaipro', N'thaipro@gmail.com', N'32565365323', N'GD2-14, Khu C�ng nghi?p Ng?c H?i, Thanh Tr�, H� N?i.');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (16, N'C�ng ty TNHH �i?n T? Samsung', N'samsung@gmail.com', N' +84-2839157310', N'S? 2, du?ng H?i Tri?u, Phu?ng B?n Ngh�, Qu?n 1, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (17, N'C�ng ty C? ph?n Th?c ph?m Thi�n Huong', N' contact@thienhuongfood.com.vn', N'028 37171449', N'S? 1 L� �?c Th?, Khu Ph? 02, T�n Th?i Hi?p, Qu?n 12, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (18, N'C�ng ty C? ph?n K? ngh? th?c ph?m Vi?t Nam ', N'vifon@vifon.com.vn', N'028 38153933', N'913 Tru?ng Chinh, P. T�y Th?nh, Q. T�n Ph�, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (19, N'C�ng ty C? ph?n Acecook Vi?t Nam', N'acecook@gmail.com', N'028 3 815 4064', N' L� II-3, �u?ng s? 11, , P.T�y Th?nh, Q. T�n Ph�, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (20, N'C�ng ty C? ph?n H�ng ti�u d�ng MaSan', N'danielle@msn.masangroup.com', N' 0286 2555 660', N'T?ng 12, t�a nh� MPlaza Saigon, Qu?n 1, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (21, N'C�ng ty TNHH S?n xu?t thuong m?i Ph�c H?o', N'info@phuchaonoodles.com.vn', N'0932.704.724', N' 347 H? Van T?ng, Huy?n C? Chi, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (22, N'C�ng ty C? ph?n c�ng ngh? th?c ph?m Ch�u �', N'micoem@micoem.vn', N'02223 714 146', N'S? 4 B?ch �?ng, P.Th?ch Thang, Q. H?i Ch�u, TP �� N?ng');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (23, N'Cty CP Th?c ph?m � Ch�us', N'info@asiafoods.vn', N'028 4450 0588 ', N'801-804 T?ng 8, Saigon Trade Center, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (24, N'C�ng ty C? ph?n luong th?c th?c ph?m Colusa', N'colusa@comifood.com', N'028 3896 6835', N'1230 Kha V?n C�n, Linh Trung, Th? �?c, TP. H? Ch� Minh');


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
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (1, N'M� AN LI?N MILIKET', 10, 1500, 10, 0, N' V?T M� - B?t m�, shortening, tinh b?t khoai m�, mu?i, du?ng, ch?t ?n d?nh (501(i), 452(i), 466), ch?t t?o x?p (500(i)), ph?m m�u t? nhi�n (160a(ii), 160c, 100(i)), b?t t�m, ch?t ch?ng oxy ho� (321). ', 21);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (2, N'M� AN LI?N H?O H?O', 10,  3500, 10, 0, N'?T M� - B?t m� (b? sung vi ch?t (k?m, s?t)), d?u th?c v?t (d?u c?, ch?t ch?ng oxy ho� (BHA (320), BHT (321))), tinh b?t, mu?i, du?ng, nu?c m?m, ch?t di?u v? (mononatri glutamat (621)), ch?t ?n d?nh (pentanatri triphosphat (451(i), ', 21);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (3 ,N'M� AN LI?N T�M CHUA CAY', 10, 2500, 10, 0, N'S?i m� 3 Mi?n du?c l�m b?t khoai t�y, b?t m�, m�u t? nhi�n, vitamin B1, B2, B3, B6, B9� tr? n�n dai, m?m h?p d?n. ', 22);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (4, N'M� AN LI?N OMAICHI B� H?M', 10 , 5000, 10, 0, N'M� Omachi X?t B� H?m sinh ra t? l�a m� v� tinh ch?t khoai t�y, h�a quy?n v?i tr?ng, t?ng s?i m� Omachi v�ng uom dai ngon nay c�n du?c d?m m�nh trong nu?c c?t t? th?t v� xuong n�n c�ng d?m d� h?p d?n ', 21);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (5 ,N'M� AN LI?N OMACHI TR?N', 10, 5000, 10, 0, N'M� Omachi x?t Spaghetti v? b� v?i s?i m� m?m, dai, du?c l�m t? khoai t�y tuoi ch?n l?c, k?t h?p v?i nu?c x?t du?c ch? bi?n t? th?t b� b?m v� c� chua tuoi l�m n�n huong v? d?c trung c?a nu?c �. ', 22);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (6, N'M� AN LI?N A ONE', 10, 3000, 10, 0, N'B?t m�, d?u shortening, mu?i, ch?t di?u v?: Monosodium glumate (E621), du?ng , b?t ti�u den, b?t ?t, d?u th?c v?t, h�nh l� s?y, kh�, huong th?t x�o t?ng h?p. ', 22);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (7, N'�O SO MI NAM D�I TAY TR?NG SMT16', 27 , 350000, 10, 0.15, N'So mi tay d�i tr?ng phong c�ch tinh ', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (11, N'�O SO MI NAM D�I TAY TR?NG SMT12', 27, 280000, 10, 0.12, N'�o so mi nam C? B? V?i L?a Th�i ch?ng nhan (CAM K?T ?NH TH?T)-D�ng �m Body H�n Qu?c d?p', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (17, N'�O SO MI NAM D�I TAY TR?NG SMT16', 27, 280000, 10, 0, N'SKU: SMT16 Category: �o So Mi Nam Tags: �o so mi, �o so mi den, �o so mi tr?ng', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (18, N'�O SO MI NAM D�I TAY TR?NG SMT0001', 27,  300000, 10, 0.2, N'Mua ngay �o so mi nam V?i L?a Th�i Tr?ng ch?ng nhan SMT001-D�ng �m Body H�n qu?c ch�nh h�ng ', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (19, N'�O SO MI NAM D�I TAY S?C �EN TR?NG SMT0004', 27, 320000, 10, 0.2, N'�o so mi s?c den tim den- UNISEX cao c?p gi� r?. So mi nam d�i tay m�u tr?ng s�nh di?u tho�ng m�t kh�ng nhan.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (20, N'�O SO MI NAM D�I TAY S?C SMT0006',27, 300000, 10, 0.2, N'�o so mi nam trung ni�n d?p, l?ch s? v?i ch?t li?u cao c?p : cotton, s?i tre, nano. �? size t? 38-43.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (21, N'�O SO MI NAM D�I TAY S?C X�M SMT0018', 27,  300000, 10, 0.2, N'�o so mi nam d�i tay, �o so mi nam c�ng s? h?a ti?t k? s?c c� t�i ng?c, Ki?u so mi tho�ng m�t b?n d?p sang', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (22, N'�O SO MI NAM D�I TAY  XANH S?C DEN  SMT0026',27, 300000, 10, 0.2, N'�o so mi nam d�i tay thuong hi?u Anton k? s?c xanh duong ', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (23, N'�O SO MI NAM  NG?N TAY SMT0001', 27,  300000, 10, 0.2, N'�o so mi nam tay ng?n cho qu� �ng tr? trung. �o so mi c?c tay l?ch s? m� v?n nang d?ng th? hi?n b?n linh d�n �ng d�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (24, N'�O SO MI NAM  NG?N TAY H?A TI?T SMT0065', 27, 300000, 10, 0.2, N'C�c m?u �o so mi nam ng?n tay cao c?p, gi� c? h?p l�.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (25, N'�O SO MI NAM  NG?N TAY SMT0069', 27,  300000, 10, 0.2, N'�o so mi nam tay ng?n cho qu� �ng tr? trung. �o so mi c?c tay l?ch s? m� v?n nang d?ng th? hi?n b?n linh d�n �ng d�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (26, N'�O SO MI NAM  NG?N TAY SMT0005', 27,  110000, 10, 0.2, N'�o so mi nam tay ng?n cho qu� �ng tr? trung. �o so mi c?c tay l?ch s? m� v?n nang d?ng th? hi?n b?n linh d�n �ng d�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (27, N'�O SO MI NAM  NG?N TAY SMT0001', 27, 110000, 10, 0.2, N'�o so mi nam tay ng?n cho qu� �ng tr? trung. �o so mi c?c tay l?ch s? m� v?n nang d?ng th? hi?n b?n linh d�n �ng d�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (28, N'�O SO MI NAM  NG?N TAY SMT0010',27,  110000, 10, 0.2, N'�o so mi nam tay ng?n cho qu� �ng tr? trung. �o so mi c?c tay l?ch s? m� v?n nang d?ng th? hi?n b?n linh d�n �ng d�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (29, N'�O SO MI NAM  NG?N TAY SMT0041', 27, 110000, 10, 0.2, N'�o so mi nam tay ng?n cho qu� �ng tr? trung. �o so mi c?c tay l?ch s? m� v?n nang d?ng th? hi?n b?n linh d�n �ng d�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (30, N'�O SO MI NAM  NG?N TAY   SMT0073',27,  110000, 10, 0.2, N'�o so mi nam tay ng?n cho qu� �ng tr? trung. �o so mi c?c tay l?ch s? m� v?n nang d?ng th? hi?n b?n linh d�n �ng d�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (31, N'D?u an Neptune',11, 45000, 10, 0.2, N'D?u an Neptune 1:1:1 l� lo?i d?u th?c v?t th? h? m?i t?t cho s?c kh?e c?a c�ng ty d?u th?c v?t C�i L�n. ��y cung l� lo?i d?u th?c v?t duy nh?t tr�n th? tru?ng du?c s?n xu?t t? h?n h?p d?u g?o, d?u h?t c?i, d?u d?u n�nh v� d?u Olein, kh�ng ch?a a-x�t b�o c?u h�nh trans, kh�ng cholesterol r?t t?t cho s?c kh?e tim m?ch�', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (32, N'D?u an hu?ng duong Nga',11, 52000, 10, 0.2, N'D?u an hu?ng duong Nga du?c l�m t? 100% h?t hu?ng duong nguy�n ch?t, du?c s?n xu?t d?a tr�n c�ng ngh? �p l?nh kh�ng tinh ch?. V� v?y, gi? du?c d?y d? c�c th�nh ph?n vitamin v� kho�ng ch?t c� l?i cho s?c kh?e nhu: vitamin A, B,E v� c�c axit kh�ng b�o h�a da (Omega 3, 6, 9) v� c� m�u v�ng t? nhi�n.i', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (33, N'D?u an Meizan',11,  41000, 10, 0.2, N'D?u an Meizan cung l� m?t s? l?a ch?n th�ng minh cho c�c b� n?i tr?. Meizan c� da d?ng c�c lo?i d?u an d?u c� l?i cho s?c kh?e nhu: D?u th?c v?t Meizan, D?u d?u n�nh Meizan, Bo th?c v?t Meizan, D?u m� thom h?o h?ng Meizan. ', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (34, N'D?u an Simply',11, 49000, 10, 0.2, N'd?u d?u n�nh Simply du?c l�m t? 100% d?u n�nh nguy�n ch?t, l� m?t trong nh?ng lo?i d?u th?c v?t du?c s? d?ng r?ng r�i nh?t tr�n th? gi?i b?i nh?ng l?i �ch s?c kh?e, th�nh ph?n v� ch?t ch?ng oxi h�a v?n c�n luu l?i trong d?u ngay c? sau khi du?c tinh luy?n.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (35, N' D?u an olive',11, 221000, 10, 0.2, N'l� m?t ngu?i m? d?m dang th� kh�ng th? kh�ng quan t�m d?n s?c kh?e c?a con c�i d?c bi?t l� tr? nh? t? 3 - 5 tu?i. ��y l� giai do?n ph�t tri?n c?a tr?. Tr? c?n nh?ng th?c an d?y d? dinh du?ng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (36, N'D?u an C�i L�n',11,  28000, 10, 0.2, N'D?u an C�i L�n l� m?t thuong hi?u d?u an n?i ti?ng, l�u d?i mang thuong hi?u Vi?t Nam. D?u an h?o h?ng C�i L�n du?c s?n xu?t theo quy tr�nh hi?n d?i, h?p v? sinh an to�n th?c ph?m. Nh?ng nguy�n li?u d? tinh ch? du?c ch?n l?c m?t c�ch s�t sao. ', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (37, N'D?u an Tu?ng An',11,  95000, 10, 0.2, N'H�ng d?u an Tu?ng An v?i kinh nghi?m s?n xu?t g?n 35 nam c�ng nh?ng thi?t b? m�y m�c, ch? bi?n hi?n d?i, ng�y c�ng du?c c?i ti?n v� n�ng c?p. �?i v?i Tu?ng An, m?c ti�u quan tr?ng nh?t l� kh�ng ng?ng c?i ti?n n�ng cao ch?t lu?ng v� an to�n th?c ph?m, d�p ?ng t?t nh?t m?i y�u c?u c?a kh�ch h�ng.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (38, N'D?u an cao c?p Ranee ',11, 24000, 10, 0.2, N'D?u an cao c?p Ranee 100% t? c� du?c s?n xu?t v?i d�y chuy?n c�ng ngh? v?t l� tinh luy?n t? Ch�u �u, gi�p x? l� m�i t?i uu nhung v?n luu gi? tron v?n c�c du?ng ch?t t? nhi�n t? c� nhu omega 3-6-9, DHA/EPA v� Vitamin E', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (39, N'D?u an Marvela',11,  35000, 10, 0.2, N'D?u an Marvela l� thuong hi?u n?i ti?ng ? Vi?t Nam. �u?c m?i ngu?i tin d�ng v� s? d?ng su?t nh?ng nam qua. Cung gi?ng c�c thuong hi?u kh�c, Marvela cho ra d?i nhi?u lo?i d?u an v?i nh?ng nguy�n li?u, th�nh ph?n kh�c nhau. K�o theo d� l� nh?ng c�ng d?ng kh�c nhau.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (40, N'B? M? ph?m du?ng tr?ng da Ohui White Extreme',3, 110000, 10, 0.2, N'V? t?ng quan b? m? ph?m H�n Qu?c Ohui Extreme White l� d�ng s?n ph?m du?ng tr?ng da cao c?p du?c Ohui ph�t tri?n nh?m gi�p ph�i d?p nu�i du?ng, t�i t?o v? tuoi s�ng cho l�n da, mong mu?n dem d?n cho ph�i d?p m?t s? thay d?i d?t ph�, th� v?, l�n da d?p, s�ng trong kh�ng t� v?t c�ng t�m tr?ng vui v? v� cu?c s?ng h?nh ph�c.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (41, N'Kem ch?ng n?ng Ohui Black',3,  310000, 10, 0.2, N'Ohui Perfect Sun Black c� ch? s? ch?ng n?ng ? m?c ph� h?p (SPF50+/PA++++) gi�p ch?ng n?ng hi?u qu?. Ngo�i t�c d?ng c?a kem ch?ng n?ng th� s?n ph?m n�y c�n gi�p du?ng s�ng da v� c?p ?m hi?u qu?. ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (42, N'Kem du?ng Innisfree balancing cream',3,  310000, 10, 0.2, N'��y du?c xem nhu d�ng s?n ph?m du?ng ch? d?o v� du?c d�nh gi� cao nh?t c?a h�ng. Green tea balancing cream � Kem du?ng ?m c�n b?ng V?i chi?t xu?t t? tr� xanh s? cung c?p, b? sung du?ng ch?t cho da m?t.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (43, N'M?t n? ng? Laneige Water Sleeping Mask',3,  110000, 10, 0.2, N'S?n ph?m c� d?ng gel l?ng m?n ch?a �nu?c t? bang tuy?t tan�, tinh ch?t t? qu? mo Hunza v� tinh ch?t h?t d? th?m nhanh v�o da v� gi�p cung c?p dinh du?ng cho t? b�o da cung nhu l�m hydrat h�a l�n da d? gi? ?m v� thay d?i s?c t? da d? l�m tr?ng.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (44, N'Ph?n nu?c du?ng tr?ng Laneige BB',3,  310000, 10, 0.2, N'Laneige whitening l� m?t s?n ph?m 5 trong 1 mang t�nh �c�ch m?ng� c?a h�ng trong c�ng cu?c l�m d?p, v?i d? che ph? ch?ng n?ng SPF 50, lu?ng nu?c kho�ng t?i uu, hi?u ch?nh m�u s?c t?t c? trong m?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (45, N'Son m�i Mamonde Highlight Lip Tint',3,  110000, 10, 0.2, N'Th?i son tint Mamonde n�y c� thi?t k? c?c don gi?n nhung d�ng y�u v?i th�n son nh?a c� m�u tuong ?ng v?i m�u son b�n trong.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (46, N'M? ph?m Sulwhasoo',3, 110000, 10, 0.2, N'Sulwhasoo du?c d�n nh?n nhi?t t�nh nh? c�c s?n ph?m ch?t lu?ng cao, du?c nghi�n c?u v� chi?t xu?t t? hon 3,000 lo?i th?o m?c v� c�c lo?i du?c li?u qu�.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (47, N'S?a r?a m?t Herb Day 365',3,  300000, 10, 0.2, N'M?t trong nh?ng s?n ph?m n?i b?t nh?t c?a h�ng ch�nh l� d�ng s?a r?a m?t t?o b?t Herb Day 365 Cleansing Foam TheFaceShop, d�ng s?n ph?m g?m 6 m�i huong tuoi tr? c� th? d�ng nhu m?t lo?i kem t?y trang d�ng sau khi trang di?m', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (48, N'Son Etude house dear darling tint',3, 110000, 10, 0.2, N'��y l� m?t s?n ph?m dang l�m mua l�m gi� t?i th? tru?ng Vi?t Nam th?i gian g?n d�y b?i d? �cute� v� d?i c?a thi?t k? h�nh que kem b� b� xinh xinh.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (49, N'M?t n? du?ng den d�u skinfood',3,  110000, 10, 0.2, N'L� m?t h�ng m? ph?m H�n Qu?c ch?t lu?ng da d?ng c�c s?n ph?m t? cham s�c da d?n trang di?m gi� th�nh h?p l� v� d�ng d? th? khi b?n mu?n t�m m?t h�ng m? ph?m b�nh d�n ch?t lu?ng.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (50, N'Me Cay R?ng Con',6,  51000, 10, 0.2, N'ME X� MU�I CHUA CAY v?a l� m�n an v?t h?p d?n v� l? mi?ng, v? chua c?a me, m?n, ng?t c?a du?ng v� mu?i k?t h?p v?i m?t �t cay c?a ?t t?o n�n m?t s?n ph?m r?t d?c bi?t', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (51, N'�?u Ph?ng Nu?c C?t D?a',6, 51000, 10, 0.2, N'Kh�ch an v�o s? c?m nh?n du?c d? gi�n, b�o, d? x?p. S?n ph?m ho�n to�n kh�ng th�m ch?t b?o qu?n, gi? nguy�n huong v? t? nhi�n c?a s?n ph?m. D�ng du?c cho ngu?i an chay.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (52 ,N'�?u H� Lan S?y Mu?i',6,  51000, 10, 0.2, N'�?u H� Lan S?y v? ph� mai an v�o v?a x?p, v?a gi�n, v?a c� d? b�o c?a ph� mai, h?t d?u H� Lan kh�ng c?ng, kh�ng chai.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (53, N' t�o d? t�n cuong',6, 110000, 10, 0.2, N'T�O �? C?A NGU?I H�N QU?C kh�c h?n nh?ng lo?i t�o d? du?c tr?ng ? Trung Qu?c hay noi kh�c v� tr�i to, ng?t, h?t r?t nh?, thom', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (54, N'H?t macca ',6,  290000, 10, 0.2, N'C� xu?t x? t?i ch�u �c, khu v?c c� kh� h?u nhi?t d?i v� c?n nhi?t d?i c�ng v?i d?c trung noi d�y c�c lo?i kho�ng s?n phong ph� n�n h�m lu?ng dinh du?ng c� trong h?t m?c ca t? d� cung x?p h?ng cao nh?t trong c�c lo?i h?t dinh du?ng', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (55, N'Qu? �c ch� m? d� s?y ch�n',6,  110000, 10, 0.2, N'Qu? �c ch� c� t�n ti?ng Anh l� Walnuts hay t�n kh�c qu? H? ��o (Juglans regiaL) l� m?t h? th?c v?t c� hoa bao g?m c�c lo?i c�y th�n g? trong b? D? (Fagales). Lo?i qu? n�y c� hon 20 lo?i kh�c nhau v� du?c tr?ng ch? y?u ? California walnuts � M? (USA) ', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (56, N'H?T CHIA T�M NH?P KH?U �C',6, 69000, 10, 0.2, N'H?t Chia hay c�n g?i l� Salvia l� th?c ph?m ch?a nhi?u ch?t dinh du?ng hi?m c� trong th? gi?i th?c ph?m, d?c bi?t l� nh?ng vi ch?t m� ch�ng ta kh� c� th? b? sung du?c b?ng thu?c b? ', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (57, N'1kg h?t sen kh�',6,  169000, 10, 0.2, N'H?n s? d?ng: 6 th�ng.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (58, N' Kh� c� ch? v�ng ',6,  210000, 10, 0.2, N'C� ch? v�ng l� m?t lo?i c� b? du?ng v� thom ngon v� trong th?t c� c� ch?a r?t nhi?u protein, lipid v� c?c k? nhi?u omega 3 t?t cho tim m?ch v� m?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (59, N'Kh� c� s?c Vi?t H�',6,  100000, 10, 0.2, N'Kh� c� s?c ngon ? ch? b?ng kh� c� r?t b�o v� thom. Nhung cung ch�nh v� b?ng c� r?t ngon n�n khi ch? bi?n c?n l�m s?ch m�i tanh v� khi phoi ph?i b?o qu?n c?n th?n kh?i ru?i d?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (60, N'Kh� c� lu?i tr�u Song Phuong',6,  450000, 10, 0.2, N'C� lu?i tr�u l� m?t lo�i c� s?ch, �t xuong, th?t ng?t, l�nh t�nh v� s?ng trong thi�n nhi�n. Kh� c� lu?i tr�u du?c d�nh gi� l� kh� ngon nh?t tuy d?m b?c nhung d?c d�o nh? th?t ng?t, m?m v� m�i v? thom ngon kh�ng ch� du?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (61, N'Kh� c� com s?a Phong Phuong',6,  110000, 10, 0.2, N'C� com s?a l� m?t lo?i c� com r?t nh?, d�i ch? kho?ng 3 ph�n, th?t trong su?t. C� com s?a c� huong v? r?t d?m d�, th?t c� ngon ng?t v� c?c k? gi�u ch?t dinh du?ng, kh�ng h? thua k�m c�c lo?i c� kh�c.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (62, N'Kh� c� d� Song Phuong',6, 110000, 10, 0.2, N'Kh� c� d� nhi?u th?t v� �t xuong hon h?n c�c lo?i c� kh�c. C� d� ngon ? ch? ph?n th�n sau c?a c� c?c k? b�o v� nhi?u m?. Th?t c� kh� l� ng?t, b�i b�i v� v?i di?m nh?n l� v? b�o ? ph?n du�i l�m ch�ng ta an ho�i kh�ng th?y ng�n.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (63, N'Gi?y v? sinh CAT Premium',2, 20000, 10, 0, N'10 cu?n/ t�i, 3 l?p. Noi s?n xu?t:Vi?t Nam, B?o h�nh:5 Nam', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (64, N'GI?Y V? SINH CU?N L?N CHUY�N CHO KS, T�A NH�, VP, NH� H�NG',2, 24500, 10, 0, N'Ph�n h?y trong nu?c nhanh gi?m thi?u nguy cot?c ngh?n. Dai v?a ph?i, hoi b�ng x?p, �m nh?', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (65, N'GI?Y CU?N D�I TH?M H�T D?U AN',2, 17000, 10, 0, N'Th�nh ph?n: 100% B?t gi?y.�?c di?m: Kh�ng l?n gi?y t�i ch?, kh�ng h�a ch?t d?c h?i', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (66, N'B? khan s?a Mollis 100% bamboo ',2, 209000, 10, 0, N'�u?c l�m t? 100% s?i bamboo, c?c k? m?m m?i v� tho�ng m�t, gi�p cho m? v? sinh m?t, mui cho em b� m� kh�ng s? kh�, r�t b�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (67, N'Khan l?nh Wuna kh�ng m�i ',2, 180000, 10, 0, N'Th�nh ph?n V?i kh�ng d?t, nu?c tinh khi?t R.O, Quaternary Ammonium Salts, Citric Acid, huong thom', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (68, N'Khan gi?y u?t d?ng n�n Nikkori 50 c�i',2, 85000, 10, 0, N'Khan gi?y n�n m?m m?i, h?p v? sinh, ti�u h?y nhanh, kh�ng ?nh hu?ng d?n m�i tru?ng, an to�n m?i lo?i da. �?c bi?t l�n da tr? so sinh', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (69, N'Khan u?t Hensley kh�ng m�i ',2, 48500, 10, 0, N'Kh�ng c� ch?t tang tr?ng quang h?c, kh�ng ch?a c?n, kh�ng ch?t t?o m�u, kh�ng ho� ch?t b?o qu?n, kh�ng huong li?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (70, N'Khan u?t em b� Bobby',2,39000, 10, 0, N'Cham s�c v? sinh da, th�ch h?p khi thay t� cho b�, tang cu?ng kh? nang kh�ng khu?n nh? c�ng ngh? Nano B?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (81, N'B�n ch?i cho b� t? 4 tu?i Splat',5, 89000, 10, 0, N'L�ng b�n ch?i l�m b?ng v?t li?u cao c?p ch?a ion b?c ngan ng?a s? ph�t tri?n c?a vi khu?n v� l�m s?ch hi?u qu? Kh�ng ch?a', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (82, N'B? 3 b�n ch?i Oral-B Pro-Health',5, 80000, 10, 0, N'Ch?i rang theo hu?ng d?n c?a nha si. R?a s?ch b�n ch?i sau khi s? d?ng. C?m th?ng v� gi? noi kh� r�o', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (83, N'B? 2 b�n ch?i Oral-Clean Spiral Carbon Gold',5, 69000, 10, 0, N' Ch?i rang theo hu?ng d?n c?a nha si. R?a s?ch b�n ch?i sau khi s? d?ng. C?m th?ng v� gi? noi kh� r�o', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (84, N'B�n ch?i d�nh rang ngu?i l?n Bamboo Salt',5, 49000, 10, 0, N'B�n ch?i d�nh rang ngu?i l?n Bamboo Salt mu?i h?ng Himalaya l�ng to m?m m?i HSD hon 3 nam', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (85, N'Kem d�nh rang Splat Special th?o m?c',5, 127000, 10, 0, N'N�n ch?i rang 2 l?n/ng�y sau khi an. S? d?ng trong v�ng 12 th�ng sau khi m? n?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (86, N'Kem d�nh rang Splat Special than ho?t t�nh',5, 127000, 10, 0.5, N'N�n ch?i rang 2 l?n/ng�y sau khi an. S? d?ng trong v�ng 12 th�ng sau khi m? n?p', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (87, N'Kem d�nh rang Splat ph?c h?i men & tr?ng rang',5, 84000, 10, 0, N' N�n ch?i rang 2 l?n/ng�y sau khi an. S? d?ng trong v�ng 12 th�ng sau khi m? n?p', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (88, N'Kem d�nh rang Colgate Sensitive Pro Relief Complete',5, 69000, 10, 0, N' Gi?m � bu?t nhanh ch�ng v� l�u d�i, ng?a s�u rang, cham s�c nu?u, gi�p tr?ng rang, gi?m m?ng b�m, b?o v? men rang, hoi th? thom m�t', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (89, N'Kem d�nh rang Perioe Pumping huong b?c h�',5, 169000, 10, 0, N'Tr? du?i 2-6 tu?i ch? s? d?ng m?t lu?ng kem nh? b?ng h?t d?u v� c?n s? hu?ng d?n c?a ngu?i l?n. Tr? em du?i 2 tu?i c?n c� s? tu v?n c?a nha si ho?c b�c si', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (90, N'B?t d�nh tr?ng rang Eucryl Toothpowder',5 , 55000, 10, 0, N'Lo?i b? m?ng b�m b?n, gi�p tr?ng rang, ngan h�i mi?ng, rang s�ng b�ng, ch?c kh?e', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (91, N'Nu?c ng?t c� ga Coca Cola Zero chai 390ml',7, 6500, 10, 0, N'Nu?c b�o h�a CO2, m�u t? nhi�n, ch?t di?u ch?nh d? acid, ch?t t?o ng?t t?ng h?p, ch?t b?o qu?n, huong cola t? nhi�n v� caffeine.', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (92, N'24 lon nu?c tang l?c Monster Energy Ultra 355ml',7, 696000, 10, 0, N'L?c nh? tru?c khi u?ng, d�ng ngay sau khi m? n?p. Ngon hon khi u?ng l?nh.', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (93, N'Tr� xanh huong chanh C2 Plus Immunity �t du?ng 500ml',7, 12000, 10, 0, N'�? noi kh� r�o, tho�ng m�t, tr�nh �nh s�ng tr?c ti?p ho?c noi c� nhi?t d? cao.', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (94, N'nu?c ng?t Mirinda v? cam 330ml',7, 8000, 10, 0, N'Nu?c b�o ho� CO2, du?ng m�a, du?ng HFCS, ch?t di?u ch?nh d? acid, tinh b?t bi?n t�nh, ch?t b?o qu?n, ch?t nhu ho�, huong cam t? nhi�n, m�u t?ng h?p', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (95, N'nu?c tang l?c Wake Up 247 v? c� ph� 330ml',7, 7800, 10, 0, N' Nu?c, du?ng, C02 th?c ph?m, m�u t?ng h?p caramen, huong vani, huong c� ph�, caffeine, taurine, inositol, vitamin B3, vitamin B6, ch?t di?u ch?nh d? axit, mu?i', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (96, N'tang l?c Compact v? cherry 330ml',7, 9100, 10, 0, N'Nu?c, du?ng, glucose syrup, ch?t di?u ch?nh d? acid (330, 500ii), ch?t t?o kh� carbonic (290), huong li?u (huong m?t hoa t? nhi�n, huong cherry t?ng h?p, gi?ng t? nhi�n)', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (97, N'tr� xanh matcha Tea Plus 455ml',7, 82000, 10, 0, N' �? noi kh� r�o, tho�ng m�t, tr�nh �nh s�ng tr?c ti?p ho?c noi c� nhi?t d? cao.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (98, N'Revive chanh mu?i 390ml',7, 78000, 10, 0, N'L?c nh? tru?c khi u?ng, d�ng ngay sau khi m? n?p. Ngon hon khi u?ng l?nh.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (99, N'C� ph� den TNI King Coffee Espresso 250g ( 100 g�i x 2.5g )',7, 295000, 10, 0, N'U?NG N�NG d�ng 1 g�i pha v?i 70ml nu?c n�ng. C� th? th�m s?a ho?c du?ng tu? s? th�ch', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (100, N'Strongbow d�u den 330ml',7, 21000, 10, 0, N' S?n ph?m d�nh cho ngu?i tr�n 18 tu?i v� kh�ng d�nh cho ph? n? mang thai. Thu?ng th?c c� tr�ch nhi?m, d� u?ng d? u?ng c� c?n th� kh�ng l�i xe!', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (101, N'bia Heineken 0.0% d? c?n 330ml',7, 15000, 10, 0, N' S?n ph?m d�nh cho ngu?i tr�n 18 tu?i v� kh�ng d�nh cho ph? n? mang thai. Thu?ng th?c c� tr�ch nhi?m, d� u?ng d? u?ng c� c?n th� kh�ng l�i xe!', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (102, N'bia Tiger Crystal 330ml',7, 11000, 10, 0, N'Bia Tiger Crystal 330ml kh�ng ch? d?t d?n ch?t lu?ng r?ng danh tr�n to�n th? gi?i m� c�n mang d?n c?m gi�c th?t s?ng kho�i v� r?t d? u?ng cho ngu?i d�ng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (103, N'chai tr� s?a Kirin Tea Break 345ml',7, 10000, 10, 0, N'Tr� s?a Tea Break chai 345ml v?i nguy�n li?u t? nhi�n k?t h?p v?i nhau t?o n�n huong v? c?a s?a r?t d?c trung.  kh�ng qu� b�o gi�p ngu?i d�ng c?m th?y ngon mi?ng kh�ng b? ng?y.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (104, N'h?p s?a tuoi nguy�n ch?t kh�ng du?ng Vinamilk 100% Organic 1 l�t',8, 52000, 10, 0, N'S?a tuoi ti?t tr�ng Vinamilk c� huong v? s?a tuoi 100% h?u co thom ngon, h?p d?n.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (105, N'h?p s?a tuoi ti?t tr�ng du?ng den Nutimilk 1 l�t',8, 38000, 10, 0, N'S?a b� tuoi, du?ng tinh luy?n, si-r�, du?ng den, ch?t ?n d?nh, huong li?u t?ng h?p d�nh cho th?c ph?m,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (106, N's?a tuoi ti?t tr�ng huong d�u TH true MILK 180ml',8, 32000, 10, 0, N'thom ngon, d? u?ng, du?c l�m ho�n to�n t? ngu?n s?a tuoi s?ch. Trong s?a ch?a nhi?u du?ng ch?t thi?t y?u t?t cho s?c kho? nhu Vitamin A, D, B1, B2, Canxi, k?m...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (107, N'Th�ng 12 h?p s?a tuoi ti?t tr�ng TH true MILK Organic',8, 378000, 10, 0, N'S?n ph?m h?u co kh�ng ch?a ch?t b?o qu?n, r?t an to�n cho s?c kho?, trong s?a c�n ch?a nhi?u du?ng ch?t thi?t y?u cung nhu huong v? thom ngon, b�o ng?y d?c trung.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (108, N'Th�ng 12 h?p s?a d?u den �c ch� h?nh nh�n Sahmyook',8, 950000, 10, 0, N' Nu?c d?u den, b?t d?u n�nh, du?ng tr?ng, siro ng� fructose cao, ch?t nhu h�a, b?t qu? �c ch�, b?t d?u den, b?t h?nh nh�n, mu?i, bo h?t th�ng, d?u th?c v?t.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (109, N's?a d?u n�nh h?nh nh�n Vinamilk 180ml',8, 12000, 10, 0, N'Ph� h?p D�ng cho tr? t? 4 tu?i tr? l�n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (110, N'Th�ng 16 h?p s?a d?u n�nh v? h?nh nh�n v� �c ch� Vegemil',8, 216000, 10, 0, N'S?a d?u n�nh (nu?c tinh khi?t, d?u n�nh 7%), du?ng, maltooligosacarit, xi r� ng� h�m lu?ng cao fructose, nu?c, qu? �c ch� v� h?n h?p c�c lo?i h?t ', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (111, N'Ng�i sao Phuong Nam xanh l� ',8, 60000, 10, 0, N'Th�ch h?p Pha c� ph�, xay sinh t?, l�m s?a chua, b�nh flan...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (112, N'Kem d?c c� du?ng DeliPure lon 1kg',8, 35000, 10, 0, N'Pha m?t lu?ng creamer theo kh?u v? s?n ph?m v?i kho?ng 60ml nu?c dun s�i, sau d� d? ngu?i r?i u?ng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (113, N'S?a d?c c� du?ng �ng Th? tr?ng nh�n v�ng lon 380g',8, 29000, 10, 0, N'Pha m?t ph?n s?a v?i 3 ph?n nu?c ?m d? u?ng ho?c pha c�ng c� ph�, an c�ng b�nh m�,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (114, N'Th�ng 24 chai s?a chua u?ng nha dam Vinamilk Yomilk 150ml',8, 139000, 10, 0, N'Th�nh ph?n Nu?c, du?ng tinh luy?n, ch?t b�o s?a,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (115, N'L?c 8 h?p s?a l�a m?ch Milo Active Go 115ml',8, 34000, 10, 0, N'Nu?c, s?a - milk 35% nu?c, s?a b?t, ch?t b�o s?a, b?t whey t? s?a), PROTOMALT 3,3% (chi?t xu?t t? m?m l�a m?ch - extract from malted barley), du?ng 33%),', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (116, N'S?a b?t Ensure Gold l�a m?ch �t ng?t h?p 850g',8, 732000, 10, 0, N'�? d�p ?ng nhu c?u dinh du?ng cho ngu?i l?n tu?i, h? tr? tang cu?ng s?c kh?e, th? ch?t v� ch?t lu?ng cu?c s?ng', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (117, N'S?a b?t Frisomum Gold huong cam lon 900g',8, 561000, 10, 0, N'Ph� h?p Ph? n? mang thai v� cho con b�', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (118, N'Rong bi?n h?u co an li?n cho b� Alvins h?p 20g',9, 118000, 10, 0, N'Th�nh ph?n Rong bi?n (ch?ng nh?n h?u co H�n Qu?c), d?u Canola, mu?i bi?n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (119, N'Snack khoai t�y Slide v? ph� mai lon 160g',9, 48000, 10, 0, N'Tha`nh ph�`n V�?y khoai t�y (70%), b?t gia vi? ph� mai, tinh b?t khoai t�y, tinh b?t khoa m�i ', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (110, N'Snack que nh�n c� ph� moka v� s?a d?a Akiko Oishi lon 240g',9, 46000, 10, 0, N'Kh�ng d�ng cho ngu?i d? ?ng v?i s?a, tr?ng, d?u n�nh, l�a m� t? b?t gia v?. S?n ph?m c� th? ch?a c� t? s?n ph?m kh�c, s?n xu?t tr�n c�ng d�y chuy?n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (111, N'Snack da c� v? ?t xanh Pati g�i 50g',9, 41000, 10, 0, N' Da c� 85%, gia v? ?t xanh (maltodextrin, du?ng, dextrose, mu?i, ch?t di?u v?, protein th?c v?t thu? ph�n, gia v? - t?i, ?t c?a g�, th� l�, b?t t?i, b?t gi?m, huong t? nhi�n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (112, N'Snack que nh�n s?a v� ph� mai Akiko Oishi lon 240g',9, 39000, 10, 0, N'Kh�ng d�ng cho ngu?i d? ?ng v?i s?a, tr?ng, d?u n�nh, l�a m� t? b?t gia v?. S?n ph?m c� th? ch?a c� t? s?n ph?m kh�c, s?n xu?t tr�n c�ng d�y chuy?n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (113, N'B�nh quy bo Danisa h?p 681g',9, 191000, 10, 0, N' B?t l�a m�, du?ng, bo (18.67%), d?u th?c v?t (ch?a ch?t ch?ng oxy h�a tocopherol), glucose syrup, tr?ng, d?a s?y, nho kho, b?t s?a t�ch b�o, mu?i, ch?t t?o x?p E503, huong vani t?ng h?p.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (114, N'B�nh quy bo th?p c?m LU h?p 708g',9, 235000, 10, 0, N'B?t m�, du?ng, bo Ph�p (12%), shortening, nh�n s�c�la h?n h?p (du?ng, ch?t b�o th?c v?t hydro h�a, b?t cacao, dextrose, ch?t nhu h�a (322(i)), huong th?c ph?m t?ng h?p, mu?i)', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (115, N'B�nh quy ngu c?c kh�ng du?ng Vitamia g�i 330g',9, 112000, 10, 0, N'B?t m� (35,4%), ngu c?c d?ng b?t v� v?y (24,6%), ch?t t?o ng?t t?ng h?p, d?u hu?ng duong, bo, mu?i, ch?t t?o x?p,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (116, N'B�nh g?u 3 v? Assortment Meiji Hello Panda ',9, 108000, 10, 0, N' S?n ph?m c� ch?a b?t m�, l�a m?ch (ngu c?c ch?a gluten), s?a v� d?u n�nh, c� th? ch?a h?t m�.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (117, N'K?o Ferrero Confetteria Raffaello ',9, 180000, 10, 0, N' D?a kh� 25.5%, ch?t b�o th?c v?t, du?ng, h?t h?nh nh�n nguy�n h?t 8%, s?a b?t g?y, whey b?t, b?t m�, tinh b?t s?n, huong li?u t? nhi�n v� gi?ng t? nhi�n, ch?t nhu ho�, ch?t t?o x?p', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (118, N'B�nh g?o v? ng?t Richy g�i 315g',9, 40000, 10, 0, N'G?o thom, d?u th?c v?t, du?ng tinh luy?n, tinh b?t khoai t�y, mu?i, gelatin, monosodium glutamate, ch?t di?u v?', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (119, N'B�nh que Glico Pocky d�u v� socola',9, 100000, 10, 0, N'Th�nh ph?n B?t m�, du?ng, d?u th?c v?t, b?t s?a t�ch b�o,..', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (120, N'Socola Ferrero h?p 375g',9, 360000, 10, 0, N'Socola s?a 30% (du?ng, bo, ca cao, b?t ca cao, s?a b?t g?y, ch?t b�o s?a d?ng khan, ch?t nhu ho�, ch?t t?o x?p, huong li?u gi?ng t? nhi�n, h?t ph? 28.5%, mu?i,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (121, N'Th�ng 30 g�i m� Mama huong th?t b� h?m 60g',10, 190000, 10, 0, N' B?t m� 79%, d?u c?, mu?i, du?ng, gia v?, ch?t di?u v? (E621, E35), huong li?u (c?n t�y) 0.75%, nu?c tuong (d?u tuong, mu?i, chi?t xu?t m?ch nha, l�a m�, n?m men, d?u c?), h�nh t�y s?y kh�', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (122, N'Th�ng 40 g�i m� b� cay Samyang Sutah Ramen 120g',10, 840000, 10, 0, N'ho m�, g�i s�p, g�i rau v�o trong 550ml nu?c s�i v� n?u kho?ng 4-5 ph�t. �? huong v? ngon hon, c� th? th�m kim chi, tr?ng, t?i v� h�nh l�.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (123, N'Th�ng 10 t�i m� Koreno Jumbo v? kim chi 1kg',10, 760000, 10, 0, N'�un s�i 400ml ~ 450ml nu?c. Cho v?t m�, g�i gia v?, g�i rau v�o n?i c�ng m?t l�c, n?u trong 4 ph�t. Sau d� t?t b?p, m�c ra b�t v� d�ng du?c ngay. S? ngon hon khi b?n cho th�m tr?ng, h�nh, rau thom.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (124, N'Th�ng 50 g�i m� Udon Hanil Bongojang 200g',10, 745000, 10, 0, N' Nu?c 64%, b?t m� 34.16%, tinh b?t s?n 0.95%, mu?i 0.79%, ch?t di?u ch?nh v? chua (axit lactic, axit acetic, sodium laclate, axit adipic, nu?c) 0.1%.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (125, N'Th�ng 36 ly m� Mama v?t ti?m 60g',10, 610000, 10, 0, N'B?t m� 75,48%, d?u c? 6,25%, d?u n�nh 1,75%, gia v? 1,21%, huong v?t 0,75%, b?t t?i, b?t ?t, b?t ng?t,...', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (126, N'Th�ng 20 g�i m� cay h?i s?n Paldo 120g',10, 399000, 10, 0, N' Cho m�, g�i gia v? v�o 560ml nu?c s�i v� n?u trong 4 ph�t cho m� m?m. Khu?y d?u m� d? an.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (127, N'Th�ng 18 g�i m� th?t b?m Vifon Ho�ng Gia 120g',10, 250000, 10, 0, N' Cho v?t m� v� c�c g�i gia v? v�o t�. R�t v�o t� kho?ng 400ml nu?c s�i. �?y k�n n?p t� v� ch? kho?ng 3 ph�t. M? n?p, c?t g�i th?t h?m cho v�o t�, khu?y d?u l� c� th? d�ng du?c.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (128, N'g�i m� V? Huong gi?y v�ng 60g',10, 2500, 10, 0, N'Cho v?t m� v� c�c g�i gia v? v�o t�. Ch? nu?c s�i v�o kho?ng 350ml, d?y n?p l?i v� ch? trong 3 ph�t. M? n?p, tr?n d?u v� d�ng du?c ngay.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (129, N' m� th?t b?m Vifon Ho�ng Gia 120g',10, 3000, 10, 0, N'Cho v?t m� v� c�c g�i gia v? v�o t�. R�t v�o t� kho?ng 400ml nu?c s�i. �?y k�n n?p t� v� ch? kho?ng 3 ph�t. M? n?p, c?t g�i th?t h?m cho v�o t�, khu?y d?u l� c� th? d�ng du?c.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (130, N'm� rong bi?n Jin Ottogi 120g',10, 12000, 10, 0, N'1/Tru?c ti�n cho 550ml nu?c v�o n?i v� g�i rau c? s?y kh� v�o dun s�i.2/Khi nu?c s�i th� cho g�i s�p gia v? v� m� v�o r?i dun s�i kho?ng 5 ph�t l� du?c', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (131, N'C�y d�nh tr?ng Silicone 25cm Shika',13, 52000, 10, 0, N'D�i 25 cm c?m g?n tay ngu?i l?n, tr?ng lu?ng nh? ti?n thao t�c, d�ng l�u kh�ng s? m?i tay', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (132, N'Khu�n l�m kem nh?a Hofaco HPL64',13, 35000, 10, 0, N'K�ch thu?c 14.5cm x 13cm x 8.8cm', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (133, N'Phin c� ph� inox Tithafac 7cm',13, 31000, 10, 0, N'C�ng d?ng S? d?ng pha ch? c� ph� truy?n th?ng, ch?t l?c gi?t c� ph� s?ch c?n, thom ngon', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (134, N'V? h?p nh?a �i?n m�y XANH LD-SU616 24cm',13, 80000, 10, 0, N'V? h?p thi?t k? n�u x�m, du?ng k�nh vi?n 24.5 cm g?n d?p ti?n d?ng. V? h?p c� th? di?u ch?nh ph� h?p v?i t?ng lo?i n?i ch?o c� du?ng k�nh kh�c nhau ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (135, N'B?p c?n inox Rainy hoa mai 23 BCI',13, 65000, 10, 0, N' B?p du?c l�m b?ng inox c� d? b?n cao, c� uu di?m t?a nhi?t d?u, n�ng nhanh, ti?t ki?m nhi�n li?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (136, N'B?p c?n inox Rainy tr�ng men 23 BCM',13, 70000, 10, 0, N'B?p du?c l�m b?ng inox tr�ng men c� d? b?n cao, c� uu di?m t?a nhi?t d?u, n�ng nhanh, ti?t ki?m nhi�n li?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (137, N'Gel r?a tay kh� Kleen huong tr� xanh chai 630ml',14, 110000, 10, 0, N'S? d?ng c?n 96% v� du?ng ch?t gi�p kh�ng khu?n hi?u qu? v� du?ng ?m da tay', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (138, N'Gel r?a tay kh� Kleen huong o?i huong chai 630ml',14, 110000, 10, 0, N'Cho m?t lu?ng nh? v�o l�ng b�n tay v� xoa d?u. Kh�ng c?n r?a tay l?i v?i nu?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (139, N'Gel r?a tay kh� Dr. Clean huong lavender chai 500ml',14, 106000, 10, 0, N'L�m s?ch 99.9% vi khu?n. ��i tay lu�n m?m m?i, s?ch s?, tuoi m�t v� bay b?ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (140, N'Gel r?a tay kh� Lifebuoy b?o v? vu?t tr?i chai 235ml',14, 72000, 10, 0, N' Ti?n d?ng r?a tay m� kh�ng c?n d�ng nu?c. V? sinh, di?t khu?n, kh? s?ch m�i r?t t?t d? b?o s?c kh?e, gi? cho d�i tay lu�n s?ch s? v� m?m mai', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (141, N'Nu?c r?a tay Kirei Kirei huong chanh chai 250ml',14, 74000, 10, 0, N'B?t r?a tay Kirei Kirei Huong chanh Chai 250 ml v?i chi?t xu?t 100% tinh ch?t t? th?o du?c thi�n nhi�n c�ng c�ng th?c di?t khu?n d?c bi?t cho b?n ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (142, N'Nu?c r?a tay Lifebuoy b?o v? vu?t tr?i t�i 443ml',14, 53000, 10, 0, N'L�m u?t tay. Cho m?t lu?ng v?a d? v�o l�ng b�n tay, xoa d?u tr�n tay v� r?a s?ch v?i nu?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (143, N'S?a r?a tay Goodlook du?ng da huong t�o 500ml',14, 45000, 10, 0, N' Du?ng da v� ngan ng?a vi khu?n, gi? cho da tay lu�n m?m m?i, m?n m�ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (144, N'Nu?c r?a tay Aqua Vera du?ng da hoa t? dinh huong 500ml',14, 39000, 10, 0, N'Gi�p l�m s?ch vi khu?n v� b? sung glycerin du?ng ?m m?n m�ng, cho da tay b?n tr? n�n m?m m?i sau khi s? d?ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (145, N'Nu?c gi?t x? Act',15, 420000, 10, 0, N'Lo?i b? v?t b?n, di?t tr? vi khu?n v� c�c t�c nh�n g�y h?i nhu b?i b?n, b?, ve, r?p v� c�c t�c nh�n g�y d? ?ng, ng?t mui kh�c. Kh? m�i ngay c? khi phoi trong di?u ki?n ?m u?t, phoi trong nh�.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (146, N'Nu?c gi?t Essence huong floral 3.5 l�t',15, 309000, 10, 0, N'H�a tan k? nu?c gi?t Essence v?i nu?c tru?c khi cho qu?n �o v�o nu?c v?i t? l? 1 n?p d?y h�a v?i 3 - 4 l�t nu?c ng�m qu?n �o trong 5 ph�t, v� nh?, x? qua v?i nu?c. �?i v?i m�y gi?t theo t? l? 4 - 6 n?p cho 1 l?n gi?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (147, N'B?t gi?t Tide chuy�n d?ng 9kg',15, 300000, 10, 0, N'C�ng th?c tr?ng d?t ph� cham s�c s?i v?i cho c�c co s? chuy�n nghi?p. ��nh bay v� lo?i b? c�c v?t b?n ? c? tay, c? �o, v?t d?u m?, hay b�n d?t b�m d�nh l�u ng�y.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (148, N'Nu?c gi?t x? h?u co sinh h?c Giel 2 in 1',15, 300000, 10, 0, N'Ch� xanh, chanh, l� g?i, h? c�y li?u k?t h?p tinh ch?t huong hoa t? nhi�n thom m�t,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (149, N'Nu?c gi?t x? Sanzoft ',15, 259000, 10, 0, N'Gi?t s?ch qu?n �o, chan m�n, v?i v�c. Ph� h?p v?i m?i lo?i v?i. Luu l?i huong thom nh? nh�ng quy?n ru. Gi? s?c m�u qu?n �o lu�n tuoi m?i', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (150, N'Nu?c gi?t Ariel Matic s?ch nhanh 3.64 l�t',15, 239000, 10, 0, N'Th?m s�u v�o t?ng s?i v?i d? d�ng t?y s?ch c�c v?t b?n t?t hon g?p 2 l?n', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (151, N'B?t gi?t M? H?o 5X di?t khu?n 6kg',15, 220000, 10, 0, N'Lo?i b? c�c v?t b?n kh� gi?t, kh�ng t�i b�m v?t b?n. Di?t khu?n hi?u qu?, kh? m�i m? h�i.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (152, N'Nu?c gi?t Attack huong hoa anh d�o 2.4kg',15, 180000, 10, 0, N'Gi?t s?ch c�c v?t b?n kh� gi?t nhu v?t d?u m?, d?u xe, v?t b?n t? th�c an, d? u?ng, v?t m?c, v?t b?n c? tay, c? �o cho �o qu?n sachh thom to�n di?n.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (153, N'S?a t?m h?t ON THE BODY Veilment Spa Lavender 600g',16, 316000, 10, 0, N'Nh? nh�ng l�m s?ch l?p t? b�o ch?t tr�n da nh? th�nh ph?n t? th?c v?t, d?u nh? v� an to�n gi�p da ng�y c�ng s�ng m?n', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (154, N'S?a t?m tinh ch?t th?o m?c Body Shower 750ml',16, 237000, 10, 0, N'Kh�ng khu?n, c�n b?ng ?m, b?o v? da kh?i t�c h?i c?a m�i tru?ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (155, N'S?a t?m Purit� du?ng ?m s?a ong ch�a v� hoa anh d�o 850ml',16, 210000, 10, 0, N'Du?ng ?m s�u t? s?a ong ch�a nh? nh�ng l�m s?ch da, d?ng th?i cung c?p d? ?m s�u cho da', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (156, N'S?a t?m nu?c hoa Enchanteur Deluxe Charming 900g',16, 216000, 10, 0, N'L�m s?ch da, gi�p l�n da m?m m?n, huong thom d�i l�u quy?n ru', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (157, N'S?a t?m Cathy Doll White Tofu 750ml',16, 180000, 10, 0, N'L�m s?ch b?i b?n v� c?n b� du th?a tri?t d?, du?ng da m?n m�ng tr?ng s�ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (158, N'S?a t?m detox',16, 117000, 10, 0, N'L?y m?t lu?ng s?n ph?m v?a d? ra b�ng t?m ho?c mi?ng b?t bi?n d� du?c l�m u?t v� t?o b?t. Xoa b?t kh?p co th? v� l�m s?ch l?i v?i nu?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (159, N'S?a t?m b?o v? kh?i vi khu?n Lifebuoy',16, 153000, 10, 0, N' C�ng th?c ion b?c v� b?c h� gi�p b?o v? co th? kh?i vi khu?n g?p 10 l?n, cho da m�t l?nh s?ng kho�i', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (160, N'S?a t?m du?ng s�ng Hazeline matcha',16, 140000, 10, 0, N' Du?ng da tr?ng s�ng r?ng ng?i, du?ng ?m da', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (161, N'S?a t?m nu?c hoa Romano Attitude s?ch s?ng kho�i 650g',16, 134000, 10, 0, N'Gi? ?m cho da s?ch d?y s?c s?ng c�ng m�i huong nam t�nh m?nh m? mang l?i d?u ?n c?a ngu?i d�n �ng l?ch l�m, d?y quy?n ru', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (162, N'D?u g?i s?ch g�u Head & Shoulders',17, 347000, 10, 0, N'L�m u?t t�c, xoa d?u g?i nh? nh�ng l�n t�c v� da d?u, m�t-xa v� x? s?ch l?i v?i nu?c. G?i th�m l?n n?a n?u mu?n.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (163, N'D?u g?i Dove ph?c h?i hu t?n 1.36 l�t',17, 273000, 10, 0, N'Ph?c h?i b? m?t t�c t?c th� v� nu�i du?ng s�u gi�p t�i c?u tr�c s?i t�c t? s�u b�n trong, cho m�i t�c b?n ch?c kho? d�i l�u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (164, N'D?u g?i Sunsilk m?m mu?t di?u k? 1.36 l�t',17, 248000, 10, 0, N' C�ng th?c d?c quy?n v?i c�ng ngh? kho� ?m v� 5 tinh d?u t? nhi�n gi�p luu gi? d? ?m c?n thi?t cho m�i t�c lu�n m?m mu?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (165, N'D?u g?i TRESemm� Salon Detox',17, 221000, 10, 0, N' B� d?p du?ng ch?t cho t�c, l�m s?ch s�u, nu�i du?ng t�c ch?c kho? v� b�ng mu?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (166, N'D?u g?i Head & Shoulders Classic Clean 700ml',17,2150000, 10, 0, N'Tr? g�u, l�m s?ch da d?u, gi�p t�c lu�n m?m mu?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (167, N'D?u g?i nu?c hoa Elastine Kiss The Rose 1000ml',17,1680000, 10, 0, N' L�m u?t t�c, l?y m?t lu?ng d?u g?i v?a d? thoa l�n t�c, t?o b?t m�t xa nh? nh�ng d? m�i huong t?a d?u tr�n t�c. G?i s?ch l?i v?i nu?c.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (168, N'D?u g?i nu?c hoa X-Men For Boss Intense 650g',17, 186000, 10, 0, N'�? xa t?m tay tr? em. Tr�nh d? s?n ph?m d�nh v�o m?t. N?u d�nh v�o m?t h�y r?a s?ch v?i nu?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (169, N'D?u g?i TRESemm� Salon Detox g?ng v� tr� xanh 631ml',17, 187000, 10, 0, N'B� d?p du?ng ch?t cho t�c, l�m s?ch s�u, nu�i du?ng t�c ch?c kho? v� b�ng mu?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (170, N'D?u x? ph?c h?i hu t?n Tsubaki 500ml',17, 179000, 10, 0, N' H?p ch?t d?c bi?t b? sung Protein, Lipit, h?p ch?t hoa tr� l�n men v� chi?t xu?t tinh d?u hoa tr� Nh?t B?n', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (171, N'Rau D?n 4KFarm t�i 200-300g',21, 4000, 5, N'S?ch nhu rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (172, N'Rau M�ng Toi 4KFarm t�i 200-300g',21, 8000, 10, 0, N'S?ch nhu rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (173, N'C?i D�ng 4KFarm t�i 300g',21, 9000, 10, 0, N'S?ch nhu rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (174, N'C?i xoan t�i 500g',21, 27000, 10, 0, N'S?ch nhu rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (175, N'Khoai m? t�i 1kg',21, 47000, 10, 0, N'S?ch nhu rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (176, N'N?m m? tr?ng h?p 150g',21, 45000, 10, 0, N'S?ch nhu rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (177, N'X� l�ch Romaine th?y canh t�i 300g',21, 25000, 10, 0, N'S?ch nhu rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (178, N'B� d? h? l� t�i 700g',21, 23000, 10, 0, N'S?ch nhu rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (179, N'T�o Envy h?p 1kg',22, 242000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (180, N'Nho d? kh�ng h?t h?p 1kg',22, 186000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (181, N'L� Nam Phi nh?p kh?u h?p 1kg (5 - 6 tr�i)',22, 86000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (182, N'Xo�i c�t Ho� L?c t�i 1kg',22, 39000, 10, 0, N'd?c s?n c?a mi?n T�y b?i huong v? thom ngon, m�u s?c b?t m?t, ngu?n dinh du?ng cao. Kh�ng ch? n?i ti?ng ? trong nu?c, xo�i c�t Ho� L?c c�n l� lo?i tr�i c�y xu?t kh?u top d?u trong c�c lo?i hoa qu? s?ch tr�n th? gi?i. ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (183, N'Bo t�i 1kg',22, 34000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (184, N'L� Singo nh?p kh?u Trung Qu?c h?p 1kg',22, 58000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (185, N'M�ng c?u na t�i 500g',22, 31000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (186, N'Thanh long h?ng t�i 1kg',22, 44000, 10, 0, N'Hoa qu? tuoi nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (187, N'M?t ph�c b?n t? La Fresh hu 210g',23,65000, 10, 0, N'Ph�c b?n t? (40%), du?ng m�a (50%), pectin qu?, ch?t b?o qu?n (202) v� nu?c (10%)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (188, N'M?t cam Preserves Golden Farm hu 450g',23, 60000, 10, 0, N'Tr�i cam (45 - 60%), du?ng m�a RE, siro b?p, nu?c, ch?t ?n d?nh, ch?t di?u ch?nh d? acid, ch?t b?o qu?n, huong cam t?ng h?p, m�u th?c ph?m t?ng h?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (189, N'M?t nho Preserves Golden Farm hu 450g',23, 70000, 10, 0, N'Tr�i nho (45 - 60%), du?ng m�a RE, siro b?p, nu?c, ch?t ?n d?nh, ch?t di?u ch?nh d? chua, ch?t b?o qu?n, huong nho t?ng h?p, ch?t t?o m�u t?ng h?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (180, N'M?t d�u t?m Golden Farm hu 450g',23, 56000, 10, 0, N'Thuong hi?u Golden Farm (Vi?t Nam)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (191, N'M?t thom Preserves Golden Farm hu 210g',23, 29000, 10, 0, N'Tr�i thom (45 - 60%), du?ng m�a RE, siro b?p, nu?c, ch?t ?n d?nh, ch?t di?u ch?nh d? chua, ch?t b?o qu?n, huong thom t?ng h?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (192, N'L?c 3 hu m?t d�u Preserves Golden Farm 30g',23, 30000, 10, 0, N' An k�m kem, sinh t?, b�nh m�, tr� n�ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (193, N'M?t vi?t qu?t Preserves Golden Farm hu 210g',23, 40000, 10, 0, N' B?o qu?n ? noi kh� r�o, tho�ng m�t. Gi? l?nh sau khi m? n?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (194, N'H?p qu� Orion An h?p 703.8g',24, 135000, 10, 0, N' B�nh Choco.pie B�nh Cutas kem tr?ng B�nh Tok v? t?o bi?n B�nh Tok v? ph� mai B�nh g?o nu?ng An v? t?o bi?n B�nh quy s� c� la Miz Th?c ph?m b? sung - B�nh Marine Boy v? rong bi?n tuy?t xanh K?o h?ng v? qu?t - m?t ong', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (195, N'B�nh kem tr?ng Custas h?p 470g (20 c�i)',24, 99000, 10, 0, N'Tr?ng, b?t m�, du?ng, ch?t b�o th?c v?t, ch?t gi? ?m, ch?t nhu ho�, s?a b?t nguy�n kem, b?t l�ng d? tr?ng, ch?t ?n d?nh,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (196, N'B�nh b�ng lan kem h?n h?p 3 m�i Solo h?p 336g',24, 71000, 10, 0, N'B?t m�, du?ng, ch?t b�o th?c v?t, tr?ng g�, m?ch nha, ch?t gi? ?m, b?t b?p, ch?t nhu ho�, s?a b�o,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (197, N'B�nh b�ng lan  Solite h?p 324g (18 c�i)',24, 50000, 10, 0, N' �? noi kh� r�o, tho�ng m�t, tr�nh �nh n?ng tr?c ti?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (198, N'B�nh b�ng lan Hura Deli h?p 336g (12 c�i)',24,47000, 10, 0, N'B?t m�, du?ng, tr?ng, ch?t b�o th?c v?t, m?ch nha, bo, s?a b?t, ch?t gi? ?m, ch?t nhu ho�, nu?c, tinh b?t b?p, ch?t t?o x?p, mu?i, s� c� la compound tr?ng, huong t?ng h?p,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (199, N'B�nh b�ng lan  Quasure Light h?p 126g (7 c�i)',24, 29000, 10, 0, N'B?t m�, tr?ng, isomalt, ch?t b�o th?c v?t, m?ch nha, ch?t gi? ?m, du?ng, s?a b?t, ch?t nhu ho�, ch?t t?o x?p, mu?i, ch?t xo ho� tan, vitamin, huong t?ng h?p,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (200, N'B�nh b�ng lan tr�n kem v? d�u Solite h?p 36g (2 c�i)',24, 8000, 10, 0, N'�? noi kh� r�o, tho�ng m�t, tr�nh �nh n?ng tr?c ti?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (201, N'Th?t heo h?m Master T h?p 180g',33, 26000, 10, 0, N'N?c heo, nu?c, h�nh t�y, d?u th?c v?t, mu?i, du?ng, ch?t di?u v? (621), ch?t ?n d?nh (451i) v� (1422), huong th?t t?ng h?p, ch?t b?o qu?n (250)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (202, N'Th?t heo h?m 3 B�ng Mai Vissan h?p 150g',33, 22000, 10, 0, N'Th?t heo 50%, du?ng, mu?i, h�nh, t?i, nu?c m?m,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (203, N'Th?t vai heo Picnic Shoulder Categoria Extra Tulip h?p 454g',33, 212000, 10, 0, N'An tr?c ti?p ho?c an k�m com, b�nh m�, tr?n salad', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (204, N'Heo hai l�t Vissan h?p 150g',33, 26000, 10, 0, N'N?c heo 55%, m? heo, nu?c, protein d?u n�nh, du?ng..', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (205, N'C� ng? s?t c� ri Dongwon lon 100g',33, 33000, 10, 0, N'D�ng tr?c ti?p ho?c h�m n�ng tru?c khi d�ng, an nhanh sau khi m?', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (206, N'C� kho th?t 3 B�ng mai Vissan h?p 150g',33, 17000, 10, 0, N'C� n?c (30%), th?t heo (25%), nu?c, ?t, h�nh, mu?i i-?t, du?ng, ch?t di?u v? (621), ch?t gi? ?m (451i, 452i), ti�u den xay, ch?t ?n d?nh (1422), nu?c m?m, ph?m m�u t?ng h?p (150a)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (207, N'B� h?m Vissan h?p 150g',33, 35000, 10, 0, N'Th?t b� 55%, mu?i, du?ng, t?i, h�nh...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (208, N'C� tr�ch s?t c� Sea Crown h?p 155g',33, 12000, 10, 0, N'C� tr�ch 60%, s?t c� 27%, nu?c 11.7%, mu?i 1%, ch?t di?u v? 0.3%', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (209, N'C� m�i x?t c� chua n?p gi?t 3 C� G�i h?p 155g (v? d?m d�)',33, 17000, 10, 0, N'C� bi?n (c� m�i, c� ng�n, c� n?c,...) 60%, x?t c� chua 35%, d?u n�nh, du?ng, mu?i i-?t, ch?t l�m d�y (1442, 1414, 412), ch?t di?u v? 621, m�u th?c ph?m 160d', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (210, N'L?c 3 h?p C� saba x?t nu?c tuong Norlake 150g',33, 102000, 10, 0, N' �? noi kh� r�o, tho�ng m�t, tr�nh �nh n?ng tr?c ti?p', 3);

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
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (1,  N'Nguy?n Thanh Sang', N'B�nh Duong', N'0971890712', N'sanglun2254@gmail.com' , 1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (2,  N'Minh Cao', N'TPHCM', N'0971890712', N'minhcd@gmail.com',  1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (3,  N'Nguy?n Thanh Sang', N'Q11', N'0971890712', N'sanglun2254_1@gmail.com',  1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (4,  N'Nguy?n Ng?c Hi?n', N'G� V?p', N'', N'pinkwater98@gmail.com', 0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (5,  N'H?  Qu?nh Nga', N'280 ADV', N'0904877306', N'wanriky2998@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (6,  N'L� Th? Hi?n', N'B�nh Th?nh', N'0904877306', N'hiennt@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (7,  N'L� Thanh Sang', N'Th? �?c', N'0904877306', N'sanglt8@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (8,  N'H? Vi?t Th?', N'Q11', N'0904877306', N'thobt@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (9,  N'Nguy?n Qu?c Ho�n', N'Q12', N'0904877306', N'hoan2008@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (19,  N'�inh Van Thanh', N'B�nh Th?nh', N'0904877306', N'thanhpt@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (11,  N'Ng� �?c Anh', N'Khu CN s�ng Th?n', N'0904877306', N'ducanh@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (12,  N'Nguy?n Th? Ng?c Huy?n', N' Vung T�u', N'0904877306', N'huyen1999@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (13,  N'H? Di?u Huy?n', N'Q5', N'0904877306', N'hien7965@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (14,  N'Nguy?n Th? Uy?n Cuong', N'Th? �?c', N'0904877306', N'cuongcntt8@gmail.com',   0, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (15,  N'L� Van H?u', N'B�nh T�n', N'0904877306', N'haucnaa@gmail.com',   1, NULL);
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (16,  N'Nguy?n Ho�ng Anh', N'B�nh Th?nh', N'0904877306', N'anhbinhthanh@gmail.com',   0, NULL);





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
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (1, 1,1,1,N'Nguy?n Thanh Sang',N'B�nh Duong', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (2, 1,2,2,N'Minh Cao', N'TPHCM', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),236800,237000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (3, 2,3,3,N'Nguy?n Thanh Sang', N'Q11', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),34500,345000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (4, 3,4,4,N'Nguy?n Ng?c Hi?n', N'G� V?p', N'',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),1135100,1135000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (5, 4,5,5,N'H?  Qu?nh Nga', N'280 ADV', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),6800,6800);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (6, 5,6,6, N'L� Th? Hi?n', N'B�nh Th?nh', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (7, 6,7,7,N'L� Thanh Sang', N'Th? �?c', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),356100,256000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (8, 7,8,8,N'H? Vi?t Th?', N'Q11', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),115100,115000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (9, 8,9,9,N'Nguy?n Qu?c Ho�n', N'Q12', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),679000,679000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (10,9,10,19, N'�inh Van Thanh', N'B�nh Th?nh', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),127800,127800);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (11,10,11,11,N'Ng� �?c Anh', N'Khu CN s�ng Th?n', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),13500,13500);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (12,11,12,12,N'Nguy?n Th? Ng?c Huy?n', N' Vung T�u', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),34200,34000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (13,12,13,13, N'H? Di?u Huy?n', N'Q5', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),50000,50000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (14,13,14,14,N'Nguy?n Th? Uy?n Cuong', N'Th? �?c', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),234000,234000);
INSERT INTO HOADON (MaHD, MANV,MACN, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (15,2,15,15, N'L� Van H?u', N'B�nh T�n', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);


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