ALTER TABLE ogrenciler2 ADD dogum_tarihi date NOT NULL;
ALTER TABLE ogrenciler2 ADD UNIQUE (ogr_no);
ALTER TABLE ogrenciler2 ADD CONSTRAINT uc_de UNIQUE (ogr_no, ad);
ALTER TABLE ogrenciler2 ADD PRIMARY KEY (ogr_no);
ALTER TABLE ogrenciler2 DROP PRIMARY KEY;
ALTER TABLE ogrenciler2 ADD CONSTRAINT pk_ono PRIMARY KEY (ogr_no,ad);
ALTER TABLE ogrenciler ADD FOREIGN KEY (bolum) REFERENCES bolumler (bolum);
ALTER TABLE ogrenciler ADD CONSTRAINT fk_bol FOREIGN KEY (bolum)
REFERENCES bolumler (bolum);
ALTER TABLE ogrenciler2 ADD CHECK (ogr_no>2009000);
ALTER TABLE ogrenciler2 ADD CONSTRAINT chk_ogr CHECK (ogr_no>2009000 AND okul
= 'KSU');
ALTER TABLE ogrenciler2 MODIFY COLUMN dogum_tarihi varchar(15) NULL;