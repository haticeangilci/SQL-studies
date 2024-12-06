------	DAY 8 -----HOMEWORKS

--HOMEWORK-4--

/*
sqlpractice_db de teachers,courses tablolarını oluşturup, kayıtları ekleyiniz.

CREATE TABLE teachers(
id int,
firstname varchar(50),
lastname varchar(50),
age int,    
city varchar(20),
course_name varchar(20),
salary real    
);
CREATE TABLE courses(
course_id int,
course_name varchar(20) UNIQUE,
credit int,
course_fee numeric(5,2),
start_date date,
finish_date date    
);

INSERT INTO teachers VALUES(111,'Ahmet','Han',35,'Istanbul','SpringMVC',5000);
INSERT INTO teachers VALUES(112,'Mehmet','Ran',33,'Van','HTML',4000);
INSERT INTO teachers VALUES(113,'Bilal','Fan',34,'Bursa','SQL',3000);
INSERT INTO teachers VALUES(114,'Celal','San',30,'Bursa','Java',3000);
INSERT INTO teachers VALUES(115,'Deniz','Can',30,'Istanbul','SQL',3500);
INSERT INTO teachers VALUES(116,'Ekrem','Demir',36,'Istanbul','Java',4000.5);
INSERT INTO teachers VALUES(117,'Fatma','Celik',38,'Van','SpringBOOT',5550);
INSERT INTO teachers VALUES(118,'Hakan','Cetin',44,'Izmir','Java',3999.5);
INSERT INTO teachers VALUES(119,'Mert','Cetin',32,'Izmir','HTML',2999.5);
INSERT INTO teachers VALUES(120,'Nilay','Cetin',32,'Izmir','CSS',2999.5);
INSERT INTO teachers VALUES(121,'Selma','Celik',40,'Ankara','SpringBOOT',5550);
INSERT INTO teachers VALUES(122,'Fatih','Can',32,'Ankara','HTML',2550.22);
INSERT INTO teachers VALUES(123,'Nihat','Keskin',32,'Izmir','CSS',3000.5);
INSERT INTO teachers VALUES(124,'Hasan','Temel',37,'Istanbul','S.Security',3000.5);

INSERT INTO courses VALUES(3001,'SpringMVC',10,100.05,'2023-01-10','2023-02-10');
INSERT INTO courses VALUES(3002,'SpringBOOT',8,120.25,'2023-02-11','2023-02-28');
INSERT INTO courses VALUES(3003,'S.Security',6,200.15,'2023-03-03','2023-03-12');
INSERT INTO courses VALUES(3004,'Java',26,159.99,'2022-11-03','2023-01-12');
INSERT INTO courses VALUES(3005,'SQL',6,175.55,'2023-01-03','2023-03-12');
INSERT INTO courses VALUES(3006,'React',12,255.85,'2023-06-03','2023-07-12');
INSERT INTO courses VALUES(3007,'HTML',6,125.99,'2023-03-03','2023-03-22');
INSERT INTO courses VALUES(3008,'CSS',5,125.99,'2023-04-03','2023-04-22');
INSERT INTO courses VALUES(3009,'JavaScript',10,199.99,'2023-05-03','2023-05-31');*/

select * from courses;
select * from teachers;

1--35 yaşından küçük öğretmenlerin verdikleri derslerin isimlerini ve kredi sayılarını listeleyiniz.*/
select c.course_name,c.credit
from teachers as t
JOIN courses c ON c.course_name = t.course_name
WHERE t.age<35;

2--Her bir şehirde verilen derslerin isimlerini ve kredisini listeleyiniz. 

select c.course_name,c.credit,t.city
from teachers as t
JOIN courses c ON c.course_name = t.course_name
GROUP BY c.course_name,c.credit,t.city;

3--İstanbulda yaşayan öğretmenlerin verdiği derslerin isimlerini ve başlangıç tarihini listeleyiniz.
SELECT c.course_name,c.start_date
FROM teachers as t
JOIN courses c ON c.course_name = t.course_name
WHERE t.city ='Istanbul'


4--İstanbulda yaşayan öğretmenlerin isimlerini(firstname), verdiği derslerin isimlerini ve bitiş tarihini listeleyiniz. 
SELECT c.course_name,c.finish_date,t.firstname
FROM teachers as t
JOIN courses c ON c.course_name = t.course_name
WHERE t.city ='Istanbul'
GROUP BY c.course_name,c.finish_date,t.firstname

5--'03-03-2023' tarihinden önce başlayan dersleri veren öğretmenlerin maaşlarının ortalamasını bulunuz.
SELECT AVG(salary),c.course_name,t.firstname,t.lastname
FROM teachers as t
JOIN courses c ON c.course_name = t.course_name
WHERE c.start_date < '2023-03-03'
GROUP BY c.course_name,t.firstname,t.lastname

6--2023 Şubat ve Mayıs ayları arasında başlayan dersleri veren öğretmenlerin toplam maaşını hesaplayınız.

SELECT sum(salary),c.course_name,t.firstname,t.lastname,c.start_date
FROM teachers as t
JOIN courses c ON c.course_name = t.course_name
WHERE c.start_date between '2023-02-01'and '2023-05-31'
GROUP BY c.course_name,t.firstname,t.lastname,c.start_date

7--Kurs ücreti 125 ten fazla olan derslerin isimlerini, kredilerini ve bu dersleri veren öğretmenlerin max ve min maaşlarını listeleyiniz
SELECT c.course_name,c.credit,min(t.salary),max(t.salary) from teachers t
JOIN courses c ON c.course_name = t.course_name
where c.course_fee>125
GROUP BY  c.course_name,c.credit

8-- Ahmet Han'ın maaşı ortalama maaştan büyük ise tüm bilgilerini listeleyiniz.


9--Yaşı 37 den büyük olan öğretmenlerin yaşını Java dersi alanların yaşlarının minimumu ile güncelleyiniz.

10--Yaşı 35 den büyük olan öğretmen varsa, bu öğretmenlerin verdiği derslerin isimlerini ve başlangıç tarihlerini listeleyiniz.

11--Hiçbir öğretmen tarafından verilmeyen dersleri isim, başlangıç ve bitiş tarihlerini listeleyiniz.

12--En az bir öğretmen tarafından verilen derslerin ücretlerini 10 artırınız.

13--Ücreti 170 den fazla olan ders varsa bu dersi veren öğretmenlerin tüm bilgilerini
--listeleyiniz.(IN kullanmayınız.)

14--Başlangıç tarihi '03-11-2022' olan kursun ismini ' Core' ekleyiniz.

15--Maaşı ortalama maaştan yüksek olan öğretmenin şehrini Antalya olarak değiştiriniz.

16--Yaşı en küçük olan dersin öğretmeninin maaşını 2 katına çıkarınız.

17--En erken başlayan kursun kredisini 2 artırınız.

*/


