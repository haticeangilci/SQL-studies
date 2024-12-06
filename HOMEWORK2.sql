---------DAY4- HOMEWORKS

--HOMEWORK 2--
/*
1) Tablo Oluşturma
filmler isminde bir tablo oluşturunuz.
film_isim(varchar(50)), tür(varchar(20)), 
süre(real), imdb(numeric(2,1)) 
sütunları olsun. 

2)  Data ekleme
a-filmler tablosuna tüm fieldlarıyla 3 tane kayıt ekleyiniz.
b-“ ogretmenler” isminde tablo olusturun.
Icinde “kimlik_no”, “isim”, “brans” ve “cinsiyet” field’lari olsun
(uygun data tiplerini kullanınız.).


“ogretmenler” tablosuna bilgileri asagidaki gibi olan kisileri ekleyin.
kimlik_no: 234431223, isim: Ayse Guler, brans : Matematik, cinsiyet: kadin.
kimlik_no: 234431224, isim: Ali Guler, brans : Fizik, cinsiyet: erkek.

3)Var olan tablodan yeni tablo oluşturmak 
 “film_imdb” isminde bir tabloyu  “filmler” tablosundan oluşturunuz.
İçinde “film_isim” ve “imdb” field’lari olsun

4) bazı fieldları olan kayıt ekleme
a-"filmler" tablosuna 
film_isim:"Ayla", “film_imdb”:9.87,
film_isim:"Shrek", “film_imdb”:9.83
olan kayıtları ekleyiniz.

b-“ogretmenler” tablosuna bilgileri 
kimlik_no: 567597624, isim: Veli Guler
olan kişiyi ekleyiniz.
*/


--1 filmler adında tablo oluşturuldu.
CREATE TABLE filmler(
	film_isim varchar(50) UNIQUE,
	tur varchar(20),
	sure REAL,
	imdb numeric(2,1)
);


--2 a) Tabloya 3 adet kayıt ekleme

INSERT INTO filmler (film_isim, tur, sure, imdb) VALUES ('Inception', 'Bilim Kurgu', 148, 8.8);  
INSERT INTO filmler (film_isim, tur, sure, imdb) VALUES ('The Godfather', 'Suç', 175, 9.2);  
INSERT INTO filmler (film_isim, tur, sure, imdb) VALUES ('The Shawshank Redemption', 'Drama', 142, 9.3); 


select * from filmler;

--2 b) öğretmenler adında tablo oluşturma

CREATE TABLE ogretmenler(
	kimlik_no int,
	isim varchar(50),
	brans varchar(20),
	cinsiyet varchar(10)
);

select * from ogretmenler;
INSERT INTO ogretmenler (kimlik_no, isim, brans, cinsiyet) VALUES (234431223, 'Ayse Guler', 'Matematik', 'kadin'); 
INSERT INTO ogretmenler (kimlik_no, isim, brans, cinsiyet) VALUES (234431224, 'Ali Guler', 'Fizik', 'erkek'); 


----3)Var olan tablodan yeni tablo oluşturmak 
/* “film_imdb” isminde bir tabloyu  “filmler” tablosundan oluşturunuz.
İçinde “film_isim” ve “imdb” field’lari olsun*/

CREATE TABLE film_imdb(
	film_isim VARCHAR(50),
	imdb numeric(2,1),
	FOREIGN KEY (film_isim) REFERENCES filmler(film_isim) 
);

----4 a) bazı fieldları olan kayıt ekleme
/*a-"filmler" tablosuna 
film_isim:"Ayla", “film_imdb”:9.87,
film_isim:"Shrek", “film_imdb”:9.83
olan kayıtları ekleyiniz.*/

INSERT INTO filmler (film_isim, tur,imdb) VALUES ('Ayla','film_imdb', 9.87),
('Shrek', 'film_imdb',9.83);  


UPDATE filmler SET tur='' WHERE tur ='film_imdb';


--4 b)“ogretmenler” tablosuna bilgileri 
/*kimlik_no: 567597624, 
isim: Veli Guler
olan kişiyi ekleyiniz.
*/

INSERT INTO ogretmenler (kimlik_no,isim) VALUES (567597624,'Veli Guler');

SELECT * FROM ogretmenler;


