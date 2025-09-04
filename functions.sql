create database if not exists functions;

use functions;

create table employee(
name varchar(20),
age int,
salary int,
contact bigint,
location varchar(50)
);

insert into employee (name, age, salary, contact, location)
values
('Shalin', 25, 40000, 9876543210, 'Chennai'),
('Ananya', 28, 52000, 9876501234, 'Bangalore'),
('Ravi', 30, 60000, 9876512345, 'Hyderabad'),
('Meera', 24, 38000, 9876523456, 'Mumbai'),
('Arjun', 32, 75000, 9876534567, 'Delhi');

select * from employee;

alter table employee
add column empid int auto_increment primary key;

alter table employee
modify column empid int auto_increment first;

alter table employee add department varchar(20);

update employee set department = 'HR' where empid = 1;
update employee set department = 'Finance' where empid = 2;
update employee set department = 'IT' where empid = 3;
update employee set department = 'Marketing' where empid = 4;
update employee set department = 'Operations' where empid = 5;



select max(salary) as max_salary from employee;
select min(salary) as min_salary from employee;
select sum(salary) as total_salary from employee;
select avg(salary) as average_salary from employee;
select count(*) as count from employee;
select count(empid) as hr_dept from employee where department = 'HR';
select count(empid) as dept from employee where department = 'HR' and salary = 75000;
select * from employee where age > 25 and salary > 20000;
select * from employee where age > 25 or salary > 60000;
insert into employee (name, age, salary, contact, location, department)
values ('Sneha', 29, 58000, 9876568901, 'Jaipur', 'Finance');
select * from employee where department != 'HR';
select * from employee where not department = 'Finance';
select * from employee where department <> 'Finance';

select * from employee where salary between 50000 and 60000 limit 2;

desc employee;

select distinct department from employee;
select count(distinct department) from employee;

select * from employee
order by salary;