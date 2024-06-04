##Alt Sorgular

##https://www.quackit.com/mysql/examples/mysql_subquery.cfm
#film idsi 2 olan filmde oynayan aktörlerin tüm bilgileri
SELECT * FROM actor
WHERE actor_id IN 
	(SELECT actor_id FROM film_actor
	WHERE film_id = 2);

#Ace Goldfinger filmindeki aktörlerin tüm bilgileri    
SELECT * FROM actor
WHERE actor_id IN 
	(SELECT actor_id FROM film_actor
	WHERE film_id = 
		(SELECT film_id FROM film 
		WHERE title = 'Ace Goldfinger')
	);
    
#Insert örneği
CREATE TABLE ace_goldfinger_actors
(first_name VARCHAR(45), last_name VARCHAR(45));

INSERT INTO ace_goldfinger_actors (first_name, last_name)
    SELECT first_name, last_name FROM actor a
		INNER JOIN film_actor fa ON
			a.actor_id = fa.actor_id
		WHERE fa.film_id = 
			(SELECT film_id FROM film 
			WHERE title = 'Ace Goldfinger');
    
SELECT * FROM ace_goldfinger_actors;

DROP TABLE IF EXISTS ace_goldfinger_actors;


#tablo yerine alt sorgu
SELECT AVG(a) FROM 
	(SELECT 
		customer_id,
		SUM(amount) a
	FROM payment
	GROUP BY customer_id) AS totals;
    

##http://www.mysqltutorial.org/mysql-subquery/
#tek seferde en fazla ödemeyi yapan müsteriler
SELECT 
    customer_id, amount
FROM
    payment
WHERE
    amount = (SELECT 
            MAX(amount)
        FROM
            payment);

#https://dzone.com/articles/correlated-subqueries-are-evil-and-slow-or-are-the            
#oyuncuların oynadığı film sayısı
SELECT 
 first_name, last_name,
 (SELECT count(*) 
 FROM film_actor fa 
 WHERE fa.actor_id = a.actor_id)
FROM actor a;

#yukarıdakinin aynısının joinle yazılmışı
SELECT 
 first_name, last_name, count(*)
FROM actor a
JOIN film_actor fa USING (actor_id)
GROUP BY actor_id;

##mg
#any-all
#ratingi pg olup ratingi g olan herhangi filmden daha kısa olan film
SELECT * FROM film
where length < any
(select length from film where rating='G')
and rating='PG';
#yukardakinin aynısı
SELECT * FROM film
where length <
(select max(length) from film where rating='G')
and rating='PG';

#ratingi pg olup ratingi g olan tüm filmlerden daha kısa olan film
SELECT * FROM film
where length < all
(select length from film where rating='G')
and rating='PG';
#yukardakinin aynısı
SELECT * FROM film
where length <
(select min(length) from film where rating='G')
and rating='PG';

#exists - not exists
#2 nolu filmde oynayan aktörler(ilk örneğin aynısı)
SELECT * FROM actor a
where exists 
(select * from film_actor fa
where fa.actor_id=a.actor_id and fa.film_id=2
);

#müşteriler için hiç kullanılmayan adresler
select * from address a where not exists(select * from customer c where c.address_id =a.address_id);
select * from address where address_id not in (select address_id from customer)




