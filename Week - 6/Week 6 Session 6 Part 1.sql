use employees;

SELECT 
    COUNT(*)
FROM
    dept_emp;

SELECT 
    COUNT(*)
FROM
    departments;
SELECT 
    COUNT(*)
FROM
    dept_manager;

-- Cross join with three tables

SELECT 331602 * 9 * 24;

SELECT 
    *
FROM
    dept_emp
        CROSS JOIN
    departments
        CROSS JOIN
    dept_manager;


SELECT 
    COUNT(*)
FROM
    dept_emp
        CROSS JOIN
    departments
        CROSS JOIN
    dept_manager;

SELECT 
    COUNT(*)
FROM
    titles;


SELECT 
    *
FROM
    dept_emp
        CROSS JOIN
    departments
        CROSS JOIN
    dept_manager
        CROSS JOIN
    titles;
	

SELECT 
    COUNT(*)
FROM
    dept_emp
        CROSS JOIN
    departments
        CROSS JOIN
    dept_manager
        CROSS JOIN
    titles;
	
  
SELECT 
    *
FROM
    dept_emp
        CROSS JOIN
    departments
        CROSS JOIN
    dept_manager
        CROSS JOIN
    titles
;

SELECT 
    e.emp_no, e.first_name, e.last_name, d.dept_no, t.title
FROM
    employees e
        INNER JOIN
    dept_emp d ON e.emp_no = d.emp_no
        INNER JOIN
    titles t ON e.emp_no = t.emp_no;


SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_no,
    t.title,
    de.dept_name
FROM
    employees e
        INNER JOIN
    dept_emp d ON e.emp_no = d.emp_no
        INNER JOIN
    titles t ON e.emp_no = t.emp_no
        INNER JOIN
    departments de ON de.dept_no = d.dept_no;
    
SELECT 
    *
FROM
    departments;
    

SELECT 
    e.emp_no, e.first_name, e.last_name, d.dept_no, t.title
FROM
    employees e
        LEFT JOIN
    dept_manager d ON e.emp_no = d.emp_no
        LEFT JOIN
    titles t ON e.emp_no = t.emp_no;

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_no,
    t.title,
    de.dept_name
FROM
    employees e
        LEFT JOIN
    dept_manager d ON e.emp_no = d.emp_no
        LEFT JOIN
    titles t ON e.emp_no = t.emp_no
        LEFT JOIN
    departments de ON de.dept_no = d.dept_no;
    
    
SELECT 
    e.emp_no, e.first_name, e.last_name, d.dept_no, t.title
FROM
    employees e
        RIGHT JOIN
    dept_manager d ON e.emp_no = d.emp_no
        RIGHT JOIN
    titles t ON e.emp_no = t.emp_no;
    
    
    

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_no,
    t.title,
    de.dept_name
FROM
    employees e
        RIGHT JOIN
    dept_manager d ON e.emp_no = d.emp_no
        RIGHT JOIN
    titles t ON e.emp_no = t.emp_no
        RIGHT JOIN
    departments de ON de.dept_no = d.dept_no;
    


