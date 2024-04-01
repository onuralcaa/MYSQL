CREATE TABLE kiralama(
mus_kod int NOT NULL,
aracno int NOT NULL,
tarih varchar(10),
saat varchar (8),
tes_tarih varchar(10),
tes_saat varchar(8),

CONSTRAINT fk_mkod FOREIGN KEY (mus_kod)
REFERENCES musteri(mkod),

CONSTRAINT fk_aracno FOREIGN KEY (aracno)
REFERENCES arac(aracno),

CONSTRAINT pkkey PRIMARY KEY (mus_kod,aracno));