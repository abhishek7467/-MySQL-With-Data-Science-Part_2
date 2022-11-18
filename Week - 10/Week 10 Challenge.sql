/*											Question -1 

1. Write query to create procedure getaddress using cursor to fetch address from address table (schema – sakila).  
Query to use - SELECT address FROM  address;
Cursor Name – addressdetail
*/

use sakila;
drop procedure if exists getaddress;

delimiter $$
create procedure getaddress
(inout My_address varchar(16300))
begin 
	declare finished int default 0;
    declare addresslist varchar(400) default "";
    declare addressdetail 
    cursor for 
    select address from address ;
declare Continue handler 
for not found set finished=1;
open addressdetail;

MY_GET_address_A : 
LOOP
fetch addressdetail into addresslist;
if finished = 1 then leave MY_GET_address_A;
end if;
set My_address = concat(addresslist," ; ",My_address );
end LOOP MY_GET_address_A;
close addressdetail;
end$$ 
delimiter ;

set @address="";
CALL getaddress(@address);
select @address;







/*												Question 2

2. Write query to create procedure getactorname using cursor to fetch first_name,last_name from actor table (schema – sakila).  
Query to use - SELECT first_name, last_name FROM  actor;
Cursor Name – actornamedetail
*/




use sakila;
select * from actor;
drop procedure if exists getactorname;

delimiter $$
create procedure getactorname(inout My_fname varchar(16300) ,inout My_lname varchar(16000)
)
begin 
	declare finished int default 0;
    declare first_namelist varchar(400) default"";
	declare last_namelist varchar(400) default"";
    declare actornamedetail 
    cursor for 
    select first_name , last_name from actor ;
declare Continue handler 
for not found set finished=1;
open actornamedetail;

getactorLname : 
LOOP
fetch actornamedetail into first_namelist ,last_namelist  ;
if finished = 1 then leave getactorLname ;
end if;
set My_fname = concat(first_namelist," ; ",my_fname );
set My_lname = concat(last_namelist," ; ",my_lname );
end LOOP getactorLname;
close actornamedetail;
end$$ 
delimiter ;


set @first_name="" , @last_name="";
CALL createactor(@first_name , @last_name);
SELECT @first_name as 'Value for First Name' , @last_name as 'Value for Last Name';


