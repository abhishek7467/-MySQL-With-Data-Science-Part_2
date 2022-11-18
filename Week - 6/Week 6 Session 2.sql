SELECT 
    *
FROM
    employees;
SELECT 
    *
FROM
    departments;
SELECT 
    *
FROM
    dept_emp
        CROSS JOIN
    departments;

SELECT 
    COUNT(*)
FROM
    dept_emp
        CROSS JOIN
    departments;

SELECT 
    COUNT(*)
FROM
    employees;
SELECT 
    COUNT(*)
FROM
    salaries;
SELECT 
    *
FROM
    employees
        CROSS JOIN
    salaries;
SELECT 
    COUNT(*)
FROM
    employees
        CROSS JOIN
    salaries;


