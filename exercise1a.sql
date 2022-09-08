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

SELECT * FROM actor ORDER BY last_name;

SELECT * FROM actor ORDER BY first_name;

--         2. Create a select query that shows how many actors are there? 

SELECT COUNT(*) FROM actor;

--         3. Create another query to show how many actors have the last name Wood? (The query must output the number, not their names.) 

SELECT COUNT(*) FROM actor WHERE last_name = 'Wood';

-- 2. For this next exercise, use your database which is named usernamedb,
--     a. Follow the MySQL tutorial for “Creating and Using a Database” starting with 'Creating a Table' and when you’re done, do “SHOW TABLES” and 
--     “SELECT * FROM yourtable” to demonstrate.  

CREATE TABLE pet(name VARCHAR(20), owner VARCHAR(20), species VARCHAR(20), sex CHAR(1), birth DATE, death DATE);

SHOW TABLES; 

DESCRIBE pet; 

INSERT INTO pet VALUES ('Puffball', 'Diana', 'hamster', 'f', '1990-03-30', NULL);
INSERT INTO pet VALUES ('Fluffy', 'Harold', 'cat', 'm', '1999-02-04', NULL);
INSERT INTO pet VALUES ('Mithu', 'Meena', 'parrot', 'm', '2002-12-28', NULL);

SELECT * FROM pet;

--     b. Add a table to your database called myhomes that includes fictitious addresses for 8 homes that you would love to have any place in the
--     world.  The table should include columns for address number, street, city, and zipcode along with number of bedrooms and bathrooms. 

CREATE TABLE myhomes(address INT(5),  street VARCHAR(50), city VARCHAR(50), zipcode INT(5), rooms INT(2));
INSERT INTO myhomes VALUES('3700', 'Willow Creek Rd.', 'Prescott', 86301, 2);
INSERT INTO myhomes VALUES('456', 'Vine St.', 'Seattle', 37273, 1);
INSERT INTO myhomes VALUES('6283', 'State Avenue', 'San Jose', 47400, 10);
INSERT INTO myhomes VALUES('3232', 'Mesa Dr.', 'Mesa', 74288, 2);
INSERT INTO myhomes VALUES('7322', 'Cotton Wood St.', 'Ottowa', 28637, 1);
INSERT INTO myhomes VALUES('8263', 'Court Side Dr.', 'Atlanta', 71683, 3);

SELECT * FROM myhomes;
