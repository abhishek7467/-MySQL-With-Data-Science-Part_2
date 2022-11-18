use employees;

delimiter //
create procedure emp()
begin select  * from employees
;
end // 
delimiter ;

delimiter //
create procedure empselection()
begin select  * from employees where gender = 'M';
end // 
delimiter ;


delimiter //
create  procedure empselectionFemale()
begin select  * from employees where gender = 'F';
end // 
delimiter ;

# drop procedure empselectionFemale;

call emp();
call empselection();
call empselectionFemale();
call empselectionFemaleSal();


delimiter //
CREATE PROCEDURE EmpCount()
BEGIN
declare EmpCOunt double default 0;
select 
count(emp_no)
into EmpCount
 from employees;
select EmpCount;
delimiter ;

call Salsum();

