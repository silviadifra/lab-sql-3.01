USE sakila;


-- drop column picture from staff.
ALTER table staff
DROP column picture;

SELECT * FROM sakila.staff;
SELECT * FROM sakila.customer;
-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

SELECT * FROM sakila.customer
WHERE first_name = "TAMMY";
-- Tammy address_id is 79

INSERT INTO staff(staff_id, first_name, last_name, address_id, store_id, active, username, last_update) 
VALUES
(3,'Tammy','Sanders', 79, 2, 1, 'Tammy','2022-05-16');

SELECT * FROM sakila.staff;

-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
-- You can use current date for the rental_date column in the rental table. 
-- Hint: Check the columns in the table rental and see what information you would need to add there. 
-- You can query those pieces of information. 
-- For eg., you would notice that you need customer_id information as well. 
-- To get that you can use the following query:

-- select customer_id from sakila.customer
-- where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

-- Use similar method to get inventory_id, film_id, and staff_id.
SELECT * FROM sakila.film;
SELECT * FROM sakila.rental;
SELECT * FROM sakila.inventory;
SELECT * FROM sakila.store;
SELECT * FROM sakila.customer;

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
-- Charlotte custumer_id = 130

select film_id from sakila.film
where title = "Academy Dinosaur";
-- Academy Dinosaur film_id=1

select staff_id from sakila.staff
where first_name = 'Mike' and last_name = 'Hillyer';
-- staff id of Mike Hillyer= 1

select store_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
-- store_id =1
select inventory_id from sakila.inventory
where film_id = 1 and store_id = 1 ;
-- inventory_id of Academy Dinosaur= 1,2,3,4. I will pick 1. 


INSERT INTO rental(rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update) 
VALUES
(16050,'2022-05-16 12:28:17', 1, 1, null, 1, "2022-05-16 12:28:17" );

SELECT * FROM sakila.rental;

