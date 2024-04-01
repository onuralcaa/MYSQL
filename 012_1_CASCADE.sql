ON UPDATE/DELETE
• Tablolar arasında oluşturulan FOREIGN KEY ilişkiler referans olarak
kullanılan tablolardan kayıt silme ve güncelleme işleminde ilişkilerden
dolayı hata vermesine neden olacaktır.
...
CONSTRAINT fk_mkod FOREIGN KEY (mkod)
REFERENCES musteri(mkod) ON UPDATE CASCADE
ON DELETE CASCADE,
CONSTRAINT fk_aracno FOREIGN KEY (aracno)
REFERENCES arac(aracno) ON UPDATE CASCADE
ON DELETE CASCADE);