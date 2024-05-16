Select * from Products

--Product tablosundaki fiyat� 50 tl �zerindeki �r�nleri g�ster.
SELECT * FROM PRODUCTS AS P WHERE P.UnitPrice > 50

--Product tablosundaki fiyat� 20 tl alt�ndaki �r�nleri g�ster.
SELECT * FROM PRODUCTS AS P WHERE P.UnitPrice < 20 

--Product tablosundaki fiyat� 20 tl alt�ndaki �r�nlerin sadece isim ve kategori id lerini g�ster.
SELECT P.ProductName,P.CategoryID FROM PRODUCTS AS P WHERE P.UnitPrice < 20

--Product tablosundaki fiyat� 30 tl den b�y�k 60 tl den k���k olan �r�nlerin kategori id lerini ve fiyatlar�n� g�ster.
SELECT P.CategoryID,P.UnitPrice FROM PRODUCTS AS P WHERE P.UnitPrice > 30 AND P.UnitPrice < 60 

--Product tablosundaki �r�nlerin stok durumlar�n� g�ster.
SELECT P.ProductName, P.UnitsInStock, P.UnitPrice FROM PRODUCTS AS P

--Product tablosundaki stokta en az 1 tane kalm�� fiyat� 20 ile 50 tl aras�nda olan �r�nleri g�ster.
SELECT P.ProductName, P.UnitsInStock, P.UnitPrice FROM PRODUCTS AS P WHERE P.UnitPrice > 20 AND P.UnitPrice < 50 AND P.UnitsInStock > 0

--Londrada oturan �al��anlar� listeleyin. ( Employee tablosu, City kolonu)
SELECT * FROM EMPLOYEES AS E WHERE E.City = 'London'

--Sat�� m�d�r�m�z�n ismi nedir.
SELECT e.FirstName FROM EMPLOYEES AS E WHERE E.Title = 'Sales Manager' --steven reis

