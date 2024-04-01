CREATE TABLE kiralama2(
mkod int NOT NULL,
aracno int NOT NULL,
tarih varchar(10),
saat varchar (8),
tes_tarih varchar(10),
tes_saat varchar(8),
CONSTRAINT fk_mkod2 FOREIGN KEY (mkod)
REFERENCES musteri(mkod) ON UPDATE CASCADE
ON DELETE CASCADE,
CONSTRAINT fk_aracno2 FOREIGN KEY (aracno)
REFERENCES arac(aracno) ON UPDATE CASCADE
ON DELETE CASCADE,
CONSTRAINT pkkey PRIMARY KEY (mkod,aracno));