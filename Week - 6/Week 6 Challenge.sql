use sakila;
/*

				Question 1


*/

SELECT 
    *
FROM
    city;


SELECT 
    *
FROM
    country;


SELECT 
    city.city_id, city.city, country.country_id, country.country
FROM
    city
        INNER JOIN
    country ON city.city_id = country.country_id;






/*

				Question 2


*/


SELECT 
    *
FROM
    film;


SELECT 
    *
FROM
    film_category;



SELECT 
    *
FROM
    category;
SELECT 
    F.film_id, F.title, F.description, FC.category_id, C.name
FROM
    film F
        INNER JOIN
    film_category FC ON F.film_id = FC.film_id
        INNER JOIN
    category C ON C.category_id = FC.category_id;








/*

				Question 3


*/

SELECT 
    *
FROM
    inventory;


SELECT 
    *
FROM
    film_text;


SELECT 
    F.film_id,
    F.title,
    F.description,
    I.inventory_id,
    FT.description
FROM
    film F
        LEFT JOIN
    inventory I ON F.film_id = I.film_id
        LEFT JOIN
    film_text FT ON FT.film_id = F.film_id;









/*

				Question 4


*/

SELECT 
    *
FROM
    staff;


SELECT 
    *
FROM
    payment;


SELECT 
    *
FROM
    rental;
SELECT 
    S.staff_id,
    S.first_name,
    S.last_name,
    P.amount,
    P.payment_date,
    R.rental_date,
    R.return_date
FROM
    staff S
         JOIN
    payment P ON S.staff_id = P.payment_id
         JOIN
    rental R ON R.rental_id = P.payment_id; 
