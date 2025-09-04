use functions;


select * from employee
where name like 'A%';



select * from employee
where location like '%San%';

select * from employee
where name like '%a';

select count(department), department from employee group by department having count(department) >= 2
order by avg(salary) desc;
