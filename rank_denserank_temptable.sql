use functions;

create table students_details(
RegNo int auto_increment primary key,
name varchar(20),
department varchar(10),
Mark int);

insert into studentS_details(name, department, Mark)
values('SHALIN', 'ECE', 460), ('HARI', 'ECE', 480), ('AKASH', 'CSE', 450), ('ROHIT', 'ECE', 448),
('PRASANTH', 'CSE', 490), ('ALAN', 'ECE', 430), ('GHI', 'CSE', 490);

SELECT * FROM students_details;

select *, rank() over(partition by department order by mark desc) as Rank_Marks, dense_rank() over (partition by department order by mark desc)
as DenseRank_Marks from students_details;


create temporary table temp_table(
		id int,
        name varchar(20),
        contact bigint);

select * from temp_table;