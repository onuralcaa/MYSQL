--�smi c ile ba�layan �r�nleri g�ster.(like)
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'C%'

--��erisinde "tiger" ge�en �r�nleri g�ster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE '%tiger%'

--ismi c ile ba�layan ve 3. harfi "a" olan �r�nleri g�ster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'c_a%'

--�smi c ile ba�layan 4. karakteri n veya r olan �r�nleri g�ster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'C__[nr]%'

--�smi c ile ba�layan 4. karakteri n ile t aras�nda bir karakter olan �r�nleri g�ster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'c__[n-t]%'

--�smi c ile ba�layan ama 3. karakteri a ile ba�lamayan �r�nleri g�ster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'c_[b-z]%' --B�R�NC� Y�NTEM

--�smi c ile ba�layan ama 3. karakteri a ile ba�lamayan �r�nleri g�ster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'c_[^a]%' --�K�NC� Y�NTEM

--�smi c ile ba�layan ama 3. karakteri a ile ba�lamayan �r�nleri g�ster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'c_[b-z]%'