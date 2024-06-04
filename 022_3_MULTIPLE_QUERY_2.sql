## Birden Fazla Tablo Üzerinde Sorgulama2

#customer tablosundaki kayıtla aynı soyadı taşıyan aktor varsa yanında göster
SELECT 
	c.customer_id, 
    c.first_name, 
    c.last_name,
    a.actor_id,
    a.first_name,
    a.last_name
FROM customer c
LEFT JOIN actor a 
ON c.last_name = a.last_name
ORDER BY c.last_name;

#where a.actor_id is null

#actor tablosundaki kayıtla aynı soyadı taşıyan customer varsa yanında göster
SELECT 
	c.customer_id, 
    c.first_name, 
    c.last_name,
    a.actor_id,
    a.first_name,
    a.last_name
FROM customer c
RIGHT JOIN actor a 
ON c.last_name = a.last_name
ORDER BY a.last_name;

##filmler ve kategorileri
select  f.title,c.name
from    film f
inner join film_category fc 
on f.film_id=fc.film_id
inner join category c 
on c.category_id=fc.category_id;

#filmlerde en çok oynayan aktör ve oynamaya sayısı
select actor.actor_id, actor.first_name, actor.last_name,count(actor_id) as film_count
from actor 
join film_actor using (actor_id)
group by actor_id
order by film_count desc
limit 1;

# kategori adi ve ortalama film uzunluğu
select category.name, avg(length)
from film join film_category using (film_id) join category using (category_id)
group by category.name
order by avg(length) desc;

# kategori adi ve ortalama film uzunluğu (ortalaması genel film ortalamasından fazla olanlar)
select category.name, avg(length)
from film join film_category using (film_id) join category using (category_id)
group by category.name
having avg(length) > (select avg(length) from film)
order by avg(length) desc;

#kartezyen çarpım
select city,country from city cross join country;

#ortak sütuna göre (country_id) join 
alter table city drop last_update; #öncelikle ikinci bir ortak sütun olan last_update kaldırılıyor
select * from city natural join country;#inner join gibi davranır

#self join
create database ornek;
use ornek;
create table personel(id int,adi varchar(20),yon_id int);
insert into personel values (1,'Ali',NULL),(2,'Veli',1),(3,'Ahmet',2),(4,'Mehmet',2);
#
select p1.id,p1.adi,p2.adi as yonetici
from personel p1
left join personel p2
on p1.yon_id=p2.id
order by p1.id;

#union
create table eski_personel(id int,adi varchar(20),yon_id int);
insert into eski_personel values (101,'Hasan',NULL),(102,'Hüseyin',101),(4,'Mehmet',2);

select * from personel
union
select * from eski_personel;

select * from personel
union all
select * from eski_personel;

select id,adi from personel
union
select yon_id,adi from eski_personel;