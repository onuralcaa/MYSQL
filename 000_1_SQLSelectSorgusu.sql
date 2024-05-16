--SQL Server da büyük küçük harf duyarlýlýðý yoktur.
--string ve date tipindeki veriler tek týrnak içinde kullanýlýr.
--"*" iþareti tüm kolonlar görüntülenmek istendiði zaman kullanýlýr.

SELECT * FROM Actors

select CategoryName AS "Kategori Ýsmi" from Categories --Baþlýk belirleme özelliði

select mov.MovieName, mov.Date from movies AS mov --Tablo içinde arama yaparken uzantý oluþturup yardým saðlama özelliði

select DirectorName,ID from Directors --ekrana yazdýrýlma þeklide seçilebilmektedir.