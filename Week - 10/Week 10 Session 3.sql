-- Cursor

use employees;

drop procedure createlastname;
delimiter $$
create procedure createlastname
(
inout lastname varchar(16000) 
)
begin 
	declare finished int default 0;
    declare lastnamelist varchar(400) default "";
    declare lastnamedetail 
    cursor for 
    select last_name from employees where gender ='F' 
    and hire_date < '1985-03-01';

declare Continue handler 
for not found set finished=1;
open lastnamedetail;

getlastname : 
LOOP
fetch lastnamedetail into lastnamelist;
if finished = 1 then leave getlastname;
end if;
set lastname = concat(lastnamelist," ; ",lastname );
end LOOP getlastname;
close lastnamedetail;
end$$ 



set @lastname="";
CALL createlastname(@lastname);
select @lastname;




delimiter $$
create procedure createlastnameWithDept
(
inout lastname varchar(16000) 
)
begin 
	declare finished int default 0;
    declare lastnamelist varchar(400) default "";
    declare lastnamedetail 
    cursor for 
    select last_name from employees where gender ='F' 
    and hire_date < '1985-03-01';

declare Continue handler 
for not found set finished=1;
open lastnamedetail;

getlastname : 
LOOP
fetch lastnamedetail into lastnamelist;
if finished = 1 then leave getlastname;
end if;
set lastname = concat(lastnamelist," ; ",lastname );
end LOOP getlastname;
select * from departments;
close lastnamedetail;
end$$ 




set @lastnameD="";
CALL createlastnameWithDept(@lastnameD);
select @lastnameD;






#########Inside

delimiter $$
create procedure createlastnameInside
(inout lastname varchar(16000) )
begin 
	declare finished int default 0;
    declare lastnamelist varchar(400) default "";
    declare lastnamedetail 
    cursor for 
    select last_name from employees where gender ='F' 
    and hire_date < '1985-03-01';

declare Continue handler 
for not found set finished=1;
open lastnamedetail;

getlastname : 
LOOP
fetch lastnamedetail into lastnamelist;
if finished = 1 then leave getlastname;
end if;
set lastname = concat(lastnamelist," ; ",lastname );
end LOOP getlastname;
close lastnamedetail;
end$$ 




set @lastnamec="";
CALL createlastnameInside(@lastnamec);
select @lastnamec;
















