-- Json Data Type
create table user_feedback(
id int auto_increment primary key ,
event_name varchar(50),
name varchar(50),
properties JSON ,
browser JSON 
);

desc user_feedback;
drop table user_feedback;
select * from user_feedback;
insert into user_feedback (event_name, name , properties , browser )
values(
'Purchase',
'Abhi',
'{"IPAddress" : "115.342.342.121"}',
'{"name": "Safari ", "OS":"MAC" ,"resolution":{"x" : 1600 , "y":900}}'
),
(
'Product Query',
'Ridhi',
'{"IPAddress" : "56.232.11.111"}',
'{"name": "Firfox ", "OS":"Windows" ,"resolution":{"x" : 1920 , "y":1080}}'
),
(
'Purchase',
'Alpha',
'{"IPAddress" : "673.342.234.783"}',
'{"name": "Safari ", "OS":"MAC" ,"resolution":{"x" : 1920 , "y":1080}}'
),
(
'Return Request',
'Gama',
'{"IPAddress" : "157.111.234.231"}',
'{"name": "Chrome ", "OS":"Windos" ,
"resolution":{"x" : 1920 , "y":1080}}'
),
(
'Purchase',
'Bita',
'{"IPAddress" : "673.98.000.783"}',
'{"name": "Edges ", "OS":"MAC" ,
"resolution":{"x" : 480 , "y":1089}}'
);

select * from user_feedback;

select id, event_name , properties  -> '$.IPAddress' System_Resolution 
from user_feedback;

select id, event_name , properties  -> '$.IPAddress' IP_Address , 
browser -> '$.OS' System_Resolution 
from user_feedback;

 
select id, event_name , properties  ->> '$.IPAddress' IP_Address , 
browser -> '$.OS' System_Resolution 
from user_feedback;


select id, event_name , properties  ->> '$.IPAddress' IP_Address , 
browser ->> '$.OS' System_Resolution 
from user_feedback;

select id, event_name , properties  ->> '$.IPAddress' IP_Address , 
browser ->> '$.OS' System_Resolution, browser ->> '$.resolution.x' System_Resolution_x 
from user_feedback;

select browser -> '$.resolution' from user_feedback;

select id, event_name , properties  ->> '$.IPAddress' IP_Address , 
browser ->> '$.OS' Oerating_System_, browser ->> '$.resolution.y' System_Resolution_y 
from user_feedback;

select browser ->> '$.name' browser_name ,
count(browser)
from user_feedback
group by browser ->> '$.name';


select browser ->> '$.OS' Operating_System ,
count(browser)
from user_feedback
group by browser ->> '$.OS';


select browser ->> '$.resolution.x' Resolution_x ,
sum(browser)
from user_feedback
group by browser ->> '$.resolution.x';


select browser ->> '$.resolution.y' Resolution_y ,
sum(browser)
from user_feedback
group by browser ->> '$.resolution.y';


-- functions for JSON Type Data

select Json_Type ('["Himalaya",5000,"Ganga",5005050 , "Ravan"]');
select json_type('"MySQL"');
select json_type("MySQL");
select json_type('null');
select json_type('NULL');
select json_type('Null');
select json_type('true');
select json_type('false');
select json_type('FALSE');
select json_type('False');

select json_array('Himalaya ',500, sysdate());
select json_array('Himalaya ',5000, pi());
select json_array('Himalaya ',500, true);
select json_array('Himalaya ',500, TRUE);
select json_array('Himalaya ',500, null);

select json_object('browser_name', 'Safari','resolution','1920*1020');
select json_object('browser_name', 'Safari','resolution','1920*1020','500');
select json_object('browser_name', 'Safari','resolution','1920*1020','500','ABhi');

select json_merge_preserve('["Himalaya", 5000,"Ganga",5000,"Ravan"]','{"Browser_name":"Chrome"}'
);



select json_merge_preserve('["Himalaya", 5000,"Ganga",5000,"Ravan"]',
'{"Browser_name":"Chrome"}',
'{"Browser_name":"Chrome"}',
'{"Browser_name":"Chrome"}'
);


select json_valid('null');
select json_valid('NULL');
select json_valid('Null');

select json_valid('["Himalaya", 5000,"Ganga",5000,"Ravan"]');

select json_valid('"Himalaya", 5000,"Ganga",5000,"Ravan"');
select json_valid (500);
select json_valid('600');
select json_valid('"600"');

select json_valid('{"Browser_name":"Chrome"} ');
select json_extract('{"Browser_name":"Chrome"}','$.Browser_name');
select * from user_feedback;
select json_extract (properties , '$.IPAddress')
from user_feedback;

SELECT 
    id,
    event_name,
    JSON_EXTRACT(properties, '$.IPAddress'),
    JSON_EXTRACT(browser, '$.OS'),
    JSON_EXTRACT(browser, '$.name'),
    JSON_EXTRACT(browser, '$.resolution.x'),
    JSON_EXTRACT(browser, '$.resolution.y')
FROM
    user_feedback;


SELECT JSON_EXTRACT('{"a":1,"b":2,"c":[3,2,5]}', '$.c');
SELECT JSON_EXTRACT('{"a":1,"b":2,"c":[3,2,5]}', '$.*');
SELECT JSON_EXTRACT('{"a":1,"b":2,"c":[3,2,5]}', '$.b');
SELECT JSON_EXTRACT('{"a":1,"b":2,"c":[3,2,5]}', '$.a');

SELECT 
    id,
    event_name,
    JSON_EXTRACT(properties, '$.*'),
    JSON_EXTRACT(browser, '$.*')
FROM
    user_feedback;


SELECT JSON_EXTRACT('{"a":1,"b":2,"c":[3,2,5]}', '$.c[*]');
SELECT JSON_EXTRACT('{"a":1,"b":2,"c":[3,2,5]}', '$.c[1]');
SELECT JSON_EXTRACT('{"a":{"b":1},"c":{"b":2}}', '$**.b');

SELECT JSON_EXTRACT('[1,2,3,4,5]', '$[1 to 3]');
SELECT JSON_EXTRACT('[1,2,3,4,5]', '$[0 to 2]');
SELECT JSON_EXTRACT('[1,2,3,4,5]', '$[2 to 4]');

SELECT JSON_EXTRACT('[1,2,3,4,5]', '$[4 to 1]');

SELECT JSON_EXTRACT('[1,2,3,4,5]', '$[last-3 to last-1]');
SELECT JSON_EXTRACT('[1,2,3,4,5]', '$[last-5 to last-3]');
SELECT JSON_EXTRACT('[1,2,3,4,5]', '$[last-2 to last-0]');
SELECT JSON_EXTRACT('[1,2,3,4,5]', '$[last-4 to last-2]');

SELECT JSON_EXTRACT('[10,20,30,40,50,60,89,76,98]', '$[last-3 to last-1]');

SELECT JSON_EXTRACT('[10,20,30,40,50,60,89,76,98]', '$[last-5 to last-2]');








