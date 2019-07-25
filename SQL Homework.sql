use sakila;
use actor;

SELECT actor.first_name, actor.last_name
FROM actor;

SELECT * FROM actor
WHERE source = "JOE";

SELECT * FROM actor.last_name
WHERE source = "GEN";

SELECT first_name,UPPER(first_name) 
FROM actor;

SELECT * FROM actor.last_name
WHERE source = "LI"
group by "LI";

USE country;

SELECT country_id
FROM country
WHERE country_id IN
  (
    SELECT country
    FROM country
    WHERE country = 'Afghanistan'
    );

ALTER TABLE actor
ADD COLUMN description int;

DELETE FROM actor.description;

 SELECT COUNT(*)
 FROM actor
 WHERE last_name IN
    (
     SELECT last_name
     FROM actor
     WHERE title = 'WILLIAMS'
 );
 
UPDATE actor.first_name
SET HARPO = GROUCHO
WHERE GROUCHO = HARPO;

SELECT staff.first_name, staff.last_name, address.address, address.address2
FROM sakila
INNER JOIN staff ON
staff.address_id=address.address_id;

 SELECT COUNT(*)
 FROM film
 WHERE title IN
    (
     SELECT title
     FROM film
     WHERE title = 'K' and 'Q'
 );
 
  SELECT COUNT(*)
 FROM film_actor
 WHERE actor_id IN
    (
     SELECT film_id
     FROM film_actor
     WHERE title = 'Alone Trip'
 );

SELECT rating, count(rental_rate) AS 'count rental'
FROM film
GROUP BY rating;

SELECT SUM(amount) AS 'Total Amount by customer'
FROM payment
GROUP BY customer_id;




