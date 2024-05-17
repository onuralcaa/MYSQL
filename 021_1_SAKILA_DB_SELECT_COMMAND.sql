## Tek Tablo Icinde Sorgulamalar 
use sakila;
SELECT * FROM customer;
SELECT last_name,first_name FROM customer;

SELECT distinct first_name FROM customer; ##Ayni olanlari gostermeyecektir.
SELECT distinct * FROM customer;
SELECT distinct store_id,active FROM customer; ##4 deger dondurecek.

SELECT last_name,first_name,store_id FROM customer order by first_name; ## Adına gore sirala, order by en sona yazilir.
SELECT last_name,first_name FROM customer order by store_id,first_name; ##onceliklendirme
SELECT last_name,first_name, store_id FROM customer order by store_id asc,first_name desc; ## asc => artan siralama, desc => azalan siralama
##default olarak da asc kabul edilir.
SELECT * FROM customer order by 5 desc; ## 5. sutuna gore sirala (ornekte -email-)

SELECT last_name as soyadi,first_name FROM customer; ##takma adlar verme - (as komutu)

SELECT * FROM payment;
SELECT payment_id,amount+5 as yeni_fiyat FROM payment; ## Her bir degere +5 ekleyerek gosterme
SELECT payment_id, amount+amount*(20/100) as yeni_fiyat FROM payment; ## Fiyatlara %20 zam yapma gosterimi

SELECT * FROM film;
SELECT film_id, concat(title,' (',release_year,')') as adi FROM film; ## Belli bir formatta gosterme - concat komutu

SELECT * FROM film where length<=60; ## Film uzunluguna gore kategorize etme yontemleri
SELECT * FROM film where length=60;
SELECT * FROM film where length<>60; ## Degil operatoru - <>

SELECT * FROM payment where payment_date<'2006-01-01';
SELECT * FROM payment where payment_date<'2005-08-01' order by payment_date;
SELECT * FROM payment where payment_date<'2005-08-02 18:00' order by payment_date desc;

SELECT * FROM film where length>90 and rating='PG'; ##  Mantiksal operatorler
SELECT * FROM film where length>90 or length<60 order by length;
SELECT * FROM film where rating IN ('G','R','PG'); ## Coklu arama
SELECT * FROM film where rating NOT IN ('G','R','PG'); ## Degili

SELECT * FROM film where length between 80 and 120;
SELECT * FROM film where length not between 80 and 120;

SELECT * FROM film where special_features LIKE '%Commentaries%'; ## %---% kullanimi
SELECT * FROM film where title LIKE '__T%Y'; ## Alt cizgi = Farketmeyen karakter sayisi -- 3. harfi T olan ve Y harfi ile biten filmler
SELECT * FROM address where address2 is null;
SELECT * FROM address where address2 is not null; ## Bos ve Null farklı kavramlardir.
SELECT * FROM address where not address2 is  null; ## not null --> alternatif kullanim
SELECT * FROM address where not (district = 'England' and city_id > 400) order by district;
SELECT * FROM address where not (district = 'England') or not (city_id > 400) order by district; ## Ustteki ornek icin alternatif kullanim