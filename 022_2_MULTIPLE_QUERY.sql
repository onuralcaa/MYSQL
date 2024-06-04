## Birden Fazla Tablo Üzerinde Sorgulama

#kartezyen birleştirme
select city.city,country.country from city,country;

#ilişkisel veri sütunu ile anlamlı birleştirme
select city,country from city ci,country co
where ci.country_id=co.country_id;

#yukardakine ek olarak sadece turkiyeden olanlar
select ci.city,co.country from city as ci,country as co
where ci.country_id=co.country_id and co.country='Turkey';

#şehirlerin ülke adları
SELECT city, country
FROM city
INNER JOIN country 
ON city.country_id = country.country_id
ORDER BY city;

#? adında a geçen türkiyedeki şehirler ve ülke adları
SELECT city, country
FROM city
INNER JOIN country ON
city.country_id = country.country_id
where country='Turkey' and city like '%a%';

#?actor tablosunda tekrar eden soyadlar ve sayıları
select last_name,count(*) from actor group by last_name having count(*) > 1;

#ülke adları ve şehir sayıları
SELECT country, COUNT(city)
FROM country a
INNER JOIN city b
ON a.country_id = b.country_id
GROUP BY country;