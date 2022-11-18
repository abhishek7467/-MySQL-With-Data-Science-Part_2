SELECT 
    e.emp_no, e.first_name, e.last_name, d.dept_no, d.from_date
FROM
    employees e
        RIGHT JOIN
    dept_emp d ON e.emp_no = d.emp_no;



SELECT 
    d1.emp_no, d1.from_date, d2.emp_no
FROM
    dept_manager d1,
    dept_manager d2
WHERE
    d1.from_date = d2.from_date;

DELETE e , d FROM employees e
        INNER JOIN
    dept_emp d ON e.emp_no = d.emp_no 
WHERE
    e.emp_no = 10020;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 10020;
SELECT 
    *
FROM
    dept_emp
WHERE
    emp_no = 10020;
SELECT 
    *
FROM
    employees;



