create database weapon;
use weapon;

create table soldiers(
id int auto_increment not null,
platoon_id int not null,
name varchar(30) not null,
division varchar(30),
foreign key (platoon_id) references platoons(number),
primary key(id));

create table platoons(
number int not null,
primary key(number));

create table weapons(
id int auto_increment not null,
soldier_id int,
weapon_issued_id int not null,
name varchar(30) not null,
foreign key (soldier_id) references soldiers(id),
foreign key (weapon_issued_id) references weapon_issued(id),
primary key(id));

create table weapon_issued(
id int auto_increment not null,
name varchar(30) not null,
military_rank varchar(30) not null,
primary key(id));

insert into soldiers (platoon_id, name, division)
values (222, 'Петров В.А.', 'оф. 205'),
(232, 'Лодарев П.С.', 'оф. 221'),
(212, 'Леонтьев К.В.', 'оф. 201'),
(200, 'Духов Р.М.','');

insert into platoons (number)
values (222), (232),(212),(200);

insert into weapons (soldier_id, weapon_issued_id, name)
values (1, 1, 'АК-47'),
(1, 2, 'Глок20'),
(2, 3, 'АК-74'),
(2, 2, 'Глок20'),
(3, 1, 'АК-47'),
(3, 2, 'Глок20'),
(4, 1, 'АК-47');

insert into weapon_issued (name, military_rank)
values ('Буров О.С.', 'майор'),
('Рыбаков Н.Г.', 'майор'),
('Деребанов В.Я.', 'подполковник');