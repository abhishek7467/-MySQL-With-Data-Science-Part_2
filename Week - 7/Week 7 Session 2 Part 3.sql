SELECT 
    *
FROM
    salaries
ORDER BY salary;


SELECT 
    *
FROM
    salaries
ORDER BY salary DESC;

select emp_no, salary,
ntile(4) over (order by salary)Quartile
from salaries;

-- Derived Table
select ntile(4) over (order by salary) Quartile, max(salary)
from
(
select emp_no, salary, 
ntile(4) over (order by salary) Quartile
from salaries
)
temp
where Quartile in (1,3) 
group by Quartile;

-- Inter Quartile Rnge Q3-Q1
SELECT 74192 - 50507;

-- Multiply IQR * 1.5
SELECT 74192 - 50507 * 1.5;

-- Lower threshold
SELECT 50507 - (74192 - 50507) * 1.5;


-- Upper Threshold
SELECT 74192 + (74192 - 50507) * 1.5
;
SELECT 
    emp_no, salary
FROM
    salaries
WHERE
    salary < 14979.5 OR salary > 109719.5;


-- Making Data Summary

use employees;

SELECT 
    *
FROM
    salaries;
SELECT 
    'Total Salary', SUM(salary) TotalSalary
FROM
    salaries 
UNION SELECT 
    'Average Salary', AVG(salary) AverageSalary
FROM
    salaries 
UNION SELECT 
    'Minimum Salary', MIN(salary) MinimumSalary
FROM
    salaries 
UNION SELECT 
    'Maximum Salary', MAX(salary) MaximumSalary
FROM
    salaries 
UNION SELECT 
    'Standard Devication Salary', SUM(salary) StandardDevication
FROM
    salaries;



SELECT 
    *
FROM
    salaries;
SELECT 
    'Total Salary', SUM(salary) TotalSalary
FROM
    salaries
WHERE
    emp_no = 10001 
UNION SELECT 
    'Average Salary', AVG(salary) AverageSalary
FROM
    salaries
WHERE
    emp_no = 10001 
UNION SELECT 
    'Minimum Salary', MIN(salary) MinimumSalary
FROM
    salaries
WHERE
    emp_no = 10001 
UNION SELECT 
    'Maximum Salary', MAX(salary) MaximumSalary
FROM
    salaries
WHERE
    emp_no = 10001 
UNION SELECT 
    'Standard Devication Salary', SUM(salary) StandardDevication
FROM
    salaries
WHERE
    emp_no = 10001
;




SELECT 
    *
FROM
    salaries;
SELECT 
    'Total Salary', SUM(salary) TotalSalary
FROM
    salaries
WHERE
    emp_no = 10002 
UNION SELECT 
    'Average Salary', AVG(salary) AverageSalary
FROM
    salaries
WHERE
    emp_no = 10002 
UNION SELECT 
    'Minimum Salary', MIN(salary) MinimumSalary
FROM
    salaries
WHERE
    emp_no = 10002 
UNION SELECT 
    'Maximum Salary', MAX(salary) MaximumSalary
FROM
    salaries
WHERE
    emp_no = 10002 
UNION SELECT 
    'Standard Devication Salary', SUM(salary) StandardDevication
FROM
    salaries
WHERE
    emp_no = 10002
;




SELECT 
    emp_no, salary
FROM
    salaries 
UNION SELECT 
    'Total Salary', SUM(salary) TotalSalary
FROM
    salaries
WHERE
    emp_no = 10001 
UNION SELECT 
    'Average Salary', AVG(salary) AverageSalary
FROM
    salaries
WHERE
    emp_no = 10001 
UNION SELECT 
    'Minimum Salary', MIN(salary) MinimumSalary
FROM
    salaries
WHERE
    emp_no = 10001 
UNION SELECT 
    'Maximum Salary', MAX(salary) MaximumSalary
FROM
    salaries
WHERE
    emp_no = 10001 
UNION SELECT 
    'Standard Devication Salary', SUM(salary) StandardDevication
FROM
    salaries
WHERE
    emp_no = 10001
;




-- Concept of Drived Table
 
SELECT 
    *
FROM
    (SELECT 
        5, emp_no, salary
    FROM
        salaries UNION SELECT 
        1, 'Total Salary', SUM(salary) TotalSalary
    FROM
        salaries UNION SELECT 
        2, 'Average Salary', AVG(salary) AverageSalary
    FROM
        salaries UNION SELECT 
        3, 'Minimum Salary', MIN(salary) MinimumSalary
    FROM
        salaries UNION SELECT 
        4, 'Maximum Salary', SUM(salary) MaximumSalary
    FROM
        salaries) tempm
ORDER BY 1;


-- Concept of Derived Table

SELECT 
    *
FROM
    ((SELECT 
        5, emp_no, salary
    FROM
        salaries
    LIMIT 10) UNION SELECT 
        1, 'Total Salary', SUM(salary) TotalSalary
    FROM
        salaries UNION SELECT 
        2, 'Average Salary', AVG(salary) AverageSalary
    FROM
        salaries UNION SELECT 
        3, 'Minimum Salary', MIN(salary) MinimumSalary
    FROM
        salaries UNION SELECT 
        4, 'Maximum Salary', SUM(salary) MaximumSalary
    FROM
        salaries) tempm
ORDER BY 1;
