SELECT * FROM personel WHERE ad='Murat';
SELECT * FROM personel WHERE d_tarihi<='1975-01-01';
SELECT * FROM personel WHERE d_tarihi<='1975-01-01' AND Ad='Mustafa';
SELECT * FROM personel WHERE d_tarihi<='1975-01-01' OR Ad='Ayşe';
SELECT * FROM personel WHERE soyad IN ('kuş','demir');
SELECT * FROM personel WHERE ad LIKE '%ur%';
SELECT * FROM personel WHERE ad LIKE '_u%' OR mail IN ('amurat@posta.com','ademir@mail.com');




