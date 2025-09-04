create database joins;
use joins;

create table students(
regno int,
name varchar(20)
);

create table course(
e_id int,
c_name varchar(20)
);

insert into students values( 1, 'shalin'), (2, 'jyothi'), (3, 'sanjana'), (4, 'akash');
insert into course values(101, 'java'), (102, 'dotnet'), (103, 'python');

select * from students
union 
select * from course;

select s.name as Student_Name, c.c_name as Course_name
from students s cross join course c;


delimiter $$ 
create function FullName( FirstName varchar(20), LastName varchar(20))
returns varchar(40)
deterministic
begin
	declare fullname varchar(20);
    set fullname = concat(FirstName, ' ',LastName);
    return fullname;
end $$
delimiter ;

drop function FullName;
select FullName('SHALIN', 'SUNIL') as FullName;