select * from titles;
select title, count(title) 
from titles group by(title)  ;



USE `employees`;
DROP procedure IF EXISTS `titleCount`;

DELIMITER $$
USE `employees`$$
CREATE PROCEDURE titleCount ( in agr1 varchar(35),
out arg2 varchar(30) )
BEGIN
declare a int default 0;
SELECT 
    COUNT(title)
INTO a FROM
    titles
WHERE
    title=arg1;
if a = 24 
then 
set arg2 = 'Manager';
elseif a = 15159 then 
set arg2 = 'Technique Leader';
end if;
END$$
DELIMITER ;

call  titleCount('Manager', @test );
select @test;



DELIMITER //
create procedure titleNew(IN arg1 varchar(35), OUT arg2 varchar(30))
begin 
declare count(title) into a from titles where title= arg1;
case 
when a =24 then set arg2 = 'Manager'
when a = 15159 then 
set arg2 = 'Technique Leader';
end
DELIMITER ;



delimiter //
use employees;
CREATE DEFINER=`root`@`localhost` PROCEDURE `looptesting`(in counter int)
begin 
loopstart :
LOOP 
select * from departments;
if counter <=1 then
leave loopstart;
end if;
set counter = counter-1;
end loop;
end
delimiter;

use employees;

call looptesting(7);
call looptesting(10);
call looptesting(6);


USE `employees`;
DROP procedure IF EXISTS `whileloop`;

DELIMITER $$
USE `employees`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `whileloop`(in counter int)
begin 
loopstart:
while counter>=1 DO 
select * from departments;
set counter = counter-1;
end while;
end$$

DELIMITER ;



call whileloop(6);





