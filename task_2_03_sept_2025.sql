use functions;

create table employees
(id int auto_increment primary key,
name varchar(20),
department varchar(10),
salary int,
city varchar(10)
);

insert into employees( id, name, department, salary, city) values
( 1, 'Alice', 'HR', 50000, 'New York' ),
( 2, 'Bob', 'IT', 70000, 'San Diego' ),
( 3, 'Charlie', 'HR', 55000, 'New York' ),
( 4, 'David', 'IT', 80000, 'Boston' ),
( 5, 'Eva', 'Finance', 60000, 'San Diego' ),
( 6, 'Frank', 'IT', 75000, 'San Jose' ),
( 7, 'Grace', 'Finance', 65000, 'New York'),
( 8, 'Hannah', 'HR', 52000, 'Boston' );

select department, count(department)
from employees
group by department;

select department, avg(salary)
from employees
group by department;

select * from employees
order by salary desc;

select * from employees
order by department, salary asc;