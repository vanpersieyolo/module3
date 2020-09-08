create table customers(
customer_number int primary key,
fullname varchar(255) ,
address varchar(255) ,
email varchar(255),
phone bigint 
);

create table account(
account_number int primary key,
account_type varchar(255),
date date,
blance int,
customer_number int,
foreign key (customer_number) references customers (customer_number)
);

create table transactions(
trans_number int primary key,
account_number int,
date date,
amounts bigint,
descriptions varchar(255),
foreign key (account_number) references account (account_number)
);