/*
--AGGR�GATE FUNCT�ONS
-----------------------------------------
SUM : Bir kolondaki de�erleri toplar.
COUNT: Sat�rlar� sayar.
AVG: Ortalama al�r.
MAX:Kolondaki maks de�eri bulur.
MIN:Kolondali min de�eri bulur.
*/

--String ifadeleri tek t�rnak i�inde kullan�l�r.


--�r�nlerin toplam �cretlerini bulun.
SELECT SUM(P.UnitPrice) AS 'Toplam' FROM PRODUCTS AS P 

--Toplam sipari� say�s�n� hesaplay�n�z.
SELECT COUNT(*) FROM ORDERS AS ORD --G��RLEN SATIR SAYISI AYNI ZAMANDA S�PAR�� SAYISINADA E��TT�R.


--Ortalama sipari� tutar� ne kadar.
SELECT avg(ord.UnitPrice) as 'Ortalama sipari� tutar�'FROM [Order Details] as ord

--S�ras�yla en pahal� ve en ucuz �r�n� listeleyiniz.
SELECT MAX(P.UnitPrice) AS 'En pahal� �r�n�n fiyat�' FROM PRODUCTS AS P
SELECT MIN(P.UnitPrice) AS 'En ucuz �r�n�n fiyat�' FROM PRODUCTS AS P










