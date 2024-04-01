CREATE TABLE notlar3(
ogr_no int NOT NULL,
ders_kodu varchar(25) NOT NULL,
vize int,
final int,
CONSTRAINT chkvize CHECK (vize>=0 AND vize<=100),
CONSTRAINT chkfinal CHECK (final>=0 AND final<=100));