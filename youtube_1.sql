create database college;

use college;

create table student (
id int primary key, 

name varchar(20),
age int not null );

insert into student values (1, "SHALIN", 22), (2, "SHARADHA", 25);
select * from student;


show databases;
show tables;


create table students(
rollno int primary key,
name varchar(20));

select * from students;

insert into students(rollno, name) values (1, "SHALIN"), (2, "SHARADHA");