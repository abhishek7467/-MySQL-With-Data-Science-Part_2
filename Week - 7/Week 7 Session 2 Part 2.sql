select emp_no, salary, sum(salary) over (partition by emp_no) as Total 
,avg(salary) over(partition by emp_no) as Average,
salary-avg(salary) over(partition by emp_no) as Differance,
(salary/sum(salary) over(partition by emp_no)) * 100 as percentage,
variance(salary) over (partition by emp_no) as Variance
,datediff(to_date,from_date) days from salaries;

use employees;

select emp_no, salary,
sum(salary) over(partition by emp_no) as Total ,
avg(salary) over(partition by emp_no) as Average
#, std(salary) over (partition by emp_no) as StandarDeviation,
#datediff(to_date,from_date) 
#days
from salaries;


SELECT 
    emp_no, salary
FROM
    salaries;

SELECT 
    emp_no, salary
FROM
    salaries
ORDER BY salary;

SELECT 
    emp_no, salary
FROM
    salaries
ORDER BY salary DESC;


select emp_no, salary ,
max(salary) over(partition by emp_no) as maximum,
min(salary) over(partition by emp_no) as minimum,
datediff(to_date,from_date) days from salaries;


SELECT 
    *
FROM
    employees;
SELECT 
    hire_date, YEAR(hire_date), COUNT(emp_no)
FROM
    employees
GROUP BY hire_date
ORDER BY hire_date;



SELECT 
    YEAR(hire_date), COUNT(emp_no)
FROM
    employees
GROUP BY YEAR(hire_date);


select year(hire_date) Years,
count(emp_no) Counts,
sum( count(emp_no)) over (order by hire_date) Running_Sum
from employees 
group by year(hire_date)
order by (hire_date);


-- Groth Rate 
-- Accessing previous Row values

select year(hire_date) Year,
count(emp_no) Count,
Lag(count(emp_no),1) over (order by hire_date)
PreviousCount
from employees
group by Year(hire_date)
order by Year(hire_date);
use employees;


select year(hire_date) Year,
count(emp_no) Count,
Lag(count(emp_no),2) over (order by hire_date)
PreviousCount
from employees
group by Year(hire_date)
order by Year(hire_date);



select year(hire_date) Year,
count(emp_no) Count,
((Lag(count(emp_no),1) over (order by hire_date) - count(emp_no))
/lag(count(emp_no),1) over (order by hire_date)*100) 
PreviousCount
from employees
group by Year(hire_date)
order by Year(hire_date);



select year(hire_date) Year,
count(emp_no) Count,
((Lag(count(emp_no),1) over (order by hire_date) - count(emp_no))
-lag(count(emp_no),1) over (order by hire_date)*100) 
PreviousCount
from employees
group by Year(hire_date)
order by Year(hire_date);


select emp_no , from_date , salary , lag(salary,1) over 
(order by from_date)
from salaries
where emp_no=10001;

select emp_no, from_date ,salary,
((salary-lag(salary,1) over (order by from_date)) 
/salary)*100  
from salaries 
where emp_no=10001;


# Distribution
select * from salaries order by salary;

select count(*) 
from salaries
where salary between 30000 and 40000;

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
where salary between 30000 and 40000;


-- Finding Outlier in Data
select * from salaries order by salary;









