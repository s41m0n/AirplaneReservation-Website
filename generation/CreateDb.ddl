-- *********************************************
-- * SQL MySQL generation code
-- *********************************************


-- Database Section
-- ________________

create database airplane_reservation;
use airplane_reservation;


-- Tables Section
-- _____________

create table user (
	email varchar(100) not null,
	password varchar(128) not null,
	salt varchar(128) not null,
	constraint IDuser primary key (email));

create table reservation (
	email varchar(100) not null,
	seat varchar(3) not null,
	purchased int not null,
	constraint IDReservation_composition primary key (seat));

-- Constraints Section
-- ___________________

alter table reservation add constraint FKcomposition_reservation
	foreign key (email)
	references user (email);
