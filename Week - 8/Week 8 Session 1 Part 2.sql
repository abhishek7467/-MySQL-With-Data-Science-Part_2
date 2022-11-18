use employees;
select * from employees 
where gender = 'F' and hire_date>01-01-1992;

create view female_emp as select * from employees 
where gender = 'F' and hire_date>01-01-1992;

select * from female_emp;


create  view slab as 
(


select 'SLAB 1',count(*) 
from salaries
where salary between 30000 and 40000
Union 
select 'SLAB 2',count(*) 
from salaries
where salary between 40001 and 50000
union
select 'SLAB 3', count(*) 
from salaries
where salary between 30000 and 40000
union 
select 'SLAB 4', count(*) 
from salaries
where salary between 30000 and 40000
union 
select 'SLAB 5', count(*) 
from salaries
where salary between 30000 and 40000
union 
select 'SLAB 6', count(*) 
from salaries
where salary between 30000 and 40000

);

select * from slab;


create or replace view  female_emp as select * from employees
where gender='F';
select * from female_emp;


create or replace view slab as select * from employees where gender='F';
select * from slab;


drop view slab;
select * from slab;

select * from salaries where emp_no =10001;
create view EMPI as select * from salaries where emp_no =10001;

select * from EMPi;

start transaction;







