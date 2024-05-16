/*
--AGGRÝGATE FUNCTÝONS
-----------------------------------------
SUM : Bir kolondaki deðerleri toplar.
COUNT: Satýrlarý sayar.
AVG: Ortalama alýr.
MAX:Kolondaki maks deðeri bulur.
MIN:Kolondali min deðeri bulur.
*/

--String ifadeleri tek týrnak içinde kullanýlýr.


--Ürünlerin toplam ücretlerini bulun.
SELECT SUM(P.UnitPrice) AS 'Toplam' FROM PRODUCTS AS P 

--Toplam sipariþ sayýsýný hesaplayýnýz.
SELECT COUNT(*) FROM ORDERS AS ORD --GÝÝRLEN SATIR SAYISI AYNI ZAMANDA SÝPARÝÞ SAYISINADA EÞÝTTÝR.


--Ortalama sipariþ tutarý ne kadar.
SELECT avg(ord.UnitPrice) as 'Ortalama sipariþ tutarý'FROM [Order Details] as ord

--Sýrasýyla en pahalý ve en ucuz ürünü listeleyiniz.
SELECT MAX(P.UnitPrice) AS 'En pahalý ürünün fiyatý' FROM PRODUCTS AS P
SELECT MIN(P.UnitPrice) AS 'En ucuz ürünün fiyatý' FROM PRODUCTS AS P










