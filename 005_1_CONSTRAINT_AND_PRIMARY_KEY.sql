CREATE TABLE notlar(
ogr_no int NOT NULL,
ders_kodu varchar(25) NOT NULL,
vize int,
final int,
CONSTRAINT pkey PRIMARY KEY(ogr_no,ders_kodu));