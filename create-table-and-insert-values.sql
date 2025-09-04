create database practice;
use practice;

create table employee(
empid int primary key,
name varchar(30) not null,
contact bigint unique,
age int check (age>=20),
location varchar(50) default 'chennai' );

insert into employee( empid, name, contact, age, location )
values( 1, 'shalin',7010961953, 22, 'chennai');

select * from employee;

create table salary(
emp_id int,
salary decimal(10,2),
foreign key(emp_id) references employee (empid));

insert into salary values(1, 87657.50);
select * from salary;
