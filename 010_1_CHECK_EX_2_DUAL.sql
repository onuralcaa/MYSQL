CREATE TABLE musteri(
mkod int NOT NULL PRIMARY KEY,
mad varchar(50) NOT NULL,
msoyad varchar(50) NOT NULL,
madres varchar(255),
mtel varchar(15));
CREATE TABLE arac(
aracno int NOT NULL PRIMARY KEY,
model int NOT NULL,
marka varchar(50),
plaka varchar(25),
fiyat varchar(15),
CONSTRAINT chkmodel CHECK (model LIKE '[1-2][0-9][0-9][0-9]'));