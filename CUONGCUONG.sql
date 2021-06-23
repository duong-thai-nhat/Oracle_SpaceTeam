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


INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (1, 'Big C Mi?n ?�ng');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (2, 'Big C �u C?');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (3, 'Big C Ph� Th?nh');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (4, 'Big C Tr??ng Chinh');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (5, 'Big C G� V?p');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (6, 'Big C Nguy?n Th? Th?p');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (7, 'Big C Th?o ?i?n');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (8, 'Big C An Ph�');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (9, 'Big C An L?c');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (10, 'Big C B�nh D??ng');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (11, 'Big C B?c Giang');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (12, 'Big C Quy Nh?n');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (13, 'Big C L� Tr?ng T?n');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (14, ' Big C Long Bi�n');
INSERT INTO CHINHANH (MaChiNhanh, TenChiNhanh) VALUES (15, ' Big C M� Linh');



CREATE TABLE CHUCVU
(
	MaChucVu NUMBER(10) NOT NULL,
	TenChucVu NVARCHAR2(50) NOT NULL,
     	CONSTRAINT FK_Chuc_Vu PRIMARY KEY (MaChucVu)
);


INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('1', 'Nh�n Vi�n B�n H�ng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('2', 'Nh�n Vi�n Qu?n L�');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('3', 'Nh�n Vi�n Thu Ng�n');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('4', 'Nh�n Vi�n B?o V?');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('5', 'Nh�n Vi�n T? V?n');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('6', 'Nh�n Vi�n K? To�n');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('7', 'Nh�n Vi�n Ki�m K�');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('8', 'T? Tr??ng Qu?n L�');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('9', 'T? Ph� Qu?n L�');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('10', 'T? Tr??ng B�n H�ng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('11', 'T? Ph� B�n H�ng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('12', 'T? Tr??ng Thu Ng�n');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('13', 'T? Ph� Thu Ng�n');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('14', 'T? Tr??ng An Ninh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('15', 'T? Ph� An Ninh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('16', 'K? T�an Tr??ng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('17', 'K? T�an L??ng');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('18', 'Nh�n Vi�n Kho');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('19', 'Gi�m ??c Chi Nh�nh');
INSERT INTO CHUCVU (MaChucVu, TenChucVu ) VALUES ('20', 'Qu?n L� Chi Nh�nh');



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
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (1, N'Nguy?n Qu?c C??ng', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','nqcuong20', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee01@gmail.com',  1,'1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (2, N'Nguy?n Th? Kim Anh', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','nqcuong20', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee02@gmail.com',2,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (3, N'Nguy?n Duy Minh', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','nqcuong20', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee03@gmail.com',1,'1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (4, N'Nguy?n Minh Qu?c', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','nqcuong20', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee04@gmail.com', 1,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu ) VALUES (5, N'D??ng Th�i Nh?t', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','nqcuong20', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee05@gmail.com',1,'1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (6, N'V� L� Ng?c Di?p', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','nqcuong20', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==','employee06@gmail.com',1,'1');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (7, N'D??ng T?n Thi�n', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu?n 11','kimanh', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C', 'ZhAUSvIL8i7Q07+sGscTCQ==','employee07@gmail.com',1,'20');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (8, N'Ng� ??c Anh', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu�n 11','duocanh@', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee08@gmail.com',7,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (9, N'Tr?n V?n Nh?t T�n', 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '121 ???ng s? 6 P Linh T�y','employee1@', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee09@gmail.com',8,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (10, N'?? Th? B?o Quy�n', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '291/12/5 Nguy?n Qu?c To�n P7 ','employee2@', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee10@gmail.com', 9,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (11, N'H? Ng?c H�', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '45 Th?o ?i?n Q10','employee3@', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee11@gmail.com',8,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (12, N'Nguy?n Ho�nh Anh', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '351A L?c Long Qu�n P5 Qu�n 11','employee4@', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==' ,'employee12@gmail.com',7,'2');
INSERT INTO NHANVIEN (MaNV, HoTen, GioiTinh,NgaySinh,SDT, DiaChi,TenDN, MatKhau, Luong, Email, MaChiNhanh, MaChucVu )  VALUES (13, N'L� Ho�ng Mai', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'), '0377077630', '230 An D??ng V??ng P11 A5','employee5@', 'C35A37F0BCA08AFA583247CC461CAD9C8082A47C','ZhAUSvIL8i7Q07+sGscTCQ==','employee13@gmail.com', 9,'2');



CREATE TABLE LOAI(
  MaLoai NUMBER(10) NOT NULL,
  TenLoai NVARCHAR2(30) NOT NULL,
  CONSTRAINT pk_loai PRIMARY KEY (MaLoai)
);

INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (1, 'Th?c Ph?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (2, 'Kh?n gi?y, gi?y v? sinh');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (3, 'M? Ph?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (4, 'V?n Ph�ng Ph?m');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (5, 'B�n Ch?i, Kem ?�nh R?ng');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (6, 'Th?c Ph?m Kh�');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (7, 'N??c Gi?i Kh�t');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (8, 'S?a');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (9, 'B�nh K?o');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (10, 'M� G�i');
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
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (24, 'B�nh');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (25, 'K?o');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (26, 'Kh?u trang');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (27, 'Qu?n �o ng??i l?n');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (28, 'Qu?n �o tr? em');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (29, 'Thi?t b? ?i?n t?');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (30, '?? c�ng ngh?');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (31, '?? trang s?c');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (32, '?? ch?i');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (33, 'Th?c ?n ?�ng h?p');
INSERT INTO LOAI (MaLoai, TenLoai ) VALUES (34, 'Th?c ?n c� s?n');

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
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (4, 10, N'yame@gmail.com', N'32565365323', N'B�NH D??NG');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (5, N'Cp N??c Gi?i Kh�t Ch??ng D??ng', N' info@cdbeco.com.vn', N'( 84-8) 3836 7518', N'577 H�ng V??ng, P. 12, Qu?n 6 ');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (6, N'C�ng Ty Tnhh N??c Gi?i Kh�t Delta', N'delta@gmail.com', N'0723827010', N'	S? 42, V� Ng?c Qu?n, Ph??ng 6, , Vi?t Nam');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (7, N'Th?c Ph?m ?�ng H?p KTC Ki�n Giang', N'sale@ktcfood.com.vn', N' 0297.3617724', N'Khu C?ng c� T?c C?u, Ch�u Th�nh, Ki�n Giang');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (8, N'C�ng Ty Xu?t Kh?u Rau Qu? Ti?n Giang', N'info@vegetigi.com', N' (84.273) 3834 677', N' Kil�m�t s? 1977, , Ti?n Giang');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (9, N'C�ng Ty CP Th?c Ph?m Xu?t Kh?u ??ng Giao', N'sales@doveco.com.vn', N'(+84) 229 3770 353', N' Ph??ng Trung S?n,Tam ?i?p, Ninh B�nh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (10, N'C�ng Ty TNHH Th?c Ph?m Dinh D??ng S�i G�n', N'yame@gmail.com', N'(84. 0650) 3737 692', N' KCN S�ng Th?n 2, D? An, B�nh D??ng');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (11, N'C�ng Ty TNHH Saigon Ve Wong', N'yame@gmail.com', N'(028) 37195550, 37195554', N'1707 Qu?c L? 1A, P. An Ph� ?�ng, Q. 12, Tp. H? Ch� Minh (TPHCM)');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (12, N'C�NG TY C? PH?N RAU QU? B�NH THU?N', N'hoangrauqua@fruitsandgreens.com', N'0913 932 446', N'107 ??ng V?n L�nh, Ph??ng Ph� T�i, , T?nh B�nh Thu?n');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (13, N'C�NG TY C? PH?N PH�N PH?I ?I?N T? JVS', N'info@jvs.vn', N'32565365323', N'24 Giai Ph�ng, P.4, Q. T�n B�nh, Tp HCM');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (14, N'C�ng ty TNHH Panasonic Vi?t Nam', N' customer@vn.panasonic.com', N'(+84) 024 3955 0111', N'	L� J1-J2 Khu c�ng nghi?p Th?ng Long,  H� N?i, Vi?t Nam.');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (15, N'C�ng ty TNHH Thaipro', N'thaipro@gmail.com', N'32565365323', N'GD2-14, Khu C�ng nghi?p Ng?c H?i, Thanh Tr�, H� N?i.');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (16, N'C�ng ty TNHH ?i?n T? Samsung', N'samsung@gmail.com', N' +84-2839157310', N'S? 2, ???ng H?i Tri?u, Ph??ng B?n Ngh�, Qu?n 1, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (17, N'C�ng ty C? ph?n Th?c ph?m Thi�n H??ng', N' contact@thienhuongfood.com.vn', N'028 37171449', N'S? 1 L� ??c Th?, Khu Ph? 02, T�n Th?i Hi?p, Qu?n 12, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (18, N'C�ng ty C? ph?n K? ngh? th?c ph?m Vi?t Nam ', N'vifon@vifon.com.vn', N'028 38153933', N'913 Tr??ng Chinh, P. T�y Th?nh, Q. T�n Ph�, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (19, N'C�ng ty C? ph?n Acecook Vi?t Nam', N'acecook@gmail.com', N'028 3 815 4064', N' L� II-3, ???ng s? 11, , P.T�y Th?nh, Q. T�n Ph�, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (20, N'C�ng ty C? ph?n H�ng ti�u d�ng MaSan', N'danielle@msn.masangroup.com', N' 0286 2555 660', N'T?ng 12, t�a nh� MPlaza Saigon, Qu?n 1, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (21, N'C�ng ty TNHH S?n xu?t th??ng m?i Ph�c H?o', N'info@phuchaonoodles.com.vn', N'0932.704.724', N' 347 H? V?n T?ng, Huy?n C? Chi, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (22, N'C�ng ty C? ph?n c�ng ngh? th?c ph?m Ch�u �', N'micoem@micoem.vn', N'02223 714 146', N'S? 4 B?ch ??ng, P.Th?ch Thang, Q. H?i Ch�u, TP ?� N?ng');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (23, N'Cty CP Th?c ph?m � Ch�us', N'info@asiafoods.vn', N'028 4450 0588 ', N'801-804 T?ng 8, Saigon Trade Center, TP. H? Ch� Minh');
INSERT INTO NHACUNGCAP (MaNCC, TenCongTy, Email, DienThoai, DiaChi) values (24, N'C�ng ty C? ph?n l??ng th?c th?c ph?m Colusa', N'colusa@comifood.com', N'028 3896 6835', N'1230 Kha V?n C�n, Linh Trung, Th? ??c, TP. H? Ch� Minh');


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
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (1, N'M� ?N LI?N MILIKET', 10, 1500, 10, 0, N' V?T M� - B?t m�, shortening, tinh b?t khoai m�, mu?i, ???ng, ch?t ?n ??nh (501(i), 452(i), 466), ch?t t?o x?p (500(i)), ph?m m�u t? nhi�n (160a(ii), 160c, 100(i)), b?t t�m, ch?t ch?ng oxy ho� (321). ', 21);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (2, N'M� ?N LI?N H?O H?O', 10,  3500, 10, 0, N'?T M� - B?t m� (b? sung vi ch?t (k?m, s?t)), d?u th?c v?t (d?u c?, ch?t ch?ng oxy ho� (BHA (320), BHT (321))), tinh b?t, mu?i, ???ng, n??c m?m, ch?t ?i?u v? (mononatri glutamat (621)), ch?t ?n ??nh (pentanatri triphosphat (451(i), ', 21);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (3 ,N'M� ?N LI?N T�M CHUA CAY', 10, 2500, 10, 0, N'S?i m� 3 Mi?n ???c l�m b?t khoai t�y, b?t m�, m�u t? nhi�n, vitamin B1, B2, B3, B6, B9� tr? n�n dai, m?m h?p d?n. ', 22);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (4, N'M� ?N LI?N OMAICHI B� H?M', 10 , 5000, 10, 0, N'M� Omachi X?t B� H?m sinh ra t? l�a m� v� tinh ch?t khoai t�y, h�a quy?n v?i tr?ng, t?ng s?i m� Omachi v�ng ??m dai ngon nay c�n ???c ??m m�nh trong n??c c?t t? th?t v� x??ng n�n c�ng ??m ?� h?p d?n ', 21);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (5 ,N'M� ?N LI?N OMACHI TR?N', 10, 5000, 10, 0, N'M� Omachi x?t Spaghetti v? b� v?i s?i m� m?m, dai, ???c l�m t? khoai t�y t??i ch?n l?c, k?t h?p v?i n??c x?t ???c ch? bi?n t? th?t b� b?m v� c� chua t??i l�m n�n h??ng v? ??c tr?ng c?a n??c �. ', 22);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (6, N'M� ?N LI?N A ONE', 10, 3000, 10, 0, N'B?t m�, d?u shortening, mu?i, ch?t ?i?u v?: Monosodium glumate (E621), ???ng , b?t ti�u ?en, b?t ?t, d?u th?c v?t, h�nh l� s?y, kh�, h??ng th?t x�o t?ng h?p. ', 22);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (7, N'�O S? MI NAM D�I TAY TR?NG SMT16', 27 , 350000, 10, 0.15, N'S? mi tay d�i tr?ng phong c�ch tinh ', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (11, N'�O S? MI NAM D�I TAY TR?NG SMT12', 27, 280000, 10, 0.12, N'�o s? mi nam C? B? V?i L?a Th�i ch?ng nh?n (CAM K?T ?NH TH?T)-D�ng �m Body H�n Qu?c ??p', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (17, N'�O S? MI NAM D�I TAY TR?NG SMT16', 27, 280000, 10, 0, N'SKU: SMT16 Category: �o S? Mi Nam Tags: �o s? mi, �o s? mi ?en, �o s? mi tr?ng', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (18, N'�O S? MI NAM D�I TAY TR?NG SMT0001', 27,  300000, 10, 0.2, N'Mua ngay �o s? mi nam V?i L?a Th�i Tr?ng ch?ng nh?n SMT001-D�ng �m Body H�n qu?c ch�nh h�ng ', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (19, N'�O S? MI NAM D�I TAY S?C ?EN TR?NG SMT0004', 27, 320000, 10, 0.2, N'�o s? mi s?c ?en tim ?en- UNISEX cao c?p gi� r?. S? mi nam d�i tay m�u tr?ng s�nh ?i?u tho�ng m�t kh�ng nh?n.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (20, N'�O S? MI NAM D�I TAY S?C SMT0006',27, 300000, 10, 0.2, N'�o s? mi nam trung ni�n ??p, l?ch s? v?i ch?t li?u cao c?p : cotton, s?i tre, nano. ?? size t? 38-43.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (21, N'�O S? MI NAM D�I TAY S?C X�M SMT0018', 27,  300000, 10, 0.2, N'�o s? mi nam d�i tay, �o s? mi nam c�ng s? h?a ti?t k? s?c c� t�i ng?c, Ki?u s? mi tho�ng m�t b?n ??p sang', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (22, N'�O S? MI NAM D�I TAY  XANH S?C DEN  SMT0026',27, 300000, 10, 0.2, N'�o s? mi nam d�i tay th??ng hi?u Anton k? s?c xanh d??ng ', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (23, N'�O S? MI NAM  NG?N TAY SMT0001', 27,  300000, 10, 0.2, N'�o s? mi nam tay ng?n cho qu� �ng tr? trung. �o s? mi c?c tay l?ch s? m� v?n n?ng ??ng th? hi?n b?n l?nh ?�n �ng ?�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (24, N'�O S? MI NAM  NG?N TAY H?A TI?T SMT0065', 27, 300000, 10, 0.2, N'C�c m?u �o s? mi nam ng?n tay cao c?p, gi� c? h?p l�.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (25, N'�O S? MI NAM  NG?N TAY SMT0069', 27,  300000, 10, 0.2, N'�o s? mi nam tay ng?n cho qu� �ng tr? trung. �o s? mi c?c tay l?ch s? m� v?n n?ng ??ng th? hi?n b?n l?nh ?�n �ng ?�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (26, N'�O S? MI NAM  NG?N TAY SMT0005', 27,  110000, 10, 0.2, N'�o s? mi nam tay ng?n cho qu� �ng tr? trung. �o s? mi c?c tay l?ch s? m� v?n n?ng ??ng th? hi?n b?n l?nh ?�n �ng ?�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (27, N'�O S? MI NAM  NG?N TAY SMT0001', 27, 110000, 10, 0.2, N'�o s? mi nam tay ng?n cho qu� �ng tr? trung. �o s? mi c?c tay l?ch s? m� v?n n?ng ??ng th? hi?n b?n l?nh ?�n �ng ?�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (28, N'�O S? MI NAM  NG?N TAY SMT0010',27,  110000, 10, 0.2, N'�o s? mi nam tay ng?n cho qu� �ng tr? trung. �o s? mi c?c tay l?ch s? m� v?n n?ng ??ng th? hi?n b?n l?nh ?�n �ng ?�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (29, N'�O S? MI NAM  NG?N TAY SMT0041', 27, 110000, 10, 0.2, N'�o s? mi nam tay ng?n cho qu� �ng tr? trung. �o s? mi c?c tay l?ch s? m� v?n n?ng ??ng th? hi?n b?n l?nh ?�n �ng ?�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (30, N'�O S? MI NAM  NG?N TAY   SMT0073',27,  110000, 10, 0.2, N'�o s? mi nam tay ng?n cho qu� �ng tr? trung. �o s? mi c?c tay l?ch s? m� v?n n?ng ??ng th? hi?n b?n l?nh ?�n �ng ?�ch th?c.', 9);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (31, N'D?u ?n Neptune',11, 45000, 10, 0.2, N'D?u ?n Neptune 1:1:1 l� lo?i d?u th?c v?t th? h? m?i t?t cho s?c kh?e c?a c�ng ty d?u th?c v?t C�i L�n. ?�y c?ng l� lo?i d?u th?c v?t duy nh?t tr�n th? tr??ng ???c s?n xu?t t? h?n h?p d?u g?o, d?u h?t c?i, d?u ??u n�nh v� d?u Olein, kh�ng ch?a a-x�t b�o c?u h�nh trans, kh�ng cholesterol r?t t?t cho s?c kh?e tim m?ch�', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (32, N'D?u ?n h??ng d??ng Nga',11, 52000, 10, 0.2, N'D?u ?n h??ng d??ng Nga ???c l�m t? 100% h?t h??ng d??ng nguy�n ch?t, ???c s?n xu?t d?a tr�n c�ng ngh? �p l?nh kh�ng tinh ch?. V� v?y, gi? ???c ??y ?? c�c th�nh ph?n vitamin v� kho�ng ch?t c� l?i cho s?c kh?e nh?: vitamin A, B,E v� c�c axit kh�ng b�o h�a ?a (Omega 3, 6, 9) v� c� m�u v�ng t? nhi�n.i', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (33, N'D?u ?n Meizan',11,  41000, 10, 0.2, N'D?u ?n Meizan c?ng l� m?t s? l?a ch?n th�ng minh cho c�c b� n?i tr?. Meizan c� ?a d?ng c�c lo?i d?u ?n ??u c� l?i cho s?c kh?e nh?: D?u th?c v?t Meizan, D?u ??u n�nh Meizan, B? th?c v?t Meizan, D?u m� th?m h?o h?ng Meizan. ', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (34, N'D?u ?n Simply',11, 49000, 10, 0.2, N'd?u ??u n�nh Simply ???c l�m t? 100% ??u n�nh nguy�n ch?t, l� m?t trong nh?ng lo?i d?u th?c v?t ???c s? d?ng r?ng r�i nh?t tr�n th? gi?i b?i nh?ng l?i �ch s?c kh?e, th�nh ph?n v� ch?t ch?ng oxi h�a v?n c�n l?u l?i trong d?u ngay c? sau khi ???c tinh luy?n.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (35, N' D?u ?n olive',11, 221000, 10, 0.2, N'l� m?t ng??i m? ??m ?ang th� kh�ng th? kh�ng quan t�m ??n s?c kh?e c?a con c�i ??c bi?t l� tr? nh? t? 3 - 5 tu?i. ?�y l� giai ?o?n ph�t tri?n c?a tr?. Tr? c?n nh?ng th?c ?n ??y ?? dinh d??ng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (36, N'D?u ?n C�i L�n',11,  28000, 10, 0.2, N'D?u ?n C�i L�n l� m?t th??ng hi?u d?u ?n n?i ti?ng, l�u ??i mang th??ng hi?u Vi?t Nam. D?u ?n h?o h?ng C�i L�n ???c s?n xu?t theo quy tr�nh hi?n ??i, h?p v? sinh an to�n th?c ph?m. Nh?ng nguy�n li?u ?? tinh ch? ???c ch?n l?c m?t c�ch s�t sao. ', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (37, N'D?u ?n T??ng An',11,  95000, 10, 0.2, N'H�ng d?u ?n T??ng An v?i kinh nghi?m s?n xu?t g?n 35 n?m c�ng nh?ng thi?t b? m�y m�c, ch? bi?n hi?n ??i, ng�y c�ng ???c c?i ti?n v� n�ng c?p. ??i v?i T??ng An, m?c ti�u quan tr?ng nh?t l� kh�ng ng?ng c?i ti?n n�ng cao ch?t l??ng v� an to�n th?c ph?m, ?�p ?ng t?t nh?t m?i y�u c?u c?a kh�ch h�ng.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (38, N'D?u ?n cao c?p Ranee ',11, 24000, 10, 0.2, N'D?u ?n cao c?p Ranee 100% t? c� ???c s?n xu?t v?i d�y chuy?n c�ng ngh? v?t l� tinh luy?n t? Ch�u �u, gi�p x? l� m�i t?i ?u nh?ng v?n l?u gi? tron v?n c�c d??ng ch?t t? nhi�n t? c� nh? omega 3-6-9, DHA/EPA v� Vitamin E', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (39, N'D?u ?n Marvela',11,  35000, 10, 0.2, N'D?u ?n Marvela l� th??ng hi?u n?i ti?ng ? Vi?t Nam. ???c m?i ng??i tin d�ng v� s? d?ng su?t nh?ng n?m qua. C?ng gi?ng c�c th??ng hi?u kh�c, Marvela cho ra ??i nhi?u lo?i d?u ?n v?i nh?ng nguy�n li?u, th�nh ph?n kh�c nhau. K�o theo ?� l� nh?ng c�ng d?ng kh�c nhau.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (40, N'B? M? ph?m d??ng tr?ng da Ohui White Extreme',3, 110000, 10, 0.2, N'V? t?ng quan b? m? ph?m H�n Qu?c Ohui Extreme White l� d�ng s?n ph?m d??ng tr?ng da cao c?p ???c Ohui ph�t tri?n nh?m gi�p ph�i ??p nu�i d??ng, t�i t?o v? t??i s�ng cho l�n da, mong mu?n ?em ??n cho ph�i ??p m?t s? thay ??i ??t ph�, th� v?, l�n da ??p, s�ng trong kh�ng t� v?t c�ng t�m tr?ng vui v? v� cu?c s?ng h?nh ph�c.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (41, N'Kem ch?ng n?ng Ohui Black',3,  310000, 10, 0.2, N'Ohui Perfect Sun Black c� ch? s? ch?ng n?ng ? m?c ph� h?p (SPF50+/PA++++) gi�p ch?ng n?ng hi?u qu?. Ngo�i t�c d?ng c?a kem ch?ng n?ng th� s?n ph?m n�y c�n gi�p d??ng s�ng da v� c?p ?m hi?u qu?. ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (42, N'Kem d??ng Innisfree balancing cream',3,  310000, 10, 0.2, N'?�y ???c xem nh? d�ng s?n ph?m d??ng ch? ??o v� ???c ?�nh gi� cao nh?t c?a h�ng. Green tea balancing cream � Kem d??ng ?m c�n b?ng V?i chi?t xu?t t? tr� xanh s? cung c?p, b? sung d??ng ch?t cho da m?t.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (43, N'M?t n? ng? Laneige Water Sleeping Mask',3,  110000, 10, 0.2, N'S?n ph?m c� d?ng gel l?ng m?n ch?a �n??c t? b?ng tuy?t tan�, tinh ch?t t? qu? m? Hunza v� tinh ch?t h?t d? th?m nhanh v�o da v� gi�p cung c?p dinh d??ng cho t? b�o da c?ng nh? l�m hydrat h�a l�n da ?? gi? ?m v� thay ??i s?c t? da ?? l�m tr?ng.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (44, N'Ph?n n??c d??ng tr?ng Laneige BB',3,  310000, 10, 0.2, N'Laneige whitening l� m?t s?n ph?m 5 trong 1 mang t�nh �c�ch m?ng� c?a h�ng trong c�ng cu?c l�m ??p, v?i ?? che ph? ch?ng n?ng SPF 50, l??ng n??c kho�ng t?i ?u, hi?u ch?nh m�u s?c t?t c? trong m?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (45, N'Son m�i Mamonde Highlight Lip Tint',3,  110000, 10, 0.2, N'Th?i son tint Mamonde n�y c� thi?t k? c?c ??n gi?n nh?ng ?�ng y�u v?i th�n son nh?a c� m�u t??ng ?ng v?i m�u son b�n trong.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (46, N'M? ph?m Sulwhasoo',3, 110000, 10, 0.2, N'Sulwhasoo ???c ?�n nh?n nhi?t t�nh nh? c�c s?n ph?m ch?t l??ng cao, ???c nghi�n c?u v� chi?t xu?t t? h?n 3,000 lo?i th?o m?c v� c�c lo?i d??c li?u qu�.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (47, N'S?a r?a m?t Herb Day 365',3,  300000, 10, 0.2, N'M?t trong nh?ng s?n ph?m n?i b?t nh?t c?a h�ng ch�nh l� d�ng s?a r?a m?t t?o b?t Herb Day 365 Cleansing Foam TheFaceShop, d�ng s?n ph?m g?m 6 m�i h??ng t??i tr? c� th? d�ng nh? m?t lo?i kem t?y trang d�ng sau khi trang ?i?m', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (48, N'Son Etude house dear darling tint',3, 110000, 10, 0.2, N'?�y l� m?t s?n ph?m ?ang l�m m?a l�m gi� t?i th? tr??ng Vi?t Nam th?i gian g?n ?�y b?i ?? �cute� v� ??i c?a thi?t k? h�nh que kem b� b� xinh xinh.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (49, N'M?t n? ???ng ?en d�u skinfood',3,  110000, 10, 0.2, N'L� m?t h�ng m? ph?m H�n Qu?c ch?t l??ng ?a d?ng c�c s?n ph?m t? ch?m s�c da ??n trang ?i?m gi� th�nh h?p l� v� ?�ng ?? th? khi b?n mu?n t�m m?t h�ng m? ph?m b�nh d�n ch?t l??ng.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (50, N'Me Cay R?ng Con',6,  51000, 10, 0.2, N'ME X� MU�I CHUA CAY v?a l� m�n ?n v?t h?p d?n v� l? mi?ng, v? chua c?a me, m?n, ng?t c?a ???ng v� mu?i k?t h?p v?i m?t �t cay c?a ?t t?o n�n m?t s?n ph?m r?t ??c bi?t', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (51, N'??u Ph?ng N??c C?t D?a',6, 51000, 10, 0.2, N'Kh�ch ?n v�o s? c?m nh?n ???c ?? gi�n, b�o, ?? x?p. S?n ph?m ho�n to�n kh�ng th�m ch?t b?o qu?n, gi? nguy�n h??ng v? t? nhi�n c?a s?n ph?m. D�ng ???c cho ng??i ?n chay.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (52 ,N'??u H� Lan S?y Mu?i',6,  51000, 10, 0.2, N'??u H� Lan S?y v? ph� mai ?n v�o v?a x?p, v?a gi�n, v?a c� ?? b�o c?a ph� mai, h?t ??u H� Lan kh�ng c?ng, kh�ng chai.', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (53, N' t�o ?? t�n c??ng',6, 110000, 10, 0.2, N'T�O ?? C?A NG??I H�N QU?C kh�c h?n nh?ng lo?i t�o ?? ???c tr?ng ? Trung Qu?c hay n?i kh�c v� tr�i to, ng?t, h?t r?t nh?, th?m', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (54, N'H?t macca ',6,  290000, 10, 0.2, N'C� xu?t x? t?i ch�u �c, khu v?c c� kh� h?u nhi?t ??i v� c?n nhi?t ??i c�ng v?i ??c tr?ng n?i ?�y c�c lo?i kho�ng s?n phong ph� n�n h�m l??ng dinh d??ng c� trong h?t m?c ca t? ?� c?ng x?p h?ng cao nh?t trong c�c lo?i h?t dinh d??ng', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (55, N'Qu? �c ch� m? ?� s?y ch�n',6,  110000, 10, 0.2, N'Qu? �c ch� c� t�n ti?ng Anh l� Walnuts hay t�n kh�c qu? H? ?�o (Juglans regiaL) l� m?t h? th?c v?t c� hoa bao g?m c�c lo?i c�y th�n g? trong b? D? (Fagales). Lo?i qu? n�y c� h?n 20 lo?i kh�c nhau v� ???c tr?ng ch? y?u ? California walnuts � M? (USA) ', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (56, N'H?T CHIA T�M NH?P KH?U �C',6, 69000, 10, 0.2, N'H?t Chia hay c�n g?i l� Salvia l� th?c ph?m ch?a nhi?u ch?t dinh d??ng hi?m c� trong th? gi?i th?c ph?m, ??c bi?t l� nh?ng vi ch?t m� ch�ng ta kh� c� th? b? sung ???c b?ng thu?c b? ', 7);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (57, N'1kg h?t sen kh�',6,  169000, 10, 0.2, N'H?n s? d?ng: 6 th�ng.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (58, N' Kh� c� ch? v�ng ',6,  210000, 10, 0.2, N'C� ch? v�ng l� m?t lo?i c� b? d??ng v� th?m ngon v� trong th?t c� c� ch?a r?t nhi?u protein, lipid v� c?c k? nhi?u omega 3 t?t cho tim m?ch v� m?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (59, N'Kh� c� s?c Vi?t H�',6,  100000, 10, 0.2, N'Kh� c� s?c ngon ? ch? b?ng kh� c� r?t b�o v� th?m. Nh?ng c?ng ch�nh v� b?ng c� r?t ngon n�n khi ch? bi?n c?n l�m s?ch m�i tanh v� khi ph?i ph?i b?o qu?n c?n th?n kh?i ru?i ??u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (60, N'Kh� c� l??i tr�u Song Ph??ng',6,  450000, 10, 0.2, N'C� l??i tr�u l� m?t lo�i c� s?ch, �t x??ng, th?t ng?t, l�nh t�nh v� s?ng trong thi�n nhi�n. Kh� c� l??i tr�u ???c ?�nh gi� l� kh� ngon nh?t tuy ??m b?c nh?ng ??c ?�o nh? th?t ng?t, m?m v� m�i v? th?m ngon kh�ng ch� ???c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai, DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (61, N'Kh� c� c?m s?a Phong Ph??ng',6,  110000, 10, 0.2, N'C� c?m s?a l� m?t lo?i c� c?m r?t nh?, d�i ch? kho?ng 3 ph�n, th?t trong su?t. C� c?m s?a c� h??ng v? r?t ??m ?�, th?t c� ngon ng?t v� c?c k? gi�u ch?t dinh d??ng, kh�ng h? thua k�m c�c lo?i c� kh�c.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (62, N'Kh� c� ?� Song Ph??ng',6, 110000, 10, 0.2, N'Kh� c� ?� nhi?u th?t v� �t x??ng h?n h?n c�c lo?i c� kh�c. C� ?� ngon ? ch? ph?n th�n sau c?a c� c?c k? b�o v� nhi?u m?. Th?t c� kh� l� ng?t, b�i b�i v� v?i ?i?m nh?n l� v? b�o ? ph?n ?u�i l�m ch�ng ta ?n ho�i kh�ng th?y ng�n.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (63, N'Gi?y v? sinh CAT Premium',2, 20000, 10, 0, N'10 cu?n/ t�i, 3 l?p. N?i s?n xu?t:Vi?t Nam, B?o h�nh:5 N?m', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (64, N'GI?Y V? SINH CU?N L?N CHUY�N CHO KS, T�A NH�, VP, NH� H�NG',2, 24500, 10, 0, N'Ph�n h?y trong n??c nhanh gi?m thi?u nguy c?t?c ngh?n. Dai v?a ph?i, h?i b�ng x?p, �m nh?', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (65, N'GI?Y CU?N D�I TH?M H�T D?U ?N',2, 17000, 10, 0, N'Th�nh ph?n: 100% B?t gi?y.??c ?i?m: Kh�ng l?n gi?y t�i ch?, kh�ng h�a ch?t ??c h?i', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (66, N'B? kh?n s?a Mollis 100% bamboo ',2, 209000, 10, 0, N'???c l�m t? 100% s?i bamboo, c?c k? m?m m?i v� tho�ng m�t, gi�p cho m? v? sinh m?t, m?i cho em b� m� kh�ng s? kh�, r�t b�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (67, N'Kh?n l?nh Wuna kh�ng m�i ',2, 180000, 10, 0, N'Th�nh ph?n V?i kh�ng d?t, n??c tinh khi?t R.O, Quaternary Ammonium Salts, Citric Acid, h??ng th?m', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (68, N'Kh?n gi?y ??t d?ng n�n Nikkori 50 c�i',2, 85000, 10, 0, N'Kh?n gi?y n�n m?m m?i, h?p v? sinh, ti�u h?y nhanh, kh�ng ?nh h??ng ??n m�i tr??ng, an to�n m?i lo?i da. ??c bi?t l�n da tr? s? sinh', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (69, N'Kh?n ??t Hensley kh�ng m�i ',2, 48500, 10, 0, N'Kh�ng c� ch?t t?ng tr?ng quang h?c, kh�ng ch?a c?n, kh�ng ch?t t?o m�u, kh�ng ho� ch?t b?o qu?n, kh�ng h??ng li?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (70, N'Kh?n ??t em b� Bobby',2,39000, 10, 0, N'Ch?m s�c v? sinh da, th�ch h?p khi thay t� cho b�, t?ng c??ng kh? n?ng kh�ng khu?n nh? c�ng ngh? Nano B?c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (81, N'B�n ch?i cho b� t? 4 tu?i Splat',5, 89000, 10, 0, N'L�ng b�n ch?i l�m b?ng v?t li?u cao c?p ch?a ion b?c ng?n ng?a s? ph�t tri?n c?a vi khu?n v� l�m s?ch hi?u qu? Kh�ng ch?a', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (82, N'B? 3 b�n ch?i Oral-B Pro-Health',5, 80000, 10, 0, N'Ch?i r?ng theo h??ng d?n c?a nha s?. R?a s?ch b�n ch?i sau khi s? d?ng. C?m th?ng v� gi? n?i kh� r�o', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (83, N'B? 2 b�n ch?i Oral-Clean Spiral Carbon Gold',5, 69000, 10, 0, N' Ch?i r?ng theo h??ng d?n c?a nha s?. R?a s?ch b�n ch?i sau khi s? d?ng. C?m th?ng v� gi? n?i kh� r�o', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (84, N'B�n ch?i ?�nh r?ng ng??i l?n Bamboo Salt',5, 49000, 10, 0, N'B�n ch?i ?�nh r?ng ng??i l?n Bamboo Salt mu?i h?ng Himalaya l�ng t? m?m m?i HSD h?n 3 n?m', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (85, N'Kem ?�nh r?ng Splat Special th?o m?c',5, 127000, 10, 0, N'N�n ch?i r?ng 2 l?n/ng�y sau khi ?n. S? d?ng trong v�ng 12 th�ng sau khi m? n?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (86, N'Kem ?�nh r?ng Splat Special than ho?t t�nh',5, 127000, 10, 0.5, N'N�n ch?i r?ng 2 l?n/ng�y sau khi ?n. S? d?ng trong v�ng 12 th�ng sau khi m? n?p', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (87, N'Kem ?�nh r?ng Splat ph?c h?i men & tr?ng r?ng',5, 84000, 10, 0, N' N�n ch?i r?ng 2 l?n/ng�y sau khi ?n. S? d?ng trong v�ng 12 th�ng sau khi m? n?p', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (88, N'Kem ?�nh r?ng Colgate Sensitive Pro Relief Complete',5, 69000, 10, 0, N' Gi?m � bu?t nhanh ch�ng v� l�u d�i, ng?a s�u r?ng, ch?m s�c n??u, gi�p tr?ng r?ng, gi?m m?ng b�m, b?o v? men r?ng, h?i th? th?m m�t', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (89, N'Kem ?�nh r?ng Perioe Pumping h??ng b?c h�',5, 169000, 10, 0, N'Tr? d??i 2-6 tu?i ch? s? d?ng m?t l??ng kem nh? b?ng h?t ??u v� c?n s? h??ng d?n c?a ng??i l?n. Tr? em d??i 2 tu?i c?n c� s? t? v?n c?a nha s? ho?c b�c s?', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (90, N'B?t ?�nh tr?ng r?ng Eucryl Toothpowder',5 , 55000, 10, 0, N'Lo?i b? m?ng b�m b?n, gi�p tr?ng r?ng, ng?n h�i mi?ng, r?ng s�ng b�ng, ch?c kh?e', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (91, N'N??c ng?t c� ga Coca Cola Zero chai 390ml',7, 6500, 10, 0, N'N??c b�o h�a CO2, m�u t? nhi�n, ch?t ?i?u ch?nh ?? acid, ch?t t?o ng?t t?ng h?p, ch?t b?o qu?n, h??ng cola t? nhi�n v� caffeine.', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (92, N'24 lon n??c t?ng l?c Monster Energy Ultra 355ml',7, 696000, 10, 0, N'L?c nh? tr??c khi u?ng, d�ng ngay sau khi m? n?p. Ngon h?n khi u?ng l?nh.', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (93, N'Tr� xanh h??ng chanh C2 Plus Immunity �t ???ng 500ml',7, 12000, 10, 0, N'?? n?i kh� r�o, tho�ng m�t, tr�nh �nh s�ng tr?c ti?p ho?c n?i c� nhi?t ?? cao.', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (94, N'n??c ng?t Mirinda v? cam 330ml',7, 8000, 10, 0, N'N??c b�o ho� CO2, ???ng m�a, ???ng HFCS, ch?t ?i?u ch?nh ?? acid, tinh b?t bi?n t�nh, ch?t b?o qu?n, ch?t nh? ho�, h??ng cam t? nhi�n, m�u t?ng h?p', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (95, N'n??c t?ng l?c Wake Up 247 v? c� ph� 330ml',7, 7800, 10, 0, N' N??c, ???ng, C02 th?c ph?m, m�u t?ng h?p caramen, h??ng vani, h??ng c� ph�, caffeine, taurine, inositol, vitamin B3, vitamin B6, ch?t ?i?u ch?nh ?? axit, mu?i', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (96, N't?ng l?c Compact v? cherry 330ml',7, 9100, 10, 0, N'N??c, ???ng, glucose syrup, ch?t ?i?u ch?nh ?? acid (330, 500ii), ch?t t?o kh� carbonic (290), h??ng li?u (h??ng m?t hoa t? nhi�n, h??ng cherry t?ng h?p, gi?ng t? nhi�n)', 10);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (97, N'tr� xanh matcha Tea Plus 455ml',7, 82000, 10, 0, N' ?? n?i kh� r�o, tho�ng m�t, tr�nh �nh s�ng tr?c ti?p ho?c n?i c� nhi?t ?? cao.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (98, N'Revive chanh mu?i 390ml',7, 78000, 10, 0, N'L?c nh? tr??c khi u?ng, d�ng ngay sau khi m? n?p. Ngon h?n khi u?ng l?nh.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (99, N'C� ph� ?en TNI King Coffee Espresso 250g ( 100 g�i x 2.5g )',7, 295000, 10, 0, N'U?NG N�NG d�ng 1 g�i pha v?i 70ml n??c n�ng. C� th? th�m s?a ho?c ???ng tu? s? th�ch', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (100, N'Strongbow d�u ?en 330ml',7, 21000, 10, 0, N' S?n ph?m d�nh cho ng??i tr�n 18 tu?i v� kh�ng d�nh cho ph? n? mang thai. Th??ng th?c c� tr�ch nhi?m, ?� u?ng ?? u?ng c� c?n th� kh�ng l�i xe!', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (101, N'bia Heineken 0.0% ?? c?n 330ml',7, 15000, 10, 0, N' S?n ph?m d�nh cho ng??i tr�n 18 tu?i v� kh�ng d�nh cho ph? n? mang thai. Th??ng th?c c� tr�ch nhi?m, ?� u?ng ?? u?ng c� c?n th� kh�ng l�i xe!', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (102, N'bia Tiger Crystal 330ml',7, 11000, 10, 0, N'Bia Tiger Crystal 330ml kh�ng ch? ??t ??n ch?t l??ng r?ng danh tr�n to�n th? gi?i m� c�n mang ??n c?m gi�c th?t s?ng kho�i v� r?t d? u?ng cho ng??i d�ng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (103, N'chai tr� s?a Kirin Tea Break 345ml',7, 10000, 10, 0, N'Tr� s?a Tea Break chai 345ml v?i nguy�n li?u t? nhi�n k?t h?p v?i nhau t?o n�n h??ng v? c?a s?a r?t ??c tr?ng.  kh�ng qu� b�o gi�p ng??i d�ng c?m th?y ngon mi?ng kh�ng b? ng?y.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (104, N'h?p s?a t??i nguy�n ch?t kh�ng ???ng Vinamilk 100% Organic 1 l�t',8, 52000, 10, 0, N'S?a t??i ti?t tr�ng Vinamilk c� h??ng v? s?a t??i 100% h?u c? th?m ngon, h?p d?n.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (105, N'h?p s?a t??i ti?t tr�ng ???ng ?en Nutimilk 1 l�t',8, 38000, 10, 0, N'S?a b� t??i, ???ng tinh luy?n, si-r�, ???ng ?en, ch?t ?n ??nh, h??ng li?u t?ng h?p d�nh cho th?c ph?m,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (106, N's?a t??i ti?t tr�ng h??ng d�u TH true MILK 180ml',8, 32000, 10, 0, N'th?m ngon, d? u?ng, ???c l�m ho�n to�n t? ngu?n s?a t??i s?ch. Trong s?a ch?a nhi?u d??ng ch?t thi?t y?u t?t cho s?c kho? nh? Vitamin A, D, B1, B2, Canxi, k?m...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (107, N'Th�ng 12 h?p s?a t??i ti?t tr�ng TH true MILK Organic',8, 378000, 10, 0, N'S?n ph?m h?u c? kh�ng ch?a ch?t b?o qu?n, r?t an to�n cho s?c kho?, trong s?a c�n ch?a nhi?u d??ng ch?t thi?t y?u c?ng nh? h??ng v? th?m ngon, b�o ng?y ??c tr?ng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (108, N'Th�ng 12 h?p s?a ??u ?en �c ch� h?nh nh�n Sahmyook',8, 950000, 10, 0, N' N??c ??u ?en, b?t ??u n�nh, ???ng tr?ng, siro ng� fructose cao, ch?t nh? h�a, b?t qu? �c ch�, b?t ??u ?en, b?t h?nh nh�n, mu?i, b? h?t th�ng, d?u th?c v?t.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (109, N's?a ??u n�nh h?nh nh�n Vinamilk 180ml',8, 12000, 10, 0, N'Ph� h?p D�ng cho tr? t? 4 tu?i tr? l�n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (110, N'Th�ng 16 h?p s?a ??u n�nh v? h?nh nh�n v� �c ch� Vegemil',8, 216000, 10, 0, N'S?a ??u n�nh (n??c tinh khi?t, ??u n�nh 7%), ???ng, maltooligosacarit, xi r� ng� h�m l??ng cao fructose, n??c, qu? �c ch� v� h?n h?p c�c lo?i h?t ', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (111, N'Ng�i sao Ph??ng Nam xanh l� ',8, 60000, 10, 0, N'Th�ch h?p Pha c� ph�, xay sinh t?, l�m s?a chua, b�nh flan...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (112, N'Kem ??c c� ???ng DeliPure lon 1kg',8, 35000, 10, 0, N'Pha m?t l??ng creamer theo kh?u v? s?n ph?m v?i kho?ng 60ml n??c ?un s�i, sau ?� ?? ngu?i r?i u?ng.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (113, N'S?a ??c c� ???ng �ng Th? tr?ng nh�n v�ng lon 380g',8, 29000, 10, 0, N'Pha m?t ph?n s?a v?i 3 ph?n n??c ?m ?? u?ng ho?c pha c�ng c� ph�, ?n c�ng b�nh m�,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (114, N'Th�ng 24 chai s?a chua u?ng nha ?am Vinamilk Yomilk 150ml',8, 139000, 10, 0, N'Th�nh ph?n N??c, ???ng tinh luy?n, ch?t b�o s?a,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (115, N'L?c 8 h?p s?a l�a m?ch Milo Active Go 115ml',8, 34000, 10, 0, N'N??c, s?a - milk 35% n??c, s?a b?t, ch?t b�o s?a, b?t whey t? s?a), PROTOMALT 3,3% (chi?t xu?t t? m?m l�a m?ch - extract from malted barley), ???ng 33%),', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (116, N'S?a b?t Ensure Gold l�a m?ch �t ng?t h?p 850g',8, 732000, 10, 0, N'?? ?�p ?ng nhu c?u dinh d??ng cho ng??i l?n tu?i, h? tr? t?ng c??ng s?c kh?e, th? ch?t v� ch?t l??ng cu?c s?ng', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (117, N'S?a b?t Frisomum Gold h??ng cam lon 900g',8, 561000, 10, 0, N'Ph� h?p Ph? n? mang thai v� cho con b�', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (118, N'Rong bi?n h?u c? ?n li?n cho b� Alvins h?p 20g',9, 118000, 10, 0, N'Th�nh ph?n Rong bi?n (ch?ng nh?n h?u c? H�n Qu?c), d?u Canola, mu?i bi?n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (119, N'Snack khoai t�y Slide v? ph� mai lon 160g',9, 48000, 10, 0, N'Tha?nh ph�?n V�?y khoai t�y (70%), b?t gia vi? ph� mai, tinh b?t khoai t�y, tinh b?t khoa m�i ', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (110, N'Snack que nh�n c� ph� moka v� s?a d?a Akiko Oishi lon 240g',9, 46000, 10, 0, N'Kh�ng d�ng cho ng??i d? ?ng v?i s?a, tr?ng, ??u n�nh, l�a m� t? b?t gia v?. S?n ph?m c� th? ch?a c� t? s?n ph?m kh�c, s?n xu?t tr�n c�ng d�y chuy?n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (111, N'Snack da c� v? ?t xanh Pati g�i 50g',9, 41000, 10, 0, N' Da c� 85%, gia v? ?t xanh (maltodextrin, ???ng, dextrose, mu?i, ch?t ?i?u v?, protein th?c v?t thu? ph�n, gia v? - t?i, ?t c?a g�, th� l�, b?t t?i, b?t gi?m, h??ng t? nhi�n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (112, N'Snack que nh�n s?a v� ph� mai Akiko Oishi lon 240g',9, 39000, 10, 0, N'Kh�ng d�ng cho ng??i d? ?ng v?i s?a, tr?ng, ??u n�nh, l�a m� t? b?t gia v?. S?n ph?m c� th? ch?a c� t? s?n ph?m kh�c, s?n xu?t tr�n c�ng d�y chuy?n', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (113, N'B�nh quy b? Danisa h?p 681g',9, 191000, 10, 0, N' B?t l�a m�, ???ng, b? (18.67%), d?u th?c v?t (ch?a ch?t ch?ng oxy h�a tocopherol), glucose syrup, tr?ng, d?a s?y, nho kho, b?t s?a t�ch b�o, mu?i, ch?t t?o x?p E503, h??ng vani t?ng h?p.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (114, N'B�nh quy b? th?p c?m LU h?p 708g',9, 235000, 10, 0, N'B?t m�, ???ng, b? Ph�p (12%), shortening, nh�n s�c�la h?n h?p (???ng, ch?t b�o th?c v?t hydro h�a, b?t cacao, dextrose, ch?t nh? h�a (322(i)), h??ng th?c ph?m t?ng h?p, mu?i)', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (115, N'B�nh quy ng? c?c kh�ng ???ng Vitamia g�i 330g',9, 112000, 10, 0, N'B?t m� (35,4%), ng? c?c d?ng b?t v� v?y (24,6%), ch?t t?o ng?t t?ng h?p, d?u h??ng d??ng, b?, mu?i, ch?t t?o x?p,...', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (116, N'B�nh g?u 3 v? Assortment Meiji Hello Panda ',9, 108000, 10, 0, N' S?n ph?m c� ch?a b?t m�, l�a m?ch (ng? c?c ch?a gluten), s?a v� ??u n�nh, c� th? ch?a h?t m�.', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (117, N'K?o Ferrero Confetteria Raffaello ',9, 180000, 10, 0, N' D?a kh� 25.5%, ch?t b�o th?c v?t, ???ng, h?t h?nh nh�n nguy�n h?t 8%, s?a b?t g?y, whey b?t, b?t m�, tinh b?t s?n, h??ng li?u t? nhi�n v� gi?ng t? nhi�n, ch?t nh? ho�, ch?t t?o x?p', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (118, N'B�nh g?o v? ng?t Richy g�i 315g',9, 40000, 10, 0, N'G?o th?m, d?u th?c v?t, ???ng tinh luy?n, tinh b?t khoai t�y, mu?i, gelatin, monosodium glutamate, ch?t ?i?u v?', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (119, N'B�nh que Glico Pocky d�u v� socola',9, 100000, 10, 0, N'Th�nh ph?n B?t m�, ???ng, d?u th?c v?t, b?t s?a t�ch b�o,..', 14);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (120, N'Socola Ferrero h?p 375g',9, 360000, 10, 0, N'Socola s?a 30% (???ng, b?, ca cao, b?t ca cao, s?a b?t g?y, ch?t b�o s?a d?ng khan, ch?t nh? ho�, ch?t t?o x?p, h??ng li?u gi?ng t? nhi�n, h?t ph? 28.5%, mu?i,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (121, N'Th�ng 30 g�i m� Mama h??ng th?t b� h?m 60g',10, 190000, 10, 0, N' B?t m� 79%, d?u c?, mu?i, ???ng, gia v?, ch?t ?i?u v? (E621, E35), h??ng li?u (c?n t�y) 0.75%, n??c t??ng (??u t??ng, mu?i, chi?t xu?t m?ch nha, l�a m�, n?m men, d?u c?), h�nh t�y s?y kh�', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (122, N'Th�ng 40 g�i m� b� cay Samyang Sutah Ramen 120g',10, 840000, 10, 0, N'ho m�, g�i s�p, g�i rau v�o trong 550ml n??c s�i v� n?u kho?ng 4-5 ph�t. ?? h??ng v? ngon h?n, c� th? th�m kim chi, tr?ng, t?i v� h�nh l�.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (123, N'Th�ng 10 t�i m� Koreno Jumbo v? kim chi 1kg',10, 760000, 10, 0, N'?un s�i 400ml ~ 450ml n??c. Cho v?t m�, g�i gia v?, g�i rau v�o n?i c�ng m?t l�c, n?u trong 4 ph�t. Sau ?� t?t b?p, m�c ra b�t v� d�ng ???c ngay. S? ngon h?n khi b?n cho th�m tr?ng, h�nh, rau th?m.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (124, N'Th�ng 50 g�i m� Udon Hanil Bongojang 200g',10, 745000, 10, 0, N' N??c 64%, b?t m� 34.16%, tinh b?t s?n 0.95%, mu?i 0.79%, ch?t ?i?u ch?nh v? chua (axit lactic, axit acetic, sodium laclate, axit adipic, n??c) 0.1%.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (125, N'Th�ng 36 ly m� Mama v?t ti?m 60g',10, 610000, 10, 0, N'B?t m� 75,48%, d?u c? 6,25%, d?u n�nh 1,75%, gia v? 1,21%, h??ng v?t 0,75%, b?t t?i, b?t ?t, b?t ng?t,...', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (126, N'Th�ng 20 g�i m� cay h?i s?n Paldo 120g',10, 399000, 10, 0, N' Cho m�, g�i gia v? v�o 560ml n??c s�i v� n?u trong 4 ph�t cho m� m?m. Khu?y ??u m� ?? ?n.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (127, N'Th�ng 18 g�i m� th?t b?m Vifon Ho�ng Gia 120g',10, 250000, 10, 0, N' Cho v?t m� v� c�c g�i gia v? v�o t�. R�t v�o t� kho?ng 400ml n??c s�i. ??y k�n n?p t� v� ch? kho?ng 3 ph�t. M? n?p, c?t g�i th?t h?m cho v�o t�, khu?y ??u l� c� th? d�ng ???c.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (128, N'g�i m� V? H??ng gi?y v�ng 60g',10, 2500, 10, 0, N'Cho v?t m� v� c�c g�i gia v? v�o t�. Ch? n??c s�i v�o kho?ng 350ml, ??y n?p l?i v� ch? trong 3 ph�t. M? n?p, tr?n ??u v� d�ng ???c ngay.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (129, N' m� th?t b?m Vifon Ho�ng Gia 120g',10, 3000, 10, 0, N'Cho v?t m� v� c�c g�i gia v? v�o t�. R�t v�o t� kho?ng 400ml n??c s�i. ??y k�n n?p t� v� ch? kho?ng 3 ph�t. M? n?p, c?t g�i th?t h?m cho v�o t�, khu?y ??u l� c� th? d�ng ???c.', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (130, N'm� rong bi?n Jin Ottogi 120g',10, 12000, 10, 0, N'1/Tr??c ti�n cho 550ml n??c v�o n?i v� g�i rau c? s?y kh� v�o ?un s�i.2/Khi n??c s�i th� cho g�i s�p gia v? v� m� v�o r?i ?un s�i kho?ng 5 ph�t l� ???c', 24);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (131, N'C�y ?�nh tr?ng Silicone 25cm Shika',13, 52000, 10, 0, N'D�i 25 cm c?m g?n tay ng??i l?n, tr?ng l??ng nh? ti?n thao t�c, d�ng l�u kh�ng s? m?i tay', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (132, N'Khu�n l�m kem nh?a Hofaco HPL64',13, 35000, 10, 0, N'K�ch th??c 14.5cm x 13cm x 8.8cm', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (133, N'Phin c� ph� inox Tithafac 7cm',13, 31000, 10, 0, N'C�ng d?ng S? d?ng pha ch? c� ph� truy?n th?ng, ch?t l?c gi?t c� ph� s?ch c?n, th?m ngon', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (134, N'V? h?p nh?a ?i?n m�y XANH LD-SU616 24cm',13, 80000, 10, 0, N'V? h?p thi?t k? n�u x�m, ???ng k�nh vi?n 24.5 cm g?n ??p ti?n d?ng. V? h?p c� th? ?i?u ch?nh ph� h?p v?i t?ng lo?i n?i ch?o c� ???ng k�nh kh�c nhau ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (135, N'B?p c?n inox Rainy hoa mai 23 BCI',13, 65000, 10, 0, N' B?p ???c l�m b?ng inox c� ?? b?n cao, c� ?u ?i?m t?a nhi?t ??u, n�ng nhanh, ti?t ki?m nhi�n li?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (136, N'B?p c?n inox Rainy tr�ng men 23 BCM',13, 70000, 10, 0, N'B?p ???c l�m b?ng inox tr�ng men c� ?? b?n cao, c� ?u ?i?m t?a nhi?t ??u, n�ng nhanh, ti?t ki?m nhi�n li?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (137, N'Gel r?a tay kh� Kleen h??ng tr� xanh chai 630ml',14, 110000, 10, 0, N'S? d?ng c?n 96% v� d??ng ch?t gi�p kh�ng khu?n hi?u qu? v� d??ng ?m da tay', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (138, N'Gel r?a tay kh� Kleen h??ng o?i h??ng chai 630ml',14, 110000, 10, 0, N'Cho m?t l??ng nh? v�o l�ng b�n tay v� xoa ??u. Kh�ng c?n r?a tay l?i v?i n??c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (139, N'Gel r?a tay kh� Dr. Clean h??ng lavender chai 500ml',14, 106000, 10, 0, N'L�m s?ch 99.9% vi khu?n. ?�i tay lu�n m?m m?i, s?ch s?, t??i m�t v� bay b?ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (140, N'Gel r?a tay kh� Lifebuoy b?o v? v??t tr?i chai 235ml',14, 72000, 10, 0, N' Ti?n d?ng r?a tay m� kh�ng c?n d�ng n??c. V? sinh, di?t khu?n, kh? s?ch m�i r?t t?t ?? b?o s?c kh?e, gi? cho ?�i tay lu�n s?ch s? v� m?m mai', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (141, N'N??c r?a tay Kirei Kirei h??ng chanh chai 250ml',14, 74000, 10, 0, N'B?t r?a tay Kirei Kirei H??ng chanh Chai 250 ml v?i chi?t xu?t 100% tinh ch?t t? th?o d??c thi�n nhi�n c�ng c�ng th?c di?t khu?n ??c bi?t cho b?n ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (142, N'N??c r?a tay Lifebuoy b?o v? v??t tr?i t�i 443ml',14, 53000, 10, 0, N'L�m ??t tay. Cho m?t l??ng v?a ?? v�o l�ng b�n tay, xoa ??u tr�n tay v� r?a s?ch v?i n??c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (143, N'S?a r?a tay Goodlook d??ng da h??ng t�o 500ml',14, 45000, 10, 0, N' D??ng da v� ng?n ng?a vi khu?n, gi? cho da tay lu�n m?m m?i, m?n m�ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (144, N'N??c r?a tay Aqua Vera d??ng da hoa t? ?inh h??ng 500ml',14, 39000, 10, 0, N'Gi�p l�m s?ch vi khu?n v� b? sung glycerin d??ng ?m m?n m�ng, cho da tay b?n tr? n�n m?m m?i sau khi s? d?ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (145, N'N??c gi?t x? Act',15, 420000, 10, 0, N'Lo?i b? v?t b?n, di?t tr? vi khu?n v� c�c t�c nh�n g�y h?i nh? b?i b?n, b?, ve, r?p v� c�c t�c nh�n g�y d? ?ng, ng?t m?i kh�c. Kh? m�i ngay c? khi ph?i trong ?i?u ki?n ?m ??t, ph?i trong nh�.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (146, N'N??c gi?t Essence h??ng floral 3.5 l�t',15, 309000, 10, 0, N'H�a tan k? n??c gi?t Essence v?i n??c tr??c khi cho qu?n �o v�o n??c v?i t? l? 1 n?p ??y h�a v?i 3 - 4 l�t n??c ng�m qu?n �o trong 5 ph�t, v� nh?, x? qua v?i n??c. ??i v?i m�y gi?t theo t? l? 4 - 6 n?p cho 1 l?n gi?t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (147, N'B?t gi?t Tide chuy�n d?ng 9kg',15, 300000, 10, 0, N'C�ng th?c tr?ng ??t ph� ch?m s�c s?i v?i cho c�c c? s? chuy�n nghi?p. ?�nh bay v� lo?i b? c�c v?t b?n ? c? tay, c? �o, v?t d?u m?, hay b�n ??t b�m d�nh l�u ng�y.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (148, N'N??c gi?t x? h?u c? sinh h?c Giel 2 in 1',15, 300000, 10, 0, N'Ch� xanh, chanh, l� g?i, h? c�y li?u k?t h?p tinh ch?t h??ng hoa t? nhi�n th?m m�t,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (149, N'N??c gi?t x? Sanzoft ',15, 259000, 10, 0, N'Gi?t s?ch qu?n �o, ch?n m�n, v?i v�c. Ph� h?p v?i m?i lo?i v?i. L?u l?i h??ng th?m nh? nh�ng quy?n r?. Gi? s?c m�u qu?n �o lu�n t??i m?i', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (150, N'N??c gi?t Ariel Matic s?ch nhanh 3.64 l�t',15, 239000, 10, 0, N'Th?m s�u v�o t?ng s?i v?i d? d�ng t?y s?ch c�c v?t b?n t?t h?n g?p 2 l?n', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (151, N'B?t gi?t M? H?o 5X di?t khu?n 6kg',15, 220000, 10, 0, N'Lo?i b? c�c v?t b?n kh� gi?t, kh�ng t�i b�m v?t b?n. Di?t khu?n hi?u qu?, kh? m�i m? h�i.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (152, N'N??c gi?t Attack h??ng hoa anh ?�o 2.4kg',15, 180000, 10, 0, N'Gi?t s?ch c�c v?t b?n kh� gi?t nh? v?t d?u m?, d?u xe, v?t b?n t? th�c ?n, ?? u?ng, v?t m?c, v?t b?n c? tay, c? �o cho �o qu?n sachh th?m to�n di?n.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (153, N'S?a t?m h?t ON THE BODY Veilment Spa Lavender 600g',16, 316000, 10, 0, N'Nh? nh�ng l�m s?ch l?p t? b�o ch?t tr�n da nh? th�nh ph?n t? th?c v?t, d?u nh? v� an to�n gi�p da ng�y c�ng s�ng m?n', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (154, N'S?a t?m tinh ch?t th?o m?c Body Shower 750ml',16, 237000, 10, 0, N'Kh�ng khu?n, c�n b?ng ?m, b?o v? da kh?i t�c h?i c?a m�i tr??ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (155, N'S?a t?m Purit� d??ng ?m s?a ong ch�a v� hoa anh ?�o 850ml',16, 210000, 10, 0, N'D??ng ?m s�u t? s?a ong ch�a nh? nh�ng l�m s?ch da, ??ng th?i cung c?p ?? ?m s�u cho da', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (156, N'S?a t?m n??c hoa Enchanteur Deluxe Charming 900g',16, 216000, 10, 0, N'L�m s?ch da, gi�p l�n da m?m m?n, h??ng th?m d�i l�u quy?n r?', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (157, N'S?a t?m Cathy Doll White Tofu 750ml',16, 180000, 10, 0, N'L�m s?ch b?i b?n v� c?n b� d? th?a tri?t ??, d??ng da m?n m�ng tr?ng s�ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (158, N'S?a t?m detox',16, 117000, 10, 0, N'L?y m?t l??ng s?n ph?m v?a ?? ra b�ng t?m ho?c mi?ng b?t bi?n ?� ???c l�m ??t v� t?o b?t. Xoa b?t kh?p c? th? v� l�m s?ch l?i v?i n??c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (159, N'S?a t?m b?o v? kh?i vi khu?n Lifebuoy',16, 153000, 10, 0, N' C�ng th?c ion b?c v� b?c h� gi�p b?o v? c? th? kh?i vi khu?n g?p 10 l?n, cho da m�t l?nh s?ng kho�i', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (160, N'S?a t?m d??ng s�ng Hazeline matcha',16, 140000, 10, 0, N' D??ng da tr?ng s�ng r?ng ng?i, d??ng ?m da', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (161, N'S?a t?m n??c hoa Romano Attitude s?ch s?ng kho�i 650g',16, 134000, 10, 0, N'Gi? ?m cho da s?ch ??y s?c s?ng c�ng m�i h??ng nam t�nh m?nh m? mang l?i d?u ?n c?a ng??i ?�n �ng l?ch l�m, ??y quy?n r?', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (162, N'D?u g?i s?ch g�u Head & Shoulders',17, 347000, 10, 0, N'L�m ??t t�c, xoa d?u g?i nh? nh�ng l�n t�c v� da ??u, m�t-xa v� x? s?ch l?i v?i n??c. G?i th�m l?n n?a n?u mu?n.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (163, N'D?u g?i Dove ph?c h?i h? t?n 1.36 l�t',17, 273000, 10, 0, N'Ph?c h?i b? m?t t�c t?c th� v� nu�i d??ng s�u gi�p t�i c?u tr�c s?i t�c t? s�u b�n trong, cho m�i t�c b?n ch?c kho? d�i l�u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (164, N'D?u g?i Sunsilk m?m m??t di?u k? 1.36 l�t',17, 248000, 10, 0, N' C�ng th?c ??c quy?n v?i c�ng ngh? kho� ?m v� 5 tinh d?u t? nhi�n gi�p l?u gi? ?? ?m c?n thi?t cho m�i t�c lu�n m?m m??t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (165, N'D?u g?i TRESemm� Salon Detox',17, 221000, 10, 0, N' B� ??p d??ng ch?t cho t�c, l�m s?ch s�u, nu�i d??ng t�c ch?c kho? v� b�ng m??t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (166, N'D?u g?i Head & Shoulders Classic Clean 700ml',17,2150000, 10, 0, N'Tr? g�u, l�m s?ch da ??u, gi�p t�c lu�n m?m m??t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (167, N'D?u g?i n??c hoa Elastine Kiss The Rose 1000ml',17,1680000, 10, 0, N' L�m ??t t�c, l?y m?t l??ng d?u g?i v?a ?? thoa l�n t�c, t?o b?t m�t xa nh? nh�ng ?? m�i h??ng t?a ??u tr�n t�c. G?i s?ch l?i v?i n??c.', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (168, N'D?u g?i n??c hoa X-Men For Boss Intense 650g',17, 186000, 10, 0, N'?? xa t?m tay tr? em. Tr�nh ?? s?n ph?m d�nh v�o m?t. N?u d�nh v�o m?t h�y r?a s?ch v?i n??c', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (169, N'D?u g?i TRESemm� Salon Detox g?ng v� tr� xanh 631ml',17, 187000, 10, 0, N'B� ??p d??ng ch?t cho t�c, l�m s?ch s�u, nu�i d??ng t�c ch?c kho? v� b�ng m??t', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (170, N'D?u x? ph?c h?i h? t?n Tsubaki 500ml',17, 179000, 10, 0, N' H?p ch?t ??c bi?t b? sung Protein, Lipit, h?p ch?t hoa tr� l�n men v� chi?t xu?t tinh d?u hoa tr� Nh?t B?n', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (171, N'Rau D?n 4KFarm t�i 200-300g',21, 4000, 5, N'S?ch nh? rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (172, N'Rau M�ng T?i 4KFarm t�i 200-300g',21, 8000, 10, 0, N'S?ch nh? rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (173, N'C?i D�ng 4KFarm t�i 300g',21, 9000, 10, 0, N'S?ch nh? rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (174, N'C?i xo?n t�i 500g',21, 27000, 10, 0, N'S?ch nh? rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (175, N'Khoai m? t�i 1kg',21, 47000, 10, 0, N'S?ch nh? rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (176, N'N?m m? tr?ng h?p 150g',21, 45000, 10, 0, N'S?ch nh? rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (177, N'X� l�ch Romaine th?y canh t�i 300g',21, 25000, 10, 0, N'S?ch nh? rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (178, N'B� ?? h? l� t�i 700g',21, 23000, 10, 0, N'S?ch nh? rau nh�', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (179, N'T�o Envy h?p 1kg',22, 242000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (180, N'Nho ?? kh�ng h?t h?p 1kg',22, 186000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (181, N'L� Nam Phi nh?p kh?u h?p 1kg (5 - 6 tr�i)',22, 86000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (182, N'Xo�i c�t Ho� L?c t�i 1kg',22, 39000, 10, 0, N'??c s?n c?a mi?n T�y b?i h??ng v? th?m ngon, m�u s?c b?t m?t, ngu?n dinh d??ng cao. Kh�ng ch? n?i ti?ng ? trong n??c, xo�i c�t Ho� L?c c�n l� lo?i tr�i c�y xu?t kh?u top ??u trong c�c lo?i hoa qu? s?ch tr�n th? gi?i. ', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (183, N'B? t�i 1kg',22, 34000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (184, N'L� Singo nh?p kh?u Trung Qu?c h?p 1kg',22, 58000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (185, N'M�ng c?u na t�i 500g',22, 31000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (186, N'Thanh long h?ng t�i 1kg',22, 44000, 10, 0, N'Hoa qu? t??i nh?p kh?u', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (187, N'M?t ph�c b?n t? La Fresh h? 210g',23,65000, 10, 0, N'Ph�c b?n t? (40%), ???ng m�a (50%), pectin qu?, ch?t b?o qu?n (202) v� n??c (10%)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (188, N'M?t cam Preserves Golden Farm h? 450g',23, 60000, 10, 0, N'Tr�i cam (45 - 60%), ???ng m�a RE, siro b?p, n??c, ch?t ?n ??nh, ch?t ?i?u ch?nh ?? acid, ch?t b?o qu?n, h??ng cam t?ng h?p, m�u th?c ph?m t?ng h?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (189, N'M?t nho Preserves Golden Farm h? 450g',23, 70000, 10, 0, N'Tr�i nho (45 - 60%), ???ng m�a RE, siro b?p, n??c, ch?t ?n ??nh, ch?t ?i?u ch?nh ?? chua, ch?t b?o qu?n, h??ng nho t?ng h?p, ch?t t?o m�u t?ng h?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (180, N'M?t d�u t?m Golden Farm h? 450g',23, 56000, 10, 0, N'Th??ng hi?u Golden Farm (Vi?t Nam)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (191, N'M?t th?m Preserves Golden Farm h? 210g',23, 29000, 10, 0, N'Tr�i th?m (45 - 60%), ???ng m�a RE, siro b?p, n??c, ch?t ?n ??nh, ch?t ?i?u ch?nh ?? chua, ch?t b?o qu?n, h??ng th?m t?ng h?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (192, N'L?c 3 h? m?t d�u Preserves Golden Farm 30g',23, 30000, 10, 0, N' ?n k�m kem, sinh t?, b�nh m�, tr� n�ng', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (193, N'M?t vi?t qu?t Preserves Golden Farm h? 210g',23, 40000, 10, 0, N' B?o qu?n ? n?i kh� r�o, tho�ng m�t. Gi? l?nh sau khi m? n?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (194, N'H?p qu� Orion An h?p 703.8g',24, 135000, 10, 0, N' B�nh Choco.pie B�nh Cutas kem tr?ng B�nh Tok v? t?o bi?n B�nh Tok v? ph� mai B�nh g?o n??ng An v? t?o bi?n B�nh quy s� c� la Miz Th?c ph?m b? sung - B�nh Marine Boy v? rong bi?n tuy?t xanh K?o h?ng v? qu?t - m?t ong', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (195, N'B�nh kem tr?ng Custas h?p 470g (20 c�i)',24, 99000, 10, 0, N'Tr?ng, b?t m�, ???ng, ch?t b�o th?c v?t, ch?t gi? ?m, ch?t nh? ho�, s?a b?t nguy�n kem, b?t l�ng ?? tr?ng, ch?t ?n ??nh,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (196, N'B�nh b�ng lan kem h?n h?p 3 m�i Solo h?p 336g',24, 71000, 10, 0, N'B?t m�, ???ng, ch?t b�o th?c v?t, tr?ng g�, m?ch nha, ch?t gi? ?m, b?t b?p, ch?t nh? ho�, s?a b�o,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (197, N'B�nh b�ng lan  Solite h?p 324g (18 c�i)',24, 50000, 10, 0, N' ?? n?i kh� r�o, tho�ng m�t, tr�nh �nh n?ng tr?c ti?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (198, N'B�nh b�ng lan Hura Deli h?p 336g (12 c�i)',24,47000, 10, 0, N'B?t m�, ???ng, tr?ng, ch?t b�o th?c v?t, m?ch nha, b?, s?a b?t, ch?t gi? ?m, ch?t nh? ho�, n??c, tinh b?t b?p, ch?t t?o x?p, mu?i, s� c� la compound tr?ng, h??ng t?ng h?p,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (199, N'B�nh b�ng lan  Quasure Light h?p 126g (7 c�i)',24, 29000, 10, 0, N'B?t m�, tr?ng, isomalt, ch?t b�o th?c v?t, m?ch nha, ch?t gi? ?m, ???ng, s?a b?t, ch?t nh? ho�, ch?t t?o x?p, mu?i, ch?t x? ho� tan, vitamin, h??ng t?ng h?p,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (200, N'B�nh b�ng lan tr�n kem v? d�u Solite h?p 36g (2 c�i)',24, 8000, 10, 0, N'?? n?i kh� r�o, tho�ng m�t, tr�nh �nh n?ng tr?c ti?p', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (201, N'Th?t heo h?m Master T h?p 180g',33, 26000, 10, 0, N'N?c heo, n??c, h�nh t�y, d?u th?c v?t, mu?i, ???ng, ch?t ?i?u v? (621), ch?t ?n ??nh (451i) v� (1422), h??ng th?t t?ng h?p, ch?t b?o qu?n (250)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (202, N'Th?t heo h?m 3 B�ng Mai Vissan h?p 150g',33, 22000, 10, 0, N'Th?t heo 50%, ???ng, mu?i, h�nh, t?i, n??c m?m,...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (203, N'Th?t vai heo Picnic Shoulder Categoria Extra Tulip h?p 454g',33, 212000, 10, 0, N'?n tr?c ti?p ho?c ?n k�m c?m, b�nh m�, tr?n salad', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (204, N'Heo hai l�t Vissan h?p 150g',33, 26000, 10, 0, N'N?c heo 55%, m? heo, n??c, protein ??u n�nh, ???ng..', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (205, N'C� ng? s?t c� ri Dongwon lon 100g',33, 33000, 10, 0, N'D�ng tr?c ti?p ho?c h�m n�ng tr??c khi d�ng, ?n nhanh sau khi m?', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (206, N'C� kho th?t 3 B�ng mai Vissan h?p 150g',33, 17000, 10, 0, N'C� n?c (30%), th?t heo (25%), n??c, ?t, h�nh, mu?i i-?t, ???ng, ch?t ?i?u v? (621), ch?t gi? ?m (451i, 452i), ti�u ?en xay, ch?t ?n ??nh (1422), n??c m?m, ph?m m�u t?ng h?p (150a)', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (207, N'B� h?m Vissan h?p 150g',33, 35000, 10, 0, N'Th?t b� 55%, mu?i, ???ng, t?i, h�nh...', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (208, N'C� tr�ch s?t c� Sea Crown h?p 155g',33, 12000, 10, 0, N'C� tr�ch 60%, s?t c� 27%, n??c 11.7%, mu?i 1%, ch?t ?i?u v? 0.3%', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (209, N'C� m�i x?t c� chua n?p gi?t 3 C� G�i h?p 155g (v? ??m ?�)',33, 17000, 10, 0, N'C� bi?n (c� m�i, c� ng�n, c� n?c,...) 60%, x?t c� chua 35%, d?u n�nh, ???ng, mu?i i-?t, ch?t l�m d�y (1442, 1414, 412), ch?t ?i?u v? 621, m�u th?c ph?m 160d', 3);
INSERT INTO HANGHOA (MaHH, TenHH, MaLoai,  DonGia, SoLuong, GiamGia, MoTa, MaNCC) values (210, N'L?c 3 h?p C� saba x?t n??c t??ng Norlake 150g',33, 102000, 10, 0, N' ?? n?i kh� r�o, tho�ng m�t, tr�nh �nh n?ng tr?c ti?p', 3);

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



INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (1,  N'Nguy?n Thanh Sang', N'B�nh D??ng', N'0971890712', N'sanglun2254@gmail.com' , 1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (2,  N'Minh Cao', N'TPHCM', N'0971890712', N'minhcd@gmail.com',  1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (3,  N'Nguy?n Thanh Sang', N'Q11', N'0971890712', N'sanglun2254_1@gmail.com',  1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (4,  N'Nguy?n Ng?c Hi?n', N'G� V?p', N'', N'pinkwater98@gmail.com', 0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (5,  N'H?  Qu?nh Nga', N'280 ADV', N'0904877306', N'wanriky2998@gmail.com',   0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (6,  N'L� Th? Hi?n', N'B�nh Th?nh', N'0904877306', N'hiennt@gmail.com',   0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (7,  N'L� Thanh Sang', N'Th? ??c', N'0904877306', N'sanglt8@gmail.com',   1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (8,  N'H? Vi?t Th?', N'Q11', N'0904877306', N'thobt@gmail.com',   1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (9,  N'Nguy?n Qu?c Ho�n', N'Q12', N'0904877306', N'hoan2008@gmail.com',   1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (19,  N'?inh V?n Thanh', N'B�nh Th?nh', N'0904877306', N'thanhpt@gmail.com',   1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (11,  N'Ng� ??c Anh', N'Khu CN s�ng Th?n', N'0904877306', N'ducanh@gmail.com',   1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (12,  N'Nguy?n Th? Ng?c Huy?n', N' V?ng T�u', N'0904877306', N'huyen1999@gmail.com',   0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (13,  N'H? Di?u Huy?n', N'Q5', N'0904877306', N'hien7965@gmail.com',   0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (14,  N'Nguy?n Th? Uy?n C??ng', N'Th? ??c', N'0904877306', N'cuongcntt8@gmail.com',   0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (15,  N'L� V?n H?u', N'B�nh T�n', N'0904877306', N'haucnaa@gmail.com',   1, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));
INSERT INTO KHACHHANG (MaKH, HoTen, DiaChi, DienThoai, Email, GioiTinh, NgaySinh) values (16,  N'Nguy?n Ho�ng Anh', N'B�nh Th?nh', N'0904877306', N'anhbinhthanh@gmail.com',   0, TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'));



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

INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (1, 1,1,1,N'Nguy?n Thanh Sang',N'B�nh D??ng', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (2, 1,2,2,N'Minh Cao', N'TPHCM', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),236800,237000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (3, 2,3,3,N'Nguy?n Thanh Sang', N'Q11', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),34500,345000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (4, 3,4,4,N'Nguy?n Ng?c Hi?n', N'G� V?p', N'',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),1135100,1135000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (5, 4,5,5,N'H?  Qu?nh Nga', N'280 ADV', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),6800,6800);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (6, 5,6,6, N'L� Th? Hi?n', N'B�nh Th?nh', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (7, 6,7,7,N'L� Thanh Sang', N'Th? ??c', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),356100,256000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (8, 7,8,8,N'H? Vi?t Th?', N'Q11', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),115100,115000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (9, 8,9,9,N'Nguy?n Qu?c Ho�n', N'Q12', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),679000,679000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (10,9,10,19, N'?inh V?n Thanh', N'B�nh Th?nh', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),127800,127800);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (11,10,11,11,N'Ng� ??c Anh', N'Khu CN s�ng Th?n', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),13500,13500);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (12,11,12,12,N'Nguy?n Th? Ng?c Huy?n', N' V?ng T�u', N'0904877306',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),34200,34000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (13,12,13,13, N'H? Di?u Huy?n', N'Q5', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),50000,50000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (14,13,14,14,N'Nguy?n Th? Uy?n C??ng', N'Th? ??c', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),234000,234000);
INSERT INTO HOADON (MaHD, MANV,MaChiNhanh, MaKH,HoTen, DiaChi,SDT,GhiChu,NgayTao,TongTienHang,TongThucThu) VALUES (15,2,15,15, N'L� V?n H?u', N'B�nh T�n', N'0971890712',N'',TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3'),135100,135000);

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
