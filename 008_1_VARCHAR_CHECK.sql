CREATE TABLE urunler(
urun_kod varchar(4) NOT NULL,
urun_ad varchar(25) NOT NULL,
CONSTRAINT chkkod
CHECK (urun_kod IN ( 'A089', 'A090', 'A010', 'A100' )
OR urun_kod LIKE 'A9[0-9][0-9]'));