use employees2;

select * from employees2;
start transaction;
insert into employees2 values 
(131, '1999-03-12','Jai','Veeru','M','2021-12-12');

select * from employees2;
savepoint s1;
insert into employees2 values 
(132, '1999-03-12','Sita','Gita','F','2021-12-12');
select * from employees2;


insert into employees2 values 
(134, '1999-03-12','Ramu','Gita','F','2021-12-12');
select * from employees2;

savepoint s2;

savepoint s3;
rollback to s1;
rollback to s2;
insert into employees2 values 
(135, '1999-03-12','Ramu','Gita','F','2021-12-12');
select * from employees2;
rollback to s3;
commit;
rollback to s1;
insert into employees2 values 
(136, '1999-03-12','Abhi','Gita','F','2021-12-12');
select * from employees2;
commit;





start transaction;
savepoint s1;
create view v1 as select * from employees2;
savepoint s2;
rollback to s1;
select * from v1;
savepoint s3;
drop view v1;
savepoint s4;
rollback to s3;
commit ;


use employees;
select * from salaries;
create view sal as select * from salaries where salary 
between  600000 and 10000;
drop view sal;
create view sal as select * from salaries ;
select count(*) from sal;



update salaries
set 
salary = salary + 10000  
where emp_no=10001;

select * from salaries 
where emp_no=10001 or emp_no=10002; 

create view salar as
select * from salaries 
where emp_no=10001 or emp_no=10002; 

select * from salar;

select * from salar ;
update salar set salary =5000 where emp_no=10001;
select * from salar ;

select * from salaries 
where emp_no=10001;


select salary  +20000 from salaries;

create or replace view  sal2 as select salary +20000 salary from salaries;
select * from sal2;
select sum(salary) from sal2;






