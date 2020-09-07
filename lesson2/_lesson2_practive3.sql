create table customer(
id int auto_increment primary key,
name varchar(40),
address varchar(255),
email varchar(255)
);

create table orders(
id int auto_increment,
staff varchar(400),
primary key (id),
customers_id int,
foreign key (customers_id) references customer(id)
);