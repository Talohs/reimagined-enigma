select district, first_name, last_name
from address a
join customer c
on a.address_id  = c.address_id 
where a.district = 'Texas';

select amount, first_name, last_name
from customer c 
join payment p 
on c.customer_id = p.customer_id
where p.amount > 7;

select * 
from customer c 
where customer_id in (
    select amount
    from payment p
    group by customer_id, amount 
    having sum(amount) > 175 
);

select *
from city c 
join address a 
on c.city_id = a.city_id
join country co
on co.country_id = c.country_id 
join customer cu 
on a.address_id = cu.address_id
where co.country = 'Argentina';

select *
from film_category fc 
join category c 
on fc.category_id = c.category_id 
group by c."name", fc.film_id 
order by count("name");

select *
from film_actor fa
join film f 
on fa.film_id = f.film_id 
join actor a 
on fa.actor_id = a.actor_id 
order by count(a.actor_id); 

select *
from film_actor fa
join film f 
on fa.film_id = f.film_id 
join actor a 
on fa.actor_id = a.actor_id 
order by count(a.actor_id) desc; 

select *
from country c 
join city ci 
on c.country_id = ci.country_id
group by ci.city_id, c.country_id 
order by count(ci.city_id) asc;

select *
from film_actor fa
join film f 
on fa.film_id = f.film_id 
join actor a 
on fa.actor_id = a.actor_id
group by a.actor_id 
order by count(a.actor_id) desc; 
between count(f.film) between 20 and 25;