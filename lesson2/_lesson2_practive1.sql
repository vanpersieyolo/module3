-- tao 1 bang -- 
create table contact(
contact_id int not null auto_increment,
last_name varchar(25) not null,
first_name varchar(25),
birthday date,
constraint contact_pk primary key(contact_id)
);
 
create table suppliers(
suppliers_id INT(11) not null auto_increment,
suppliers_name varchar(50) not null,
account_rep varchar(30) not null default'TBD',
constraint suppliers_pk primary key(suppliers_id)
);

drop table suppliers;

alter table contact
add last_name1 varchar (25) not null
after contact_id;

alter table contact
modify last_name1 text(10) null;

alter table contact
drop column last_name;

alter table contact
change column last_name1 last_name varchar (20) not null;

alter table contact
rename to contact_
