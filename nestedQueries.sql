-- Author: Saima Teasha
-- Cource: CS317
-- Assignment: Assignment 2

-- The following queries are to use three tables called customers, receipts, and students. You may use (but not alter) the tables in vanhilsm_db,
-- or create the same tables in your own database using the three .sql files connected to this homework.

-- Create queries that directly show the answer to each question.
--     A solution is a query that produces a table that is the answer to the question. 
--     Not a solution would be a longer table where the answer must be found by the observer choosing some of the rows shown or using the number at 
--     the bottom of a table.
--     Not a solution would be a query that only works on the data currently in the tables, but would not work if more data, with more purchases,
--     customers, students, siblings, or twins, was added to one or more of the tables and the queries were run again. In other words, not a query 
--     like SELECT “Mary Jones”;

-- 1. The first questions refer to the customers and receipts tables.
--     a. Who were the 4 best customers based on total purchase dollar amount?

SELECT first_name, last_name, SUM(AMOUNT) AS total FROM receipts
JOIN customers ON customers.customer_id = receipt.customer_id
GROUP BY customerts.customer_id 
ORDER BY total 
DESC LIMIT 4;

--     b. Who were the 5 biggest spenders based on average purchase?

SELECT first_name, last_name, AVG(AMOUNT) AS total FROM receipts
JOIN customers ON customers.customer_id = receipt.customer_id
GROUP BY customrts.customer_id 
ORDER BY total 
DESC LIMIT 4;

--     c. Who were the 3 most frequent shoppers based on number of different purchases?

SELECT first_name, last_name, COUNT(purchase_date) AS totalPurchase FROM receipts
JOIN customers ON customers.customer_id = receipt.customer_id
GROUP BY customrts.customer_id 
ORDER BY total 
DESC LIMIT 3;

--     d. What was the busiest day?

SELECT purchase_date, COUNT(purchase_date) AS purchase_number FROM reciepts
GROUP BY purchase_date HAVING COUNT(ppurchase_date) > 1
ORDER BY COUNT(purchase_date) 
DESC LIMIT 1;

--     e. What was the most profitable day?

SELECT purchase_date, SUM(AMOUNT) AS totalAmount 
COUNT(purchase_date) AS purchase_number FROM reciepts
GROUP BY purchase_date HAVING COUNT(ppurchase_date) > 1
ORDER BY COUNT(purchase_date) 
DESC LIMIT 1;

--     f. Who made purchases on the busiest day? (there were 6 purchases on that day)

SELECT first_name, last_name, purchase_date FROM receipts
JOIN customers ON customers.customer_id = receipt.customer_id
WHERE PURCHASE_DATE = "20190527"
GROUP BY customrts.customer_id;

-- 2. These questions refer to the students table
--     How many sibling pairs are there? (Just having the same last name is not a sibling. They have the same home.)

SELECT COUNT(*) FROM (
  SELECT COUNT(*) street_address FROM students
  GROUP BY street_address HAVING COUNT(*) > 1) AS siblings;
  
--     b. Name all siblings.

SELECT first_name, last_name, street_address FROM students
WHERE street_address IN (
  SELECT street_address FROM students
  GROUP BY street_address HAVING COUNT(*) > 1);
  
--      c. How many twins are there? (Just having the same birthday does not make you twins.)

SELECT COUNT(*) FROM (
  SELECT * FROM STUDENTS
  WHERE street_address IN (
    SELECT street_address FROM students
    GROUP BY street_address HAVING COUNT(*) > 1)
  AND birthday IN (
    SELECT birthday FROM students
    GROUP BY birthday HAVING COUNT(*) > 1)
  GROUP BY birthday) 
AS count_twins;

--     d. Name the twins.

SELECT first_name, last_name, birthday, street_address FROM students
AND birthday IN (
  WHERE street_address IN (
    SELECT street_address FROM students
    GROUP BY street_address HAVING COUNT(*) > 1)
  AND birthday IN (  
    SELECT birthday FROM students
    GROUP BY birthday HAVING COUNT(*) > 1);
