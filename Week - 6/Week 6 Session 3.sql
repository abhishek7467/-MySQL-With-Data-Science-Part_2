
SELECT 
    *
FROM
    employees;
SELECT 
    COUNT(*)
FROM
    employees;

SELECT 
    *
FROM
    dept_emp;
SELECT 
    COUNT(*)
FROM
    dept_emp;


SELECT 
    employees.emp_no,
    employees.first_name,
    employees.last_name,
    dept_emp.dept_no,
    dept_emp.from_date
FROM
    employees
        INNER JOIN
    dept_emp ON employees.emp_no = dept_emp.emp_no; 

SELECT 
    count(employees.emp_no),
    count(employees.first_name),
    count(employees.last_name),
    count(dept_emp.dept_no),
    count(dept_emp.from_date)
FROM
    employees
        INNER JOIN
    dept_emp ON employees.emp_no = dept_emp.emp_no; 
select * from dept_emp;    

