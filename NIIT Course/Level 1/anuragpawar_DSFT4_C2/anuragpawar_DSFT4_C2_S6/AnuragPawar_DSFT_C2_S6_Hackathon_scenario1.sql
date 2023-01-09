use sakila;
-- TASK 1
select * from actor;
-- TASK 2
select first_name, count(first_name) from actor group by first_name;
select last_name, count(last_name) from actor group by last_name;
select concat(first_name,' ',last_name), count(concat(first_name,' ',last_name)) from actor group by concat(first_name,' ',last_name) order by count(concat(first_name,' ',last_name));
-- TASK 3
select first_name, count(first_name), last_name, count(last_name) from actor
group by first_name, last_name having count(first_name)=1 and count(last_name)=1;
-- TASK 4
select fa.actor_id, concat(a.first_name,' ',a.last_name), fa.film_id, f.description, f.rating from film_actor fa left join film f on f.film_id=fa.film_id left join actor a on fa.actor_id=a.actor_id;
-- TASK 5
select fa.actor_id, fa.film_id, f.title, f.description, f.rating from film_actor fa left outer join film f on f.film_id = fa.film_id order by actor_id;
-- TASK 6a
select title from film where replacement_cost<=9;
-- TASK 6b
select title from film where 15< replacement_cost< 20;
-- TASK 6c
select title from film where replacement_cost = (select max(replacement_cost) from film) and rental_rate = (select min(rental_rate) from film);
-- TASK 7
select f.film_id, f.title, count(fa.actor_id) from film f join film_actor fa on f.film_id = fa.film_id group by film_id order by count(fa.actor_id) desc;
-- TASK 8
select film_id, title from film where title like 'K%' or title like 'Q%';
-- TASK 9
select fa.actor_id, concat(a.first_name,' ',a.last_name) as actor_name from actor a left join film_actor fa on a.actor_id = fa.actor_id left join film f on fa.film_id = f.film_id where f.title = 'AGENT TRUMAN';
-- TASK 10
select f.film_id, f.title as family_films from film f join film_category fc on f.film_id = fc.film_id where fc.category_id = (select category_id from category where name = 'family');
-- TASK 11
select f.film_id, f.title, count(r.rental_id) as renting_frequency from film f join inventory i on f.film_id = i.film_id join rental r on i.inventory_id = r.inventory_id group by f.film_id order by count(r.rental_id) desc;
-- TASK 12
select (avg(f.replacement_cost) - avg(f.rental_rate)) as difference, c.name from film f join film_category fc on f.film_id = fc.film_id join category c on fc.category_id = c.category_id group by c.category_id having (avg(f.replacement_cost) - avg(f.rental_rate)) > 15; 
-- TASK 13
select count(fc.film_id) as num_of_films, c.name from film_category fc join category c on fc.category_id = c.category_id group by c.category_id having count(fc.film_id) between 60 and 70 order by count(fc.film_id); 
