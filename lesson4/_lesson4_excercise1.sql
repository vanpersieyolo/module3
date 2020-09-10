create database lesson4;
-- drop table sudungsql;
create table sudungSQL(
ID int not null ,
TEN VARCHAR(20) NOT NULL,
TUOI INT NOT NULL,
KHOA_HOC VARCHAR(20) NOT NULL,
SO_TIEN VARCHAR(20) NOT NULL
);

insert into sudungSQL value (1,'hoang',21,'cntt','400000');
insert into sudungSQL value (2,'viet',19,'DTVT','320000');
insert into sudungSQL value (3,'thanh',18,'KTDN','400000');
insert into sudungSQL value (4,'nhan',19,'CK','450000');
insert into sudungSQL value (5,'huong',20,'TCNH','500000');
insert into sudungSQL value (5,'huong',20,'TCNH','200000');

-- hiển thị các dòng tên là HUONG
select * from sudungsql
where sudungsql.TEN = 'huong';

-- tính tổng tiền cửa em huong:
select sum(sudungsql.so_tien) from sudungsql
where sudungSQL.ten = 'huong';

-- Viết câu lệnh lấy ra tên danh sách của tất cả học viên, không trùng lặp
select* from sudungSQL
group by sudungsql.ten;