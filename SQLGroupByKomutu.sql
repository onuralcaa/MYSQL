--GROUP BY

--Kategorilere g�re �r�n �cretlerini listeleyiniz.
SELECT c.CategoryName, sum(P.UnitPrice) AS 'Toplam �cret' FROM PRODUCTS AS P 
JOIN Categories AS C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName


--Hangi kategoride ka� �r�n�m var (sadece stoktaki �r�nler)
SELECT C.CategoryName, COUNT(*) AS '�r�n say�s�' FROM PRODUCTS AS P 
JOIN Categories AS C ON P.CategoryID = C.CategoryID
WHERE P.UnitsInStock > 0
GROUP BY C.CategoryName

--Hangi �ehirde ka� �al��an var.
SELECT emp.City, EMP.Country,  COUNT(*) AS '�al��an say�s�' FROM Employees AS EMP
GROUP BY EMP.City , EMP.Country ---EKLEMEK �STEN�LEN S�T�NLAR YAZILIR.