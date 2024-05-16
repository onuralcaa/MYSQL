Select * from Products

--Product tablosundaki fiyatý 50 tl üzerindeki ürünleri göster.
SELECT * FROM PRODUCTS AS P WHERE P.UnitPrice > 50

--Product tablosundaki fiyatý 20 tl altýndaki ürünleri göster.
SELECT * FROM PRODUCTS AS P WHERE P.UnitPrice < 20 

--Product tablosundaki fiyatý 20 tl altýndaki ürünlerin sadece isim ve kategori id lerini göster.
SELECT P.ProductName,P.CategoryID FROM PRODUCTS AS P WHERE P.UnitPrice < 20

--Product tablosundaki fiyatý 30 tl den büyük 60 tl den küçük olan ürünlerin kategori id lerini ve fiyatlarýný göster.
SELECT P.CategoryID,P.UnitPrice FROM PRODUCTS AS P WHERE P.UnitPrice > 30 AND P.UnitPrice < 60 

--Product tablosundaki ürünlerin stok durumlarýný göster.
SELECT P.ProductName, P.UnitsInStock, P.UnitPrice FROM PRODUCTS AS P

--Product tablosundaki stokta en az 1 tane kalmýþ fiyatý 20 ile 50 tl arasýnda olan ürünleri göster.
SELECT P.ProductName, P.UnitsInStock, P.UnitPrice FROM PRODUCTS AS P WHERE P.UnitPrice > 20 AND P.UnitPrice < 50 AND P.UnitsInStock > 0

--Londrada oturan çalýþanlarý listeleyin. ( Employee tablosu, City kolonu)
SELECT * FROM EMPLOYEES AS E WHERE E.City = 'London'

--Satýþ müdürümüzün ismi nedir.
SELECT e.FirstName FROM EMPLOYEES AS E WHERE E.Title = 'Sales Manager' --steven reis

