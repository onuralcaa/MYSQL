--Tabloya veri ekleme, G�ncelleme ve Silme


--�lk y�ntem
INSERT INTO Categories VALUES('Test' , 'Bu bir a��klamad�r.' , null )

--�kinci y�ntem
INSERT INTO Categories (CategoryName, Description) VALUES ('Test 2' , 'A��klama 2')

INSERT INTO Products (ProductName, UnitPrice, UnitsInStock, Discontinued)
VALUES ('Kalem' , 3 , 43 , 0)

-----------------------------------------------------------------------------------------

UPDATE Categories SET Description = 'G�ncellenmi� de�er.', CategoryName = 'Deneme' 
WHERE CategoryID like '%a%'

-------------------------------------------------------------------------------------------

DELETE Categories WHERE CategoryID = '10'