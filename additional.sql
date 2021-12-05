create database hrd;
use hrd;

create table employee(
id int auto_increment not null,
department_id int not null,
position_id int not null,
surname varchar(30) not null,
adress varchar(30) not null,
phone varchar(30) not null,
date_of_birth date not null,
foreign key (department_id) references departments(id),
foreign key (position_id) references positions(id),
primary key(id));

create table positions(
id int auto_increment not null,
position varchar(30) not null,
rate int not null,
primary key(id));

create table departments(
id int auto_increment not null,
department varchar(30) not null,
primary key(id));