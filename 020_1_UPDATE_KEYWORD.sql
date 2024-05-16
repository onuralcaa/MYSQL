UPDATE ders.personel SET mail='amurat@mail.com', telefon='3581231214' WHERE ad='Ali' AND soyad='Murat';
UPDATE ders.personel SET mail='Geçersiz Mail' WHERE mail NOT LIKE '%@mail.com';
SELECT * FROM ders.personel;