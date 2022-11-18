use sakila;

############################################## Question -1 ################################

create  view active_customer as select *  from customer  where store_id=1 and active =1;
select * from active_customer;


############################################## Question - 2 ################################




CREATE VIEW customer_detail AS
    (SELECT 
        C.customer_id,
        C.first_name,
        C.last_name,
        C.email,
        A.address,
        CI.city
    FROM
        customer C
            INNER JOIN
        address A ON C.customer_id = A.address_id
            INNER JOIN
        city CI ON CI.country_id = A.address_id);

select * from customer_detail;




