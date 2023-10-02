--GROUP BY

--Kategorilere göre ürün ücretlerini listeleyiniz.
SELECT c.CategoryName, sum(P.UnitPrice) AS 'Toplam ücret' FROM PRODUCTS AS P 
JOIN Categories AS C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName


--Hangi kategoride kaç ürünüm var (sadece stoktaki ürünler)
SELECT C.CategoryName, COUNT(*) AS 'Ürün sayýsý' FROM PRODUCTS AS P 
JOIN Categories AS C ON P.CategoryID = C.CategoryID
WHERE P.UnitsInStock > 0
GROUP BY C.CategoryName

--Hangi þehirde kaç çalýþan var.
SELECT emp.City, EMP.Country,  COUNT(*) AS 'Çalýþan sayýsý' FROM Employees AS EMP
GROUP BY EMP.City , EMP.Country ---EKLEMEK ÝSTENÝLEN SÜTÜNLAR YAZILIR.