--JOIN kullanýmý Databaseler içindeki iletiþimi yönetmeye yarar.


--Tüm ürünlerin isimlerini, fiyatýný ve kategori isimlerini listeleyiniz.
SELECT P.ProductName, P.UnitPrice ,C.CategoryName FROM PRODUCTS AS P JOIN CATEGORÝES AS C ON P.CategoryID = C.CategoryID


--Bloklar arasýnda iliþkilendirmeler yapýlabilir.
SELECT P.ProductName, P.UnitPrice , S.CompanyName FROM PRODUCTS AS P JOIN Suppliers AS S ON P.SupplierID = S.SupplierID