--SQL Server da b�y�k k���k harf duyarl�l��� yoktur.
--string ve date tipindeki veriler tek t�rnak i�inde kullan�l�r.
--"*" i�areti t�m kolonlar g�r�nt�lenmek istendi�i zaman kullan�l�r.

SELECT * FROM Actors

select CategoryName AS "Kategori �smi" from Categories --Ba�l�k belirleme �zelli�i

select mov.MovieName, mov.Date from movies AS mov --Tablo i�inde arama yaparken uzant� olu�turup yard�m sa�lama �zelli�i

select DirectorName,ID from Directors --ekrana yazd�r�lma �eklide se�ilebilmektedir.