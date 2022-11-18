
use employees;
SELECT 
    COUNT(*)
FROM
    employees
        INNER JOIN
    dept_emp ON employees.emp_no = dept_emp.emp_no;
SELECT 
    *
FROM
    employees
        INNER JOIN
    dept_emp ON employees.emp_no = dept_emp.emp_no;

SELECT 
    e.emp_no, e.first_name, e.last_name, d.dept_no, d.from_date
FROM
    employees e
        LEFT JOIN
    dept_emp d ON e.emp_no = d.emp_no;
















