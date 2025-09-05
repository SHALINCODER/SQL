use functions;

select * from employee
where salary > ( select avg(salary) from employee );
select avg(salary) from employee;


select avg(salary) as avg_salary, department from employee group by department having avg_salary > 60000;

select * from ( select avg(salary) as avg_salary, department from employee group by department) as average_salary where avg_salary > 60000;

create table employe(
emp_id int primary key,
name varchar(20),
salary decimal(10,2),
department_id int);

create table departments(
department_id int,
department_name varchar(20),
location_id int);

insert into employe values( 101, 'John', 50000, 10), (102, 'Alice', 60000, 20), (103, 'Bob', 45000, 30), (104, 'Emma', 70000, 20), (105, 'david', 55000, 10);

insert into departments values( 10, 'HR', 1700 ), ( 20, 'Sales', 1700), ( 30, 'IT', 1000 );

select * from departments;

-- Find all employees who work in departments located in location_id = 1700
select department_id from departments
where location_id = 1700;

select * from employe 
where department_id in (10,20);

select * from employe 
where department_id in (select department_id from departments
where location_id = 1700);


