--JOIN kullan�m� Databaseler i�indeki ileti�imi y�netmeye yarar.


--T�m �r�nlerin isimlerini, fiyat�n� ve kategori isimlerini listeleyiniz.
SELECT P.ProductName, P.UnitPrice ,C.CategoryName FROM PRODUCTS AS P JOIN CATEGOR�ES AS C ON P.CategoryID = C.CategoryID


--Bloklar aras�nda ili�kilendirmeler yap�labilir.
SELECT P.ProductName, P.UnitPrice , S.CompanyName FROM PRODUCTS AS P JOIN Suppliers AS S ON P.SupplierID = S.SupplierID