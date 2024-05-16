CREATE USER 'deneme1'@'localhost' IDENTIFIED BY 'denden';
CREATE USER 'deneme2'@'localhost' IDENTIFIED BY 'denden';

GRANT SELECT ON ders.personel TO 'deneme1'@'localhost';
GRANT CREATE ON ders.* TO 'deneme1'@'localhost';
GRANT DELETE ON ders.personel TO 'deneme1'@'localhost', 'deneme2'@'localhost';
GRANT INSERT, UPDATE ON ders.* TO 'deneme1'@'localhost', 'deneme2'@'localhost';
 
GRANT ALL privileges on *.* to 'deneme2'@'localhost'