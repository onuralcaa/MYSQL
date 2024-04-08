SELECT * FROM personel;

SELECT soyad,ad,telefon FROM personel;

create table bolum(bolum_id int,bolum_adi varchar(20));

insert into bolum values(1,'Bilgi İşlem'),(2,'İnsan Kaynakları'),(3,'Üretim');

SELECT personel.ad,bolum.bolum_adi FROM personel, bolum





