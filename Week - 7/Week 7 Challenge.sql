
use sakila;





/*

######################################################### Question - 1 ############################################################

*/



SELECT 'Parameter', 'Value' 
UNION SELECT 
    'Total Amount', SUM(amount) TotalAmount
FROM
    payment 
UNION SELECT 
    'Average Amount', AVG(amount) AverageAmount
FROM
    payment 
UNION SELECT 
    'Minimum Amount', MIN(amount) MinimumAmount
FROM
    payment 
UNION SELECT 
    'Maximum Amount', MAX(amount) MaximumAmount
FROM
    payment 
UNION SELECT 
    'Variance of Amount', AVG(amount) VarianceAmount
FROM
    payment;
    
    
    
    
    



/*

######################################################### Question - 2 ############################################################

*/
    
        
select 
payment_id,customer_id , staff_id ,
sum(amount)  over(partition  by amount) as TotalSum ,  
avg(amount) over(partition  by amount) AverageAmount,
min(amount) over(partition  by amount) Minimum
from payment   
order by payment_id;


/*

######################################################### Question - 3 ############################################################

*/





# Check null value in the film_category table

SELECT 
    *
FROM
    film_category
WHERE
    film_id IS NULL OR category_id IS NULL
        OR last_update IS NULL;



# Check null value in the city table

SELECT 
    *
FROM
    city
WHERE
    city IS NULL OR city_id IS NULL
        OR country_id IS NULL;


# Check null value in the address table

SELECT 
    *
FROM
    address
WHERE
    address_id IS NULL OR address IS NULL
        OR address2 IS NULL
        OR district IS NULL
        OR city_id IS NULL
        OR postal_code IS NULL
        OR phone IS NULL
        OR location IS NULL
        OR last_update IS NULL;


# Check null value in the store table

SELECT 
    *
FROM
    store
WHERE
    store_id IS NULL
        OR manager_staff_id IS NULL
        OR address_id IS NULL
        OR last_update IS NULL;


# Check null value in the film_actor table

SELECT 
    *
FROM
    film_actor
WHERE
    film_id IS NULL OR actor_id IS NULL
        OR last_update IS NULL;






/*

######################################################### Question - 4 ############################################################

*/


select  payment_date, payment_id as  CurrentCount ,(lag(payment_id,1) over(order by payment_date )) PreviousCount  ,
cast(payment_id as unsigned) -(lag(sum(payment_id),1) over(order by payment_date ))  as CurrentDifference from payment  group by(payment_date)
order by(payment_date) ;

