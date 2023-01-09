use sakila;
-- TASK 1
-- to maximize profit the board members should prefer movie catogories which are most frequently rented.
select c.name, count(r.rental_id) as renting_frequency from film_category fc join inventory i on fc.film_id = i.film_id join rental r on i.inventory_id = r.inventory_id join category c on fc.category_id = c.category_id group by fc.category_id order by count(r.rental_id) desc limit 10;
-- TASK 2
select f.title, concat(a.first_name,' ',a.last_name) as actor_name from film f join film_actor fa on f.film_id=fa.film_id join actor a on fa.actor_id = a.actor_id group by fa.actor_id order by f.replacement_cost desc limit 10;
-- TASK 3
select c.name, sum( ifnull(p.amount,0)) as revenue from category c join film_category fc on c.category_id = fc.category_id join film f on fc.film_id = f.film_id join inventory i on f.film_id = i.film_id join rental r on i.inventory_id = r.inventory_id join payment p on r.rental_id = p.rental_id group by c.name order by revenue desc;
-- TASK 4
select f.film_id, f.title, count(i.inventory_id) as num_of_copies from film f join inventory i on f.film_id = i.film_id group by f.film_id having f.title in ('BROTHERHOOD BLANKET', 'SOUP WISDOM');
-- TASK 5
select c.name, sum( ifnull(p.amount,0)) as revenue from category c join film_category fc on c.category_id = fc.category_id join film f on fc.film_id = f.film_id join inventory i on f.film_id = i.film_id join rental r on i.inventory_id = r.inventory_id join payment p on r.rental_id = p.rental_id group by c.name order by revenue desc limit 10;
-- TASK 6
use sakila;
select sum(p.amount) as revenue, f.title as cultural_movie from payment p
inner join rental r on p.rental_id = r.rental_id
inner join inventory i on i.inventory_id = r.inventory_id
inner join film f on f.film_id = i.film_id
where f.description like '%sumo%' or f.description like '%wrestl%'
group by f.title
order by revenue desc limit 5;
-- Task 7
Select c.country, f.title from country c 
join city t on c.country_id = t.country_id
join address a on t.city_id = a.city_id
join customer u on a.address_id = u.address_id
join payment p on u.customer_id = p.customer_id
join rental r on p.rental_id = r.rental_id
join inventory i on r.inventory_id = i.inventory_id
join film f on i.film_id = f.film_id where lower(country) in ('india', 'united states', 'united arab emirates');