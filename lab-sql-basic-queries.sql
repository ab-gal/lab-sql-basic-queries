USE sakila;
show tables;

-- 2
SELECT * FROM actor, film, customer;

-- 3
SELECT title FROM film;
Select name from language;
SELECT first_name FROM staff;

-- 4
SELECT DISTINCT release_year FROM film;

-- 5
SELECT COUNT(store_id) FROM store;
SELECT COUNT(staff_id) FROM staff;

SELECT COUNT(*) FROM rental WHERE return_date IS NULL;
SELECT COUNT(*) FROM inventory;
SELECT (SELECT COUNT(*) FROM inventory)-(SELECT COUNT(*) FROM rental WHERE return_date IS NULL) 
AS total_available;
SELECT DISTINCT COUNT(last_name) FROM actor;

-- 6
SELECT DISTINCT `length` FROM film
ORDER BY `length` DESC LIMIT 10;

-- 7
SELECT * from actor
WHERE first_name = "SCARLETT";