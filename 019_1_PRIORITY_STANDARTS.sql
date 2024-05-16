SELECT * FROM ders.personel WHERE ad = 'Ali' OR  SOYAD = 'Demir' AND mail = 'ademir@mail.com';
SELECT * FROM ders.personel WHERE (ad = 'Ali' OR  SOYAD = 'Demir') AND mail = 'ademir@mail.com';