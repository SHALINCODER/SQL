use xyz;
create view view1 as
select rollno, name, marks from studentss;
drop view view1;
select * from view1;



create or replace view view1 as
select * from studentss
where name = "chetan";




select * from view1;


create view view2 as
select * from employee
inner join employees on employee.id = employees.id;

select * from employee;
insert into employee values
(7, " Demo ", 21, 50000, 9087654321, 'Chennai ', 'HR ' );
insert into employee values
(8, " Demo ", 21, 50000, 9087654321, 'Chennai ', 'HR*' );
select * from employee;
select trim(name) from employee;

select rtrim(location) from employee;


select rtrim(department) from employee;

select trim(leading "*" from department) from employee;

select trim(both "*" from department) from employee;
