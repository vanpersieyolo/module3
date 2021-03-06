-- create database Excercise2;

create table customers(
customerNumber int primary key ,
customerName varchar(50) not null,
contactLastName varchar(50) not null,
contactFirstName varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50) not null,
city varchar(50) not null,
state varchar (50) not null,
postalCode varchar(50) not null,
contry varchar(50) not null,
creditLimit float,
salesRepEmployeeNumber int ,
foreign key (salesRepEmployeeNumber) references employees(employeeNumber)
);

create table orders(
orderNumber int primary key,
orderDate date not null,
requiredDate date not null,
shippedDate date ,
status varchar(50),
comments text,
quantityOrderd int not null,
priceEach double not null,
customerNumber int,
foreign key(customerNumber) references customers(customerNumber)
);
create table payment(
customerNumber int not null,
chekNumber varchar(50) not null,
paymentDate date not null,
amount double not null,
foreign key(customerNumber) references customers(customerNumber)
);
create table products(
productCode varchar(15) primary key,
productName varchar(70) not null,
productScale varchar(10) not null,
productVendor varchar(50) not null,
productDecriptioon text not null,
quantityInStock int not null,
buyPrice double not null,
MSRP double not null,
productLine varchar(50),
foreign key(productLine) references productlines (productLine)
);
create table productlines(
productLine varchar(50) primary key,
textDecriprion text,
image text
);

create table employees(
employeeNumber int primary key,
lastName varchar(50)not null,
firstName varchar(50)not null,
email varchar(100)not null,
jobTitle varchar(50)not null,
reportTo varchar(10),
officeCode varchar(10),
foreign key (officeCode) references offices(officeCode)
);
create table offices(
officeCode varchar(10) primary key,
city varchar(50)not null,
phone varchar(50)not null,
addressLine1 varchar(50) not null,
addressLien2 varchar(50),
state varchar(50)not null,
country varchar(50)not null,
postalCode varchar(15)not null
);
create table OrderDetails(
productCode varchar(15) not null,
orderNumber int not null,
foreign key(productCode) references products(productCode),
foreign key (orderNumber) references orders(orderNumber)
);
select * from customers
