use employees;
SELECT 
    *
FROM
    employees;

SELECT 
    *
FROM
    dept_emp;

DELETE e , d FROM employees e
        INNER JOIN
    dept_emp d ON e.emp_no = d.emp_no 
WHERE
    e.emp_no = 10023;
    

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 10020;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 10030;
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 10023;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 10012;

SELECT 
    *
FROM
    titles;


SELECT 
    *
FROM
    dept_emp;

DELETE e , d , t FROM employees e
        INNER JOIN
    dept_emp d ON e.emp_no = d.emp_no
        INNER JOIN
    titles t ON t.emp_no = e.emp_no 
WHERE
    e.emp_no = 10055;
    
SELECT 
    *
FROM
    dept_emp;
    
SELECT 
    *
FROM
    Titles;
    
SELECT 
    *
FROM
    employees;

select * from employees where emp_no=10055;

select * from titles where emp_no=10055;

select * from dept_emp where emp_no=10055;



#delete e,d from employees e inner join titles d   on e.emp_no=d.emp_no  ;


select e.emp_no,d.emp_no from employees e inner join titles d   on e.emp_no=d.emp_no  ;

update employees e inner join dept_emp d on e.emp_no = d.emp_no
set gender = 'F';

select * from employees;

select e.gender from  employees e inner join dept_emp d on e.emp_no = d.emp_no;

select * from employees where gender ='F';

select count(*) from employees where gender ='F';


