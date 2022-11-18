create database if not exists employees3;
use employees3;

CREATE TABLE empinfo (
    emp_no INT,
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE,
    PRIMARY KEY (emp_no)
);

desc empinfo;

insert into empinfo values
(1234,'1953-02-09','Abhishek','Kumar','M',Null),
(1235,'1853-07-02','Ram',null,'M','1923-02-14'),
(1236,'1933-04-05','Ridhi','Jaiswal','F','2022-03-09'),
(1237,Null,'Rurkiya','mSashi','F','2023-10-03');

select * from empinfo;

update empinfo set first_name = NUll where emp_no = 1236;


select * from empinfo order by hire_date ;

select * from empinfo order by hire_date desc;

select * from empinfo where first_name is null; 

select * from empinfo where last_name is null; 


select * from empinfo where first_name is not null;

select * from empinfo where hire_date is not null; 
 
select emp_no, birth_date , ifnull(first_name,'NA') from empinfo;

select emp_no, birth_date , ifnull(first_name,'Ridhi') from empinfo;

-- data Treands


use employees;
select * from salaries;
select count(*) from salaries;
select sum(salary) from salaries;

select * from salaries where emp_no = 10001;
select *,sum(salary) from salaries where emp_no = 10001;


-- Window Function 

select emp_no , sum(salary) over() from salaries;

select  emp_no, sum(salary) from salaries group by emp_no;

select emp_no, sum(salary) over(partition by emp_no) from salaries; 
 
 
select emp_no, salary, from_date, to_date,
 datediff(to_date,from_date) days from salaries;
 
 
select emp_no, sum(salary) over (partition by emp_no) as Total 
,datediff(to_date,from_date) days from salaries;
 
select emp_no, salary, sum(salary) over (partition by emp_no) as Total 
,avg(salary) over(partition by emp_no) as Average,
datediff(to_date,from_date) days from salaries;


select emp_no, salary, sum(salary) over (partition by emp_no) as Total 
,avg(salary) over(partition by emp_no) as Average,
salary-avg(salary) over(partition by emp_no) as Differance,
datediff(to_date,from_date) days from salaries;


select emp_no, salary, sum(salary) over (partition by emp_no) as Total 
,avg(salary) over(partition by emp_no) as Average,
salary-avg(salary) over(partition by emp_no) as Differance,
datediff(to_date,from_date) days from salaries;

select 2+3;

select emp_no, salary, sum(salary) over (partition by emp_no) as Total 
,avg(salary) over(partition by emp_no) as Average,
salary-avg(salary) over(partition by emp_no) as Differance,
(salary/sum(salary) over(partition by emp_no)) * 100 as percentage
,datediff(to_date,from_date) days from salaries;

select emp_no, salary, sum(salary) over (partition by emp_no) as Total 
,avg(salary) over(partition by emp_no) as Average,
salary-avg(salary) over(partition by emp_no) as Differance,
(salary/sum(salary) over(partition by emp_no)) * 100 as percentage
,
variance(salary) over (partition by emp_no) as Variance
,datediff(to_date,from_date) days from salaries;

