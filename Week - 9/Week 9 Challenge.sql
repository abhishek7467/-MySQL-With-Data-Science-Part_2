
use sakila;

###########################################  Question 1 ###################


create table product
(
product_id int not null primary key,
product_name varchar(50) ,
preventive_maintenance json,
repair_schedule json

);

desc product;


############################################### Question 2 ########################

insert into product values 
(101, "Honda Amaze" ,'{"Part" :"Motor","EngineerName":"Astha","MaintenanceDate":"1989-02-16"}','{"repaireDate": "1992-10-14","Expendture":9000}'),
(102, "Honda CIty" ,'{"Part" :"Stering","EngineerName":"Mayank","MaintenanceDate":"1985-04-16"}','{"repaireDate": "1989-01-14","Expendture":19000}'),
(103, "Honda WR-V" ,'{"Part" :"Seat","EngineerName":"Neha","MaintenanceDate":"1993-03-12"}','{"repaireDate": "1994-01-14","Expendture":10000}'),
(104, "Honda Jazz" ,'{"Part" :"Motor","EngineerName":"Astha","MaintenanceDate":"1997-02-10"}','{"repaireDate": "1996-01-12","Expendture":5000}'),
(105, "Honda ER-V" ,'{"Part" :"Clutch Plate","EngineerName":"Sameer","MaintenanceDate":"2020-02-10"}','{"repaireDate": "2020-01-03","Expendture":45000}');

select * from product;



#################################Question 3 ########################################

select product_id, product_name , 
preventive_maintenance ->>'$.Part' Part , 
preventive_maintenance ->> '$.MaintenanceDate' MaintenanceDate  ,
repair_schedule ->> '$.Expendture' Expendture
from product;




############################################ Question 4 #########################################

select product_id, product_name , 
preventive_maintenance ->> '$.EngineerName' EngineerName , 
preventive_maintenance ->> '$.MaintenanceDate' MaintenanceDate  
from product;



####################################### Question 5 #############################

select product_id, product_name , 
preventive_maintenance ->>'$.Part' Part , 
preventive_maintenance ->> '$.EngineerName' EngineerName , 
preventive_maintenance ->> '$.MaintenanceDate' MaintenanceDate  ,
repair_schedule ->> '$.repaireDate' repaireDate,
repair_schedule ->> '$.Expendture' Expendture
from product;






