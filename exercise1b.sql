-- Author: Saima Teasha
-- Cource: CS317
-- Assignment: Exercise 1B
-- Learning Objectives:
--     Accessing an R-DBMS via command line for data manipulation,  
--     Basic understanding of DBA grants and privileges and getting DBA help,
--     Exploring an existing DB schema (tables) and tuples (rows) and attributes (columns), 
--     Forming DML (data Manipulation Language) queries using MySQL documentation and your book to answer questions about data in a database. 

-- 1. Using the sakila database, create queries to do the following:
--     a. Find all films that are have ever been rented. How many are there? 

SELECT COUNT(DISTINCT title) FROM rental 
  JOIN inventory ON inventory.inventory_id = rental.inventory_id 
  JOIN film ON film.film_id = inventory.film_id;

--     b. How many films are currently rented out and have not been returned? 

SELECT COUNT(*) FROM rental
  WHERE DATE(return_date) IS NULL;

--     c. On July 17, 2005, how many DVDs were rented out and had not yet been returned?

