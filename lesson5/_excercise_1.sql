create database demo;

create table Products (
id int auto_increment primary key,
productCode int not null,
productName varchar(40),
productPrice varchar(11),
productAmount varchar(11),
productDecription varchar(255),
productStatus varchar(255)
);

select * from products;

create unique index  productCode1 on Products(productCode);
alter table products drop index composite_Index;
create index composite_Index on products(productName);
explain select * from products where productName = "iphone" and productAmount > 1 ;

create view product_view as
select productCode, productName, productPrice, productStatus
from products;
select * from product_view;

drop view product_view;

create or replace view product_view as 
select productCode, productName from products;

DELIMITER //
CREATE PROCEDURE show_product()
BEGIN
  SELECT * FROM products;
END //
DELIMITER ;
call show_product;

DELIMITER //
create procedure add_product(productCode int ,productName varchar (40), productPrice varchar(11), productAmount varchar(11), productDecription varchar(255), productStatus varchar(255))
begin
	insert into products values (null,productCode,productName, productPrice, productAmount, productDecription, productStatus);
end //
DELIMITER ;
drop procedure add_product;
call add_product(4,'iphone', '10', '1', 'qqq','X');

delimiter //
create procedure update_product (Enterid int, productCode int ,
productName varchar (40), productPrice varchar(11), productAmount varchar(11), productDecription varchar(255),
 productStatus varchar(255))
begin
update products 
set products.productCode = productCode, products.productName = productName, products.productPrice = productPrice, products.productDecription = productDecription, products.productStatus = productStatus
where products.id = Enterid;
end //
delimiter ;

call update_product(4,5,'iphone', '10', '2', 'qqq','ok');

delimiter //
create procedure remove_product(EnterID int)
begin
delete from products 
where products.id = EnterID;
end //
delimiter ;
call remove_product(4);
