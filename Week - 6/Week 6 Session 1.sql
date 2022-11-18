use employees;
SELECT 
    *
FROM
    dept_emp;
SELECT 
    COUNT(*)
FROM
    dept_emp;
SELECT 
    *
FROM
    departments;
SELECT 
    COUNT(*)
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

