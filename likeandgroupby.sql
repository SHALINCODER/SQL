use functions;

select * from employee
where name like 'S%';

select * from employee
where name like '%a';

select * from employee
where contact like '%98%';


select * from employee
where location like 'Ch_nn__';




select * from employee
where location like '%\%%';

select * from employee;

select count(empid), department from employee group by department;
select count(empid), department from employee group by department having min(salary) >= 50000;

