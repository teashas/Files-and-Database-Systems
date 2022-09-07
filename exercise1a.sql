-- Author: Saima Teasha
-- Cource: CS317
-- Assignment: Exercise 1A
-- Learning Objectives:
--     Accessing an R-DBMS via command line for data manipulation
--     Basic understanding of DBA grants and privileges and getting DBA help,
--     Exploring an existing DB schema (tables) and tuples (rows) and attributes (columns), 
--     Forming DML (data Manipulation Language) queries using MySQL documentation and your book to answer questions about data in a database. 

-- 1.a. Log into PRClab1 and MySQL, change your password, and then do “show databases;”

mysql -u teashas -p

SET PASSWORD = PASSWORD('XXXXX')

SHOW DATABASES; 

-- b. Use the command “SHOW GRANTS;”

SHOW GRANTS; 

-- c. Explore the sakila DB using the command line. 
--     i. How many tables are in the DB and what are they? 

USE sakila

SHOW TABLES;

--     ii. How many films are in the DB? Describe them.

SELECT COUNT(*) FROM film;

DESCRIBE film;

--     iii. What are the columns in the table “actor”?

DESCRIBE actor; 

--     iv. Write queries that comes back with a list if asking for a list, or only the number if asking for a number (not the list of names). 
--         1. Use a select query to list all actors in the database in alphabetic order by last-name then first-name. 

