create table Khoa(
ma_khoa varchar(10),
ten_khoa varchar(30),
dienThoai varchar (10)
);

create table GiangVien(
ma_gv int,
hoten_gv varchar(30),
luong decimal(5,2),
ma_khoa varchar(30)
);

create table SinhVien(
ma_sv int ,
hoten_sv varchar (30),
makhoa varchar(10),
nam_sinh int,
que_quan varchar(30)
);

create table DeTai(
ma_detai varchar(10),
ten_detai varchar(30),
kinh_phi int,
noi_thuctap varchar(30)
);

create table HuongDan(
ma_sv int,
ma_detai varchar(10),
ma_gv int,
ketqua decimal
);

INSERT INTO khoa VALUES('Geo','Dia ly va QLTN',3855413),
('Math','Toan',3855411),
('Bio','Cong nghe Sinh hoc',3855412);
INSERT INTO giangVien VALUES(11,'Thanh Binh',700,'Geo'),
(12,'Thu Huong',500,'Math'),
(13,'Chu Vinh',650,'Geo'),
(14,'Le Thi Ly',500,'Bio'),
(15,'Tran Son',900,'Math');
INSERT INTO sinhVien VALUES(1,'Le Van Son','Bio',1990,'Nghe An'),
(2,'Nguyen Thi Mai','Geo',1990,'Thanh Hoa'),
(3,'Bui Xuan Duc','Math',1992,'Ha Noi'),
(4,'Nguyen Van Tung','Bio',null,'Ha Tinh')
,(5,'Le Khanh Linh','Bio',1989,'Ha Nam'),
(6,'Tran Khac Trong','Geo',1991,'Thanh Hoa'),
(7,'Le Thi Van','Math',null,'null'),
(8,'Hoang Van Duc','Bio',1992,'Nghe An');
INSERT INTO detai VALUES('Dt01','GIS',100,'Nghe An'),
('Dt02','ARC GIS',500,'Nam Dinh'),
('Dt03','Spatial DB',100, 'Ha Tinh'),
('Dt04','MAP',300,'Quang Binh' );
INSERT INTO huongDan VALUES(1,'Dt01',13,8),
(2,'Dt03',14,0),
(3,'Dt03',12,10),
(5,'Dt04',14,7),
(6,'Dt01',13,Null),
(7,'Dt04',11,10),
(8,'Dt03',15,6);