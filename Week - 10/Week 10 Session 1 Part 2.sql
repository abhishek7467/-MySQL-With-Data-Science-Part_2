use employees;


USE `employees`;
DROP procedure IF EXISTS `EmpGender`;

DELIMITER $$
USE `employees`$$
CREATE PROCEDURE EmpGender (IN arg1 char(2))
BEGIN
select * from employees where gender=arg1 ;
END$$
DELIMITER ;
call EmpGender('F');

call sel_dept_no('d001');
call sel_dept_no('d002');
call sel_dept_no('d003');

USE `employees`;
DROP procedure IF EXISTS firtsname_lastname;

DELIMITER $$
USE `employees`$$
CREATE PROCEDURE firtsname_lastname (IN arg1 varchar(20), IN  arg2 varchar(20))
BEGIN
select * from employees where first_name = arg1 and last_name = arg2;

END$$

DELIMITER ;

call firtsname_lastname('Georgi','Facello');
call firtsname_lastname('Anneke','Preusig');
call firtsname_lastname('Parto','Bamford');

call EmpGenderNo('F',10002);
call EmpGenderNo('M',10005);
call EmpGenderNo('F',10007);


USE `employees`;
DROP procedure IF EXISTS `empCountPara`;




# session variable
DELIMITER $$
USE `employees`$$
CREATE PROCEDURE empCountPara ( In arg1 char(2), out empCount int  )
BEGIN
select count(*)  into 
empCount
from employees
where gender = arg1
;
END$$

DELIMITER ;

call empCountPara('F',@test);
select @test;
call empCountParameter('M',@test2);
select @test2;





# INOUT 

USE `employees`;
DROP procedure IF EXISTS `EmpCountINOut`;

DELIMITER $$
USE `employees`$$
CREATE PROCEDURE EmpCountINOut ( 
inout arg1 char(2) , out empCount int )
BEGIN
select count(*) into empCount from employees 
where gender = arg1;
END$$
DELIMITER ;


set @test3 ='M';
select @ test3;
call EmpCountINOut(@test3 , @count1);
select @count1;
drop procedure  if exists EmpCountINOut;


USE `employees`;
DROP procedure IF EXISTS `avgsal`;

DELIMITER $$
USE `employees`$$
CREATE PROCEDURE avgsal ()
BEGIN
declare  avgsal double default 0;
select avg (salary) into
avgsal from salaries; 

END$$

DELIMITER ;

call avgsal();


























