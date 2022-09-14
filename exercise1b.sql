-- Author: Saima Teasha
-- Cource: CS317
-- Assignment: Exercise 1B
-- Learning Objectives:
--     Accessing an R-DBMS via command line for data manipulation,  
--     Basic understanding of DBA grants and privileges and getting DBA help,
--     Exploring an existing DB schema (tables) and tuples (rows) and attributes (columns), 
--     Forming DML (data Manipulation Language) queries using MySQL documentation and your book 
--     to answer questions about data in a database. 

-- 1. Using the sakila database, create queries to do the following:
--     a. Find all films that are have ever been rented. How many are there? 

SELECT COUNT(DISTINCT title) FROM rental 
  JOIN inventory ON inventory.inventory_id = rental.inventory_id 
  JOIN film ON film.film_id = inventory.film_id;

--     b. How many films are currently rented out and have not been returned? 

SELECT COUNT(*) FROM rental
  WHERE DATE(return_date) IS NULL;

--     c. On July 17, 2005, how many DVDs were rented out and had not yet been returned?

SELECT COUNT(*) FROM rental 
  WHERE DATE(rental_date) <= '20050717' 
  AND DATE(return_date) >= '20050717';
  
--     d. On July 17, 2005, how many DVDs were overdue? 

SELECT COUNT(*) FROM rental 
  JOIN inventory ON rental.inventory_id = inventory.inventory_id
  JOIN film ON inventory.film_id = film.film_id
  WHERE DATE(rental_date + INTERVAL rental_duration DAY) < '20050717'
  AND Date(return_date) > '20050717';
  
--     e. Of all the DVDs that have been returned in the entire Sakila data set, what percentage
--     were overdue at the time they were returned? Your output must be formatted as a percentage.

SELECT (SELECT COUNT(*) FROM rental WHERE return_date IS NOT NULL) AS allReturn,
(SELECT COUNT(*) FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id
WHERE DATE(return_date) > DATE(rental_date + INTERVAL rental_duration DAY)) AS overdue,
(SELECT (overdue/allReturn) * 100) AS 'overdue percentage';

--     f. Again, for July 17, 2005, create a list of films that were currently rented films (limit 
--     to 5 sorted by customer_id)

SELECT CONCAT(customer.last_name, ', ', customer.first_name) AS customer,
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
address.phone, film.title
FROM rental INNER JOIN customer ON rental.customer_id = customer.customer_id
INNER JOIN address ON customer.address_id = address.address_id
