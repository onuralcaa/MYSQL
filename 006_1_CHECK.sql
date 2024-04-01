CREATE TABLE notlar2 (
ogr_no int NOT NULL,
ders_kodu varchar(25) NOT NULL,
vize int CHECK (vize>=0),
final int CHECK (final>=0),
CONSTRAINT pkkey PRIMARY KEY(ogr_no,ders_kodu));