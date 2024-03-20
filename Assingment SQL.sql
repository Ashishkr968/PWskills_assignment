-- 1. Identify the primary keys and foreign keys in maven movies db. Discuss the difference.
   -- Primary keys uniquely identify each record in their respective tables (eg., movie_id,actor_id) while foreign keys establish relationships between tables by referencing the primary key of another table (eg., movie_id in movie_actor table refrences movie_id in movie table).  
SELECT * FROM information_schema.key_column_usage;
  
  -- 2. List all details of actors.
  Select * from actor;
  
  -- 3. List all customer information from DB.
  Select * from customer;
  
  -- 4. List different countries
  Select distinct country from country;
  
  -- 5.  Display all active customers.
  Select customer_id, first_name, last_name, email from customer WHERE `active`=1;
  
  -- 6.  List of all rental IDs for customer with ID 1.
  Select rental_id from rental where customer_id=1;
  
  -- 7. Display all the films whose rental duration is greater than 5.
  Select film_id, title from film where rental_duration > 5;
  
  -- 8. List the total number of films whose replacement cost is greater than $15 and less than $20.
  Select count(*) from film where replacement_cost > 15 and replacement_cost < 20;
  
  -- 9. Display the count of unique first names of actors.
  Select count(distinct first_name) from actor;
  
  -- 10. Display the first 10 records from the customer table.
  Select * from customer limit 10;
  
  -- 11. Display the first 3 records from the customer table whose first name starts with ‘b’.
  Select * from customer where first_name like 'b%' limit 3;
  
  -- 12. Display the names of the first 5 movies which are rated as ‘G’.
  Select title from film where rating = 'G' limit 5;
  
  -- 13. Find all customers whose first name starts with "a".
  Select * from customer where first_name like "a%";
  
  -- 14. Find all customers whose first name ends with "a".
  Select * from customer where first_name like "%a";
  
  -- 15. Display the list of first 4 cities which start and end with ‘a’.
  Select city from city where city like 'a%%a' limit 4;
  
  -- 16. Find all customers whose first name have "NI" in any position.
  Select first_name from customer where first_name like '%ni%';
  
  -- 17. Find all customers whose first name have "r" in the second position.
Select first_name from customer where first_name like '_r%';

-- 18. Find all customers whose first name starts with "a" and are at least 5 characters in length.
Select first_name from  customer where first_name like 'a____%';

-- 19. Find all customers whose first name starts with "a" and ends with "o".
Select first_name from customer where first_name like 'a%o';

-- 20. Get the films with pg and pg-13 rating using IN operator.
Select title from film where rating in ('PG', 'PG-13');

-- 21. Get the films with length between 50 to 100 using between operator.
Select * from film where length between 50 and 100;

-- 22. Get the top 50 actors using limit operator.
Select * from actor limit 50;

-- 23. Get the distinct film ids from inventory table.
Select distinct film_id from inventory;