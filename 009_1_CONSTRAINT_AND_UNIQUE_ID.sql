CREATE TABLE personel2(
personel_id int NOT NULL,
soyad varchar(255) NOT NULL,
isim varchar(255),
CONSTRAINT un_deger UNIQUE (personel_id , soyad));