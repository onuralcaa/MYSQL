ALTER TABLE ogrenciler2 ADD dogum_tarihi date NOT NULL;
ALTER TABLE ogrenciler2 ADD UNIQUE (ogr_no);
ALTER TABLE ogrenciler2 ADD CONSTRAINT uc_de UNIQUE (ogr_no, ad);
ALTER TABLE ogrenciler2 ADD PRIMARY KEY (ogr_no);










