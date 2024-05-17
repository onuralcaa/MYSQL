## Aritmetiksel Operatorler ve Fonksiyonlar

use sakila; #tablo secimi

SELECT address,substr(address,1,6),substring(address,1,5)  FROM address; # Belli iki karakter arasi secim
SELECT address,substring(address,10) FROM address; # N den sonraki karakterleri goster
SELECT concat(substr(first_name,1,1),'*** ',last_name) as isim FROM actor; # Isim kisaltma komutlari - Veri gizleme tekniği

SELECT address,left(address,7) FROM address; # Soldan N karakter al
SELECT address,right(address,7) FROM address; # Sagdan N karakter al
SELECT left('deneme',3) as kisaltma; # Kisaltma mantigi
SELECT address,lower(address) FROM address;
SELECT address,upper(address) FROM address;
SELECT address,length(address) FROM address;
SELECT address FROM address where length(address)>30;

SELECT rating,replace(rating,'PG','Ebeveyn Denetimi') FROM film; # Bul ve degistir

SELECT instr('deneme','nem'); # N. karakterinden itibaren bulundu.
SELECT email, instr(email,'@')-1 FROM customer; # email username uzunluğu
SELECT address,reverse(address) FROM address; # Tersine yazdirma
SELECT instr(reverse(email),'@')-1 FROM customer; # email domain uzunluğu

## Aritmetik ifadeler
SELECT abs(-4.333); # Mutlak deger
SELECT replacement_cost, ceil(replacement_cost/2), floor(replacement_cost/2) FROM film; # Ceil = yukari yuvarla, floor = asagi yuvarla
SELECT replacement_cost, round(replacement_cost), round(replacement_cost/2) FROM film; # Mantiksal yuvarlama islemi
SELECT MOD(8,3),8%3; # İki kullanimda ayni
SELECT pow(2,10),power(2,10); ## Us alma
SELECT sqrt(169); # Karekok alma islemi
SELECT replacement_cost, power(replacement_cost, 3), sqrt(replacement_cost) FROM film;

# Istatiksel veri alma - ***
SELECT count(replacement_cost), sum(replacement_cost), avg(replacement_cost), max(replacement_cost), min(replacement_cost) FROM film;

# Zaman islemleri
select now(),current_timestamp(),curdate(),current_date(),curtime(),current_time();
select year(now()),month(now()),day(now()),hour(now()),minute(now()),second(now()),week(now()),weekday(now());
select extract(year from '1999-03-15');
select datediff(now(),'2017-04-29');
select date_add(now(),interval 1 week); # Tarihler ile aritmetik islemler
select date_sub(now(),interval 3 day);
select date(now());
select time(now());

select cast(3.14*10.2578798 as decimal(10,2)); # Cast islemleri ve gosterimi
select cast(address as char(10)) from address;

SELECT * FROM actor where first_name='ed'; # Tekrar sayisini bulma - case sensitive mevcut degil
SELECT * FROM actor where cast(first_name as binary)=cast('ed' as binary); # Binary donusum sonrasi karsilastirma

