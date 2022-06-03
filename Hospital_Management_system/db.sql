create database hospital;
use hospital;
select* from admin;
select* from docter;
select* from patient;

create table admin(
username varchar(25) not null,
email varchar(40) not null unique,
password varchar(8) not null
);

create table docter(
did int not null primary key,
name varchar(20) not null,
address varchar(50) not null,
password varchar(8) not null,
number long not null,
age int not null,
gender varchar(20) not null,
degree varchar(50) not null,
specification varchar(50) not null
);

create table patient(
pid int not null primary key,
name varchar(20) not null,
address varchar(50) not null,
password varchar(8) not null,
number long not null,
age int not null,
gender varchar(20) not null,
diseases varchar(50) not null
);