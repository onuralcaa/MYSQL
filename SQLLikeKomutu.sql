--Ýsmi c ile baþlayan ürünleri göster.(like)
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'C%'

--Ýçerisinde "tiger" geçen ürünleri göster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE '%tiger%'

--ismi c ile baþlayan ve 3. harfi "a" olan ürünleri göster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'c_a%'

--Ýsmi c ile baþlayan 4. karakteri n veya r olan ürünleri göster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'C__[nr]%'

--Ýsmi c ile baþlayan 4. karakteri n ile t arasýnda bir karakter olan ürünleri göster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'c__[n-t]%'

--Ýsmi c ile baþlayan ama 3. karakteri a ile baþlamayan ürünleri göster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'c_[b-z]%' --BÝRÝNCÝ YÖNTEM

--Ýsmi c ile baþlayan ama 3. karakteri a ile baþlamayan ürünleri göster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'c_[^a]%' --ÝKÝNCÝ YÖNTEM

--Ýsmi c ile baþlayan ama 3. karakteri a ile baþlamayan ürünleri göster.
SELECT * FROM PRODUCTS AS P WHERE P.ProductName LIKE 'c_[b-z]%'