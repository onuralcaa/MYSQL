## Gruplandırarak Sorgulama

SELECT rating FROM film group by rating;
SELECT rating,title FROM film group by rating; #istenmeyen durum - ilgili ilk kayıt
SELECT rating,count(title) FROM film group by rating; 
SELECT rating,count(*),avg(replacement_cost) FROM film group by rating;
SELECT rating,count(*),avg(replacement_cost) FROM film where replacement_cost<20 group by rating;

select rating,rental_duration from film group by rating,rental_duration;
select rating,rental_duration,avg(replacement_cost) from film group by rating,rental_duration;
select rating,rental_duration,count(rental_duration) from film group by rating,rental_duration;

select rating,rental_duration,count(rental_duration) 
from film
where rental_duration<5 
group by rating,rental_duration;

select rating,rental_duration,count(rental_duration) 
from film 
group by rating,rental_duration
having rental_duration<5; #üsttekiyle aynı

select rating,rental_duration,count(rental_duration) as ks 
from film 
group by rating,rental_duration
having ks<40 and rating in ('R','G')
order by ks;



