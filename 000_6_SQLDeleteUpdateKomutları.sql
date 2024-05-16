--Tabloya veri ekleme, Güncelleme ve Silme


--Ýlk yöntem
INSERT INTO Categories VALUES('Test' , 'Bu bir açýklamadýr.' , null )

--Ýkinci yöntem
INSERT INTO Categories (CategoryName, Description) VALUES ('Test 2' , 'Açýklama 2')

INSERT INTO Products (ProductName, UnitPrice, UnitsInStock, Discontinued)
VALUES ('Kalem' , 3 , 43 , 0)

-----------------------------------------------------------------------------------------

UPDATE Categories SET Description = 'Güncellenmiþ deðer.', CategoryName = 'Deneme' 
WHERE CategoryID like '%a%'

-------------------------------------------------------------------------------------------

DELETE Categories WHERE CategoryID = '10'