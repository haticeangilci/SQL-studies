---------------------------1.STUDY--------------------
---------------------------MY FIRST STUDY-------------------

--Veri tabanı oluşturuldu.//Database has been created.

create table authors (
	id serial primary key,
	name varchar(100),
	surname varchar(100)
);

CREATE TABLE books (
	id serial PRIMARY key,
	title varchar(200),
	author_id integer REFERENCES authors(id),
	broadcasting_year integer,
	page_number integer
);


--Veriler veri tabanına eklendi...//Data added to database...

--add authors

INSERT INTO authors (name, surname) VALUES ('Orhan', 'Pamuk');  
INSERT INTO authors (name, surname) VALUES ('Elif', 'Shafak');


select * from authors;


--add books

INSERT INTO books (title, author_id, broadcasting_year, page_number)   
VALUES ('Beyaz Kale', 1, 1985, 180);  

INSERT INTO books (title, author_id, broadcasting_year, page_number)   
VALUES ('İstanbul: Hatıralar ve Şehir', 1, 2005, 330);  

INSERT INTO books (title, author_id, broadcasting_year, page_number)   
VALUES ('Aşk', 2, 2003, 250);  

select * from books;

--Querying Data

SELECT b.title,a.name,a.surname
FROM books b  
JOIN authors a ON b.id = a.id;

--Update and Delete

UPDATE books SET broadcasting_year = 2000 WHERE id = 1;  

DELETE FROM books WHERE id = 1;  







