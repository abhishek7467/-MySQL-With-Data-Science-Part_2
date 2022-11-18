use employees;

show index from employees;
show index from departments;
show index from dept_emp;
show index from dept_manager;
show index from salaries;
show index from titles;


use mysql_python;
show index from orders;


use subq 
# for creating index
;

create index ordID on orders(Order_Id);
show index from orders;
create unique index UniqueIndex on subemp(Emp_Id); 
show index from subemp;



alter table orders drop index ordID;
show index from orders;
drop index UniqueIndex on subemp; 
show index from subemp;

