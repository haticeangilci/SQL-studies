---DAY-4---HOMEWORKS--

--HOMEWORK-1--
/*

1-sqlpractice_db isminde database oluşturunuz. Butun odevleri bu db icinde cozunuz

2-sqlpractice_db database içinde musteri isminde tablo oluşturunuz.

      musteri_no(integer)
      isim (string,50 karakter)
      yas (int)
      cinsiyet (string 1 karakter)
      gelir(real)
      meslek(string,20 karakter)
      sehir (string,20 karakter)

constraintler:

musteri_no:primary key, otomatik olarak artırılsın

isim:not null ve not empty,yas:18 den büyük

3-musteri tablosuna kayıt ekleyiniz.

INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('Ali',     35,'E',  2500, 'MÜHENDİS',    'İSTANBUL');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('BURAK',   25, 'E', 3500, 'MİMAR',       'İZMİR');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('CEYHUN',  45, 'E', 2000, 'MÜHENDİS',    'ANKARA');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('DEMET',   30, 'K', 3000, 'ÖĞRETMEN',    'ANKARA');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('FERHAT',  40, 'E', 2500, 'MİMAR',       'İZMİR');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('GALİP',   55, 'E', 4000, 'ÖĞRETMEN',    'İSTANBUL');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('KÖKSAL',  25, 'E', 2000, 'AVUKAT',      'İZMİR');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('LEYLA',   60, 'K', 2500, 'MİMAR',       'İSTANBUL');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('MELEK',   30, 'K', 2500, 'ÖĞRETMEN',    'İSTANBUL');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('JALE',    40, 'K', 6000, 'İŞLETMECİ',   'ANKARA');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('TEKİN',   45, 'E', 2000, 'AVUKAT',      'ANKARA');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('SAMET',   20, 'E', 3000, 'MİMAR',       'İSTANBUL');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('ŞULE',    20, 'K', 4500, 'ÖĞRETMEN',    'İSTANBUL');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('VELİ',    40, 'E', 2500, 'ÖĞRETMEN',    'İZMİR');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('ZEYNEP',  50, 'K', 3500, 'TESİSATÇI',   'İZMİR');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('ARDA',    55, 'E', 2000, 'KUAFÖR',      'İZMİR');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('MELİS',   30, 'K', 3000, 'KUAFÖR',      'ANKARA');


musteri tablosunda;

4-Tüm kayıtları listeleyiniz.

5-Tüm kayıtlardan isim ve meslek bilgilerini görüntüleyiniz

6-sqlpractice_db database'inde ;

“sehirler” isimli bir Table olusturun. 

Tabloda “alan_kodu”, “isim”, “nufus”  field’lari olsun.

Isim field’i null değer alamasın.

“alan_kodu” field’ini “Primary Key” yapin.

7-sqlpractice_db databaseinde;

a- “tedarikciler3” isimli bir tablo olusturun.

Tabloda “tedarikci_id”, “tedarikci_ismi”,  “iletisim_isim” field’lari olsun

“iletisim_isim”  fieldı tekrarsız olsun.

“tedarikci_id” yi Primary Key yapin.

b- “urunler” isminde baska bir tablo olusturun “tedarikci_id” ve “urun_id” field’lari olsun

“tedarikci_id” yi Foreign Key yapin.
*/


--2.
CREATE TABLE musteri (
musteri_no INTEGER PRIMARY KEY,
isim VARCHAR(50) NOT NULL CHECK(TRIM(isim)<>''),
yas INT CHECK(yas>18),
cinsiyet VARCHAR(1),
gelir REAL,
meslek VARCHAR(20),
sehir VARCHAR(50)  
);


--3. musteri tablosuna kayıt ekleyiniz.

INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('Ali',     35,'E',  2500, 'MÜHENDİS',    'İSTANBUL');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('BURAK',   25, 'E', 3500, 'MİMAR',       'İZMİR');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('CEYHUN',  45, 'E', 2000, 'MÜHENDİS',    'ANKARA');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('DEMET',   30, 'K', 3000, 'ÖĞRETMEN',    'ANKARA');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('FERHAT',  40, 'E', 2500, 'MİMAR',       'İZMİR');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('GALİP',   55, 'E', 4000, 'ÖĞRETMEN',    'İSTANBUL');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('KÖKSAL',  25, 'E', 2000, 'AVUKAT',      'İZMİR');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('LEYLA',   60, 'K', 2500, 'MİMAR',       'İSTANBUL');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('MELEK',   30, 'K', 2500, 'ÖĞRETMEN',    'İSTANBUL');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('JALE',    40, 'K', 6000, 'İŞLETMECİ',   'ANKARA');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('TEKİN',   45, 'E', 2000, 'AVUKAT',      'ANKARA');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('SAMET',   20, 'E', 3000, 'MİMAR',       'İSTANBUL');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('ŞULE',    20, 'K', 4500, 'ÖĞRETMEN',    'İSTANBUL');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('VELİ',    40, 'E', 2500, 'ÖĞRETMEN',    'İZMİR');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('ZEYNEP',  50, 'K', 3500, 'TESİSATÇI',   'İZMİR');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('ARDA',    55, 'E', 2000, 'KUAFÖR',      'İZMİR');
INSERT INTO musteri(isim,yas,cinsiyet,gelir,meslek,sehir) VALUES('MELİS',   30, 'K', 3000, 'KUAFÖR',      'ANKARA');

--4. Tüm kayıtları listeleyiniz. 
select * from musteri;

--5.Tüm kayıtlardan isim ve meslek bilgilerini görüntüleyiniz

select isim,meslek from musteri;

--6-sqlpractice_db database'inde ;

/*“sehirler” isimli bir Table olusturun. 
Tabloda “alan_kodu”, “isim”, “nufus”  field’lari olsun.

Isim field’i null değer alamasın.

“alan_kodu” field’ini “Primary Key” yapin.*/

CREATE TABLE sehirler (
alan_kodu int PRIMARY KEY,
isim VARCHAR(30) NOT NULL,
nufus int

);

SELECT * FROM sehirler;

--7-sqlpractice_db databaseinde;

/*a- “tedarikciler3” isimli bir tablo olusturun.

Tabloda “tedarikci_id”, “tedarikci_ismi”,  “iletisim_isim” field’lari olsun

“iletisim_isim”  fieldı tekrarsız olsun.

“tedarikci_id” yi Primary Key yapin.

b- “urunler” isminde baska bir tablo olusturun “tedarikci_id” ve “urun_id” field’lari olsun

“tedarikci_id” yi Foreign Key yapin.*/

CREATE TABLE tedarikciler3 (
tedarikci_id int PRIMARY KEY,
tedarikci_ismi VARCHAR (50),
iletisim_isim VARCHAR (50) UNIQUE
);

SELECT * FROM tedarikciler3;

insert into tedarikciler3(tedarikci_id,tedarikci_ismi,iletisim_isim) VALUES(100,'Borusan','Demir Derihan');
insert into tedarikciler3(tedarikci_id,tedarikci_ismi,iletisim_isim) VALUES(101,'İpek','İpek İpekhan');


create table urunler(
tedarikci_id int PRIMARY KEY,
urun_id int,
CONSTRAINT fk_tedarikci FOREIGN KEY (tedarikci_id) REFERENCES tedarikciler3 (tedarikci_id)
);

insert into urunler(tedarikci_id,urun_id) VALUES(100,10);
insert into urunler values (101,10);


SELECT * FROM urunler;



select tedarikci_id,tedarikci_ismi,iletisim_isim from tedarikciler3 t
where exists (select urun_id from urunler u where u.tedarikci_id = t.tedarikci_id );



 
