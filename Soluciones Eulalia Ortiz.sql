-- Activity 1
USE sakila;

-- Drop column picture from staff.
ALTER TABLE staff
DROP picture;

-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
Select * from customer where first_name = 'Tammy' and last_name= 'SANDERS';
Select * from staff where first_name = 'Jon';
INSERT INTO staff(staff_id, first_name, last_name,address_id,email, store_id, username,password,last_update) 
VALUES
(3,'TAMMY', 'SANDERS', 79, 'Tammy.Sanders@sakilastaff.com',2, 0, 0);
Select * from staff;

-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
-- You can use current date for the rental_date column in the rental table. 
-- Hint: Check the columns in the table rental and see what information you would need to add there. 
-- You can query those pieces of information. 
-- For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
-- select customer_id from sakila.customer where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
-- Use similar method to get inventory_id, film_id, and staff_id.
select * from rental;
select customer_id from sakila.customer where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
select * from sakila.film where title = 'Academy Dinosaur';
select * from sakila.inventory where film_id = 1;
select * from sakila.rental where inventory_id = 4 and staff_id = 1;
select *from rental;
INSERT INTO rental(rental_date,inventory_id, customer_id, staff_id) 
VALUES
('2022-05-16',2,130,1);




-- Activity 2
-- Use dbdiagram.io or draw.io to propose a new structure for the Sakila database.
-- Define primary keys and foreign keys for the new database.
-- Remove country_id from city
-- Remove film_actor, merge with actor
-- Remove inventory
-- Merge original_language
-- film_category, leave just one primary key or merge the table.
-- new structure organised around shops or around clients







