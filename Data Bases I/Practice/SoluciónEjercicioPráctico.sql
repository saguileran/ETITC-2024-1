use sakila;

## Which actors have the first name 'Scarlett'
select * from actor where first_name = 'Scarlett';

## Which actors have the last name 'Johansson'
select * from actor where last_name like 'Johansson';

## How many distinct actors last names are there?
select count(distinct last_name) from actor;

## Which last names are not repeated?
SELECT last_name FROM actor
GROUP BY last_name HAVING COUNT(last_name ) = 1;

## Which last names appear more than once?
select last_name from actor 
group by last_name having count(*) > 1;

## Which actor has appeared in the most films?
select actor.actor_id, actor.first_name, actor.last_name,
       count(actor_id) as film_count
from actor join film_actor using (actor_id)
group by actor_id
order by film_count desc
limit 1;

## Is 'Academy Dinosaur' available for rent from Store 1?
# Step 1: which copies are at Store 1?
select film.film_id, film.title, store.store_id, inventory.inventory_id 
	from inventory
	join store using (store_id)
    join film using (film_id)
where film.title = 'Academy Dinosaur' and store.store_id = 1;

# Step 2: pick an inventory_id to rent:
select * from inventory  # inventory.inventory_id 
	 join store using (store_id)
     join film using (film_id)
     join rental using (inventory_id)
where film.title = 'Academy Dinosaur' 
	 and store.store_id = 1 
	 and not exists (select * from rental
                      where rental.inventory_id = inventory.inventory_id
                      and rental.return_date is null);

## Insert a record to represent Mary Smith renting 'Academy Dinosaur' from Mike Hillyer at Store 1 today .
insert into rental (rental_date, inventory_id, customer_id, staff_id)
values (NOW(), 1, 1, 1);
select * from rental order by rental_date desc;

## When is 'Academy Dinosaur' due?
# Step 1: what is the rental duration?
select rental_duration from film where title = 'Academy Dinosaur';

# Step 2: Which rental are we referring to -- the last one.
select * from rental order by rental_id desc limit 1;
# Step 3: add the rental duration to the rental date.
select rental_date,
       rental_date + interval(select rental_duration from film where film_id = 1) day as due_date
from rental
where rental_id = (select rental_id from rental order by rental_id desc limit 1);

## What is that average length of all the films in the sakila DB?
select avg(length) from film;

## What is the average length of films by category?
select category.name, avg(length) from film
	join film_category using (film_id)
	join category using (category_id)
group by category.name
order by avg(length) desc;

## Which film categories are long?
select category.name, avg(length) from film
	join film_category using (film_id) 
    join category using (category_id)
group by category.name
#having avg(length) > (select avg(length) from film) #
order by avg(length) desc;

## Why does this query return the empty set?
select * from film natural join inventory;
select last_update from film;
select last_update from inventory;
# Aunque tiene columnas con nombres similares y fechas parecidas,
# la hora es la que difiere y por eos noencuentra elementos en común
