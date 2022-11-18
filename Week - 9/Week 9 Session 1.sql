use employees;

SELECT 
    emp_no,
    gender,
    CASE
        WHEN gender = 'F' THEN first_name
        WHEN gender = 'M' THEN last_name
        ELSE 'Unknown '
    END
FROM
    employees;

select * from employees;


SELECT 
    hire_date,
    CASE
        WHEN hire_date < '1988-12-31' THEN emp_no
        ELSE CONCAT(first_name, ' ', last_name)
    END user_name
FROM
    employees;



# Simple case expression


SELECT 
    emp_no,
    CASE gender
        WHEN 'F' THEN 'Female Employee'
        WHEN 'M' THEN 'Male Employee'
    END category
FROM
    employees;


select * from employees;

select dept_no , 
case dept_no 
when 'd009'
then 9
when 'd008'
then 8

when 'd007'
then 7
when 'd006'
then 6
when 'd005'
then 5
when 'd004'
then 4
when 'd003'
then 3
when 'd002'
then 2
when 'd001'
then 1
end
Dept_No from departments;


SELECT 
    dept_no,
    CASE dept_no
        WHEN dept_no = 'd009' THEN 9
        WHEN dept_no = 'd008' THEN 8
        WHEN dept_no = 'd007' THEN 7
        WHEN dept_no = 'd006' THEN 6
        WHEN dept_no = 'd005' THEN 5
        WHEN dept_no = 'd004' THEN 4
        WHEN dept_no = 'd003' THEN 3
        WHEN dept_no = 'd002' THEN 2
        WHEN dept_no = 'd001' THEN 1
    END Dept_No
FROM
    departments;




SELECT 
    YEAR(hire_date), COUNT(*)
FROM
    employees
WHERE
    hire_date > '1985-12-31'
        AND hire_date < '1991-01-01'
GROUP BY (hire_date)
ORDER BY (hire_date);



SELECT 
    SUM(CASE
        WHEN YEAR(hire_date) = 1986 THEN 1
        ELSE 0
    END) year_1986,
    SUM(CASE
        WHEN YEAR(hire_date) = 1987 THEN 1
        ELSE 0
    END) year_1987,
    SUM(CASE
        WHEN YEAR(hire_date) = 1988 THEN 1
        ELSE 0
    END) year_1988,
    SUM(CASE
        WHEN YEAR(hire_date) = 1989 THEN 1
        ELSE 0
    END) year_1989,
    SUM(CASE
        WHEN YEAR(hire_date) = 1990 THEN 1
        ELSE 0
    END) year_1990,
    SUM(CASE
        WHEN YEAR(hire_date) = 1991 THEN 1
        ELSE 0
    END) year_1991
FROM
    employees
WHERE
    hire_date > '1985-12-31'
        AND hire_date < '1991-01-01 ';

select * from titles; 
select exists (select 1 from titles where title='Senior Engineer' ) Result;
select 1 from titles where title='Senior Engineer';
select count(*) from titles where title='Senior Engineer';


select exists (select 1 from titles where title='Executive' ) Result;


SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN
            EXISTS( SELECT 
                    1
                FROM
                    titles t
                WHERE
                    t.title = 'Senior Engineer '
                        AND t.emp_no = emp_no)
        THEN
            'Reports to Office '
        ELSE 'WOH '
    END Decision
FROM
    employees e;




# Handiling Error

create or replace view sal as 
select * from salaries
where emp_no = 10001;
select * from sal;

insert into sal values (10001,0,'2006-01-01','2012-12-13');
select * from sal;
insert into sal values (10001,0,'2005-01-01','2012-12-13');
select * from sal;
insert into sal values (10001,0,'2007-01-01','2012-12-13');
select * from sal;
insert into sal values (10001,0,'2008-01-01','2010-12-13');
select * from sal;



SELECT 
    emp_no,
    salary,
    10000 / CASE
        WHEN salary = 0 THEN 25000
        ELSE salary
    END Emp_Share
FROM
    sal; 

select 10000/salary from sal;


UPDATE sal 
SET 
    salary = CASE
        WHEN salary = 0 THEN 25000
        ELSE salary + 1000
    END;

select * from sal;


UPDATE sal 
SET 
    salary = CASE
        WHEN salary = 25000 THEN 35000
        WHEN from_date = '1986-06-26' THEN salary + 2000
        ELSE salary + 1000
    END;
    
    
select * from sal;


select   case when city is null then 'Unkown' when city is not null 
then city end city from happiness;

use abhishek;
select * from emp2;

select emp_no, from employees;

select emp_no where  emp_no =100001 from employees;

create table pi (add char(4));

create table pi (sum() char(4));

select sum(salary) from salaries;

select sum (salary) from salaries;


  