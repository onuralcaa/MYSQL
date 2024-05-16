REVOKE SELECT ON ders.personel FROM 'deneme1'@'localhost';
REVOKE ALL PRIVILEGES, GRANT OPTION  FROM 'deneme2'@'localhost';

drop user 'deneme2'@'localhost';