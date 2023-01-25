/*
CREATE TABLE <table_name>( -- tablo oluşturur
	<column_name> <data_type> <constraint>, -- sütun oluşturur
	...
	<column_name> <data_type> <constraint>;

)
*/
/*CREATE TABLE author(
	id SERIAL PRIMARY KEY, -- SERIAL sıralı değer yazar
	first_name VARCHAR(50) NOT NULL, -- max 50 karakterden oluşmalı boş olamaz
	last_name VARCHAR(50) NOT NULL, 
	email VARCHAR(50),
	birthday DATE 
);
*/

--SELECT * FROM author;

/*INSERT INTO author (first_name, last_name, email, birthday) -- sonradan ekleme yapar
VALUES 
	('Osman', 'Gündüz', 'osman@gmail.com', '2002-07-04'),
	('Bekir', 'Gündüz', 'bekir@gmail.com', '1987-04-05');

SELECT * FROM author;
--CREATE TABLE author2 (LIKE author);

SELECT * FROM author2;
*/
/*INSERT INTO author2
SELECT * FROM author
WHERE first_name = 'Osman';

SELECT * FROM author2;
*/

--CREATE TABLE author3 AS -- author tablosunun aynısını kopyalar ve author3 tablosunu oluşturur 
--SELECT * FROM author;

--SELECT * FROM author3;

--DROP TABLE author2; -- author2'yi siler.
--DROP TABLE IF EXISTS author3; -- IF EXISTS = olup olmadığını kontrol eder
/*
SELECT * FROM author;
insert into author (first_name, last_name, email, birthday) values ('Julianne', 'Deek', 'jdeek0@techcrunch.com', '1989-12-16');
insert into author (first_name, last_name, email, birthday) values ('Alexia', 'McAuley', 'amcauley1@blinklist.com', null);
insert into author (first_name, last_name, email, birthday) values ('Johanna', 'Mills', 'jmills2@unicef.org', '1941-05-05');
insert into author (first_name, last_name, email, birthday) values ('Bernardina', 'Jurisic', 'bjurisic3@skype.com', null);
insert into author (first_name, last_name, email, birthday) values ('Daffy', 'Crook', 'dcrook4@diigo.com', '1906-05-21');
insert into author (first_name, last_name, email, birthday) values ('Atlanta', 'Knibbs', 'aknibbs5@dagondesign.com', '1978-02-13');
insert into author (first_name, last_name, email, birthday) values ('Coletta', 'Bernocchi', 'cbernocchi6@homestead.com', '1966-10-13');
insert into author (first_name, last_name, email, birthday) values ('Norman', 'Mackin', 'nmackin7@reference.com', null);
insert into author (first_name, last_name, email, birthday) values ('Quint', 'Skottle', 'qskottle8@discuz.net', '1935-09-10');
insert into author (first_name, last_name, email, birthday) values ('Raf', 'Le Hucquet', 'rlehucquet9@ftc.gov', '1984-09-12');
insert into author (first_name, last_name, email, birthday) values ('Byrle', 'Tuson', 'btusona@1688.com', null);
insert into author (first_name, last_name, email, birthday) values ('Reidar', 'Sorrell', 'rsorrellb@dyndns.org', '1913-11-01');
insert into author (first_name, last_name, email, birthday) values ('Elita', 'Fishley', 'efishleyc@squarespace.com', null);
insert into author (first_name, last_name, email, birthday) values ('Karalee', 'Camillo', 'kcamillod@cargocollective.com', null);
insert into author (first_name, last_name, email, birthday) values ('Vern', 'Rack', 'vracke@npr.org', '1903-11-11');
insert into author (first_name, last_name, email, birthday) values ('Niel', 'Hubbock', 'nhubbockf@goodreads.com', null);
insert into author (first_name, last_name, email, birthday) values ('Etty', 'Simmance', 'esimmanceg@diigo.com', '1982-08-11');
insert into author (first_name, last_name, email, birthday) values ('Reynold', 'Sings', 'rsingsh@prnewswire.com', null);
insert into author (first_name, last_name, email, birthday) values ('Jeanne', 'Peabody', 'jpeabodyi@google.cn', null);
insert into author (first_name, last_name, email, birthday) values ('Emmerich', 'Tees', 'eteesj@redcross.org', null);
insert into author (first_name, last_name, email, birthday) values ('Dorothee', 'Prudence', 'dprudencek@eepurl.com', null);
insert into author (first_name, last_name, email, birthday) values ('Tobie', 'Padbery', 'tpadberyl@blog.com', '1948-08-31');
insert into author (first_name, last_name, email, birthday) values ('Talbert', 'Beviss', 'tbevissm@netvibes.com', '1942-12-15');
insert into author (first_name, last_name, email, birthday) values ('Jessy', 'Clemot', 'jclemotn@bigcartel.com', '1995-03-24');
insert into author (first_name, last_name, email, birthday) values ('Eustacia', 'Vanin', 'evanino@theglobeandmail.com', '1974-03-31');
insert into author (first_name, last_name, email, birthday) values ('Dave', 'Coley', 'dcoleyp@123-reg.co.uk', null);
insert into author (first_name, last_name, email, birthday) values ('Rudie', 'Petkens', 'rpetkensq@va.gov', '1965-12-09');
insert into author (first_name, last_name, email, birthday) values ('Pamela', 'Peron', 'pperonr@google.com', null);
insert into author (first_name, last_name, email, birthday) values ('Marice', 'Bertomeu', 'mbertomeus@ucsd.edu', '1904-08-11');
insert into author (first_name, last_name, email, birthday) values ('Nick', 'Fawcett', 'nfawcettt@patch.com', '1929-06-18');
insert into author (first_name, last_name, email, birthday) values ('Agnese', 'Loynes', 'aloynesu@istockphoto.com', '1937-03-12');
insert into author (first_name, last_name, email, birthday) values ('Hyacinthia', 'Mackilpatrick', 'hmackilpatrickv@nsw.gov.au', '1985-12-29');
insert into author (first_name, last_name, email, birthday) values ('Avivah', 'Ivison', 'aivisonw@smugmug.com', '1988-03-08');
insert into author (first_name, last_name, email, birthday) values ('Salomon', 'Chamberlaine', null, '1933-09-29');
insert into author (first_name, last_name, email, birthday) values ('Armin', 'Ericsson', 'aericssony@1688.com', null);
insert into author (first_name, last_name, email, birthday) values ('Quint', 'Phillipps', 'qphillippsz@netscape.com', '1904-03-23');
insert into author (first_name, last_name, email, birthday) values ('Suellen', 'Hunston', 'shunston10@cam.ac.uk', '1952-02-23');
insert into author (first_name, last_name, email, birthday) values ('Issie', 'Peegrem', null, '1936-06-02');
insert into author (first_name, last_name, email, birthday) values ('Alexine', 'Janton', 'ajanton12@senate.gov', null);
insert into author (first_name, last_name, email, birthday) values ('Cordey', 'Wastie', 'cwastie13@google.co.jp', '1992-02-04');
insert into author (first_name, last_name, email, birthday) values ('Mora', 'Macilhench', 'mmacilhench14@wisc.edu', '1909-07-10');
insert into author (first_name, last_name, email, birthday) values ('Cindie', 'Colicot', 'ccolicot15@house.gov', '1950-04-06');
insert into author (first_name, last_name, email, birthday) values ('Delcina', 'Kleinbaum', 'dkleinbaum16@prnewswire.com', null);
insert into author (first_name, last_name, email, birthday) values ('Mitch', 'Spurgin', 'mspurgin17@addtoany.com', '1945-04-10');
insert into author (first_name, last_name, email, birthday) values ('Alford', 'Aishford', 'aaishford18@cornell.edu', '1904-04-06');
insert into author (first_name, last_name, email, birthday) values ('Lane', 'Langran', 'llangran19@ucsd.edu', '1947-02-21');
insert into author (first_name, last_name, email, birthday) values ('Noami', 'Bebbell', 'nbebbell1a@biblegateway.com', '1920-11-07');
insert into author (first_name, last_name, email, birthday) values ('Joelle', 'Freshwater', 'jfreshwater1b@mayoclinic.com', '1973-01-23');
insert into author (first_name, last_name, email, birthday) values ('Bernete', 'Ceschi', 'bceschi1c@shareasale.com', '1943-12-24');
insert into author (first_name, last_name, email, birthday) values ('Hilda', 'Millwater', null, '1986-08-15');
insert into author (first_name, last_name, email, birthday) values ('Orly', 'Clavey', 'oclavey1e@parallels.com', '1978-08-11');
insert into author (first_name, last_name, email, birthday) values ('Claresta', 'Cannings', 'ccannings1f@hexun.com', '1911-05-11');
insert into author (first_name, last_name, email, birthday) values ('Viviana', 'Brimfield', 'vbrimfield1g@mediafire.com', null);
insert into author (first_name, last_name, email, birthday) values ('Chaunce', 'Corringham', 'ccorringham1h@cnn.com', '1914-06-27');
insert into author (first_name, last_name, email, birthday) values ('Hesther', 'Diggle', 'hdiggle1i@hibu.com', '1942-10-24');
insert into author (first_name, last_name, email, birthday) values ('Cara', 'Fetter', 'cfetter1j@edublogs.org', '1931-05-29');
insert into author (first_name, last_name, email, birthday) values ('Harper', 'Yosevitz', 'hyosevitz1k@tinyurl.com', '1921-01-18');
insert into author (first_name, last_name, email, birthday) values ('Guenna', 'Irwin', null, '1935-06-25');
insert into author (first_name, last_name, email, birthday) values ('Stanly', 'Pead', 'spead1m@google.nl', '1919-05-31');
insert into author (first_name, last_name, email, birthday) values ('Cynthy', 'Dunrige', 'cdunrige1n@upenn.edu', '1965-11-16');
insert into author (first_name, last_name, email, birthday) values ('Batsheva', 'de Amaya', 'bdeamaya1o@usatoday.com', null);
insert into author (first_name, last_name, email, birthday) values ('Lida', 'Ryley', null, '1946-12-02');
insert into author (first_name, last_name, email, birthday) values ('Dottie', 'Akid', 'dakid1q@topsy.com', '1999-05-15');
insert into author (first_name, last_name, email, birthday) values ('Milena', 'Cisco', 'mcisco1r@state.tx.us', null);
insert into author (first_name, last_name, email, birthday) values ('Mel', 'Sawyers', 'msawyers1s@fastcompany.com', '1903-06-04');
insert into author (first_name, last_name, email, birthday) values ('Gerald', 'Hosby', 'ghosby1t@yolasite.com', '1914-05-20');
insert into author (first_name, last_name, email, birthday) values ('Herve', 'Tuberfield', 'htuberfield1u@indiatimes.com', null);
insert into author (first_name, last_name, email, birthday) values ('Ianthe', 'Rofe', 'irofe1v@wired.com', '1952-08-27');
insert into author (first_name, last_name, email, birthday) values ('Donna', 'Sleford', 'dsleford1w@shop-pro.jp', '1934-04-25');
insert into author (first_name, last_name, email, birthday) values ('Daron', 'Tittletross', 'dtittletross1x@psu.edu', '1999-05-26');
insert into author (first_name, last_name, email, birthday) values ('Cherlyn', 'Sivior', 'csivior1y@etsy.com', '1901-09-02');
insert into author (first_name, last_name, email, birthday) values ('Kipp', 'Hayley', 'khayley1z@techcrunch.com', '1971-02-19');
insert into author (first_name, last_name, email, birthday) values ('Kay', 'McGawn', 'kmcgawn20@bloomberg.com', '1915-02-08');
insert into author (first_name, last_name, email, birthday) values ('Rufe', 'Langthorn', 'rlangthorn21@bloglines.com', null);
insert into author (first_name, last_name, email, birthday) values ('Tildi', 'Ludman', 'tludman22@amazon.co.jp', '1908-09-15');
insert into author (first_name, last_name, email, birthday) values ('Brad', 'Souness', 'bsouness23@psu.edu', null);
insert into author (first_name, last_name, email, birthday) values ('Terry', 'MacAlister', 'tmacalister24@comsenz.com', '1972-04-04');
insert into author (first_name, last_name, email, birthday) values ('Marshall', 'Scrammage', 'mscrammage25@un.org', null);
insert into author (first_name, last_name, email, birthday) values ('Romona', 'Curdell', 'rcurdell26@cmu.edu', null);
insert into author (first_name, last_name, email, birthday) values ('Ranee', 'Larmouth', 'rlarmouth27@stanford.edu', '1951-08-01');
insert into author (first_name, last_name, email, birthday) values ('Glenine', 'Tattoo', null, '1963-10-14');
insert into author (first_name, last_name, email, birthday) values ('Gaspar', 'Brundell', 'gbrundell29@sun.com', '1998-06-09');
insert into author (first_name, last_name, email, birthday) values ('Graehme', 'Artis', 'gartis2a@reference.com', null);
insert into author (first_name, last_name, email, birthday) values ('Risa', 'Middas', 'rmiddas2b@bloomberg.com', '1953-06-22');
insert into author (first_name, last_name, email, birthday) values ('Barnie', 'McLeod', 'bmcleod2c@meetup.com', '1935-08-09');
insert into author (first_name, last_name, email, birthday) values ('Tamarra', 'Keighly', 'tkeighly2d@blogtalkradio.com', '1957-08-30');
insert into author (first_name, last_name, email, birthday) values ('Garwin', 'Sworne', 'gsworne2e@yandex.ru', '1977-02-02');
insert into author (first_name, last_name, email, birthday) values ('Ethelind', 'Takle', 'etakle2f@weibo.com', null);
insert into author (first_name, last_name, email, birthday) values ('Reinold', 'Hovel', 'rhovel2g@abc.net.au', '1993-04-27');
insert into author (first_name, last_name, email, birthday) values ('Elliot', 'Adrien', 'eadrien2h@fastcompany.com', '1917-05-18');
insert into author (first_name, last_name, email, birthday) values ('Birch', 'Gerrey', 'bgerrey2i@wisc.edu', '1954-10-19');
insert into author (first_name, last_name, email, birthday) values ('Alli', 'Vasyanin', 'avasyanin2j@fc2.com', '1929-01-19');
insert into author (first_name, last_name, email, birthday) values ('Maynord', 'MacSwayde', 'mmacswayde2k@discuz.net', null);
insert into author (first_name, last_name, email, birthday) values ('Aldridge', 'Lutton', 'alutton2l@wiley.com', '1900-02-27');
insert into author (first_name, last_name, email, birthday) values ('Drusi', 'Towers', 'dtowers2m@reverbnation.com', '1937-03-12');
insert into author (first_name, last_name, email, birthday) values ('Henrietta', 'Hanes', 'hhanes2n@facebook.com', '1994-10-30');
insert into author (first_name, last_name, email, birthday) values ('Marietta', 'Laboune', 'mlaboune2o@umn.edu', '1986-07-17');
insert into author (first_name, last_name, email, birthday) values ('Allyce', 'Antuk', 'aantuk2p@tmall.com', '1982-06-30');
insert into author (first_name, last_name, email, birthday) values ('Clemens', 'O'' Borne', 'coborne2q@jiathis.com', '1998-06-30');
insert into author (first_name, last_name, email, birthday) values ('Adi', 'Cranstoun', 'acranstoun2r@goo.ne.jp', '1992-12-01');
*/

/*UPDATE <table_name> -- veriyi güncellemek için kullanılır
SET column1 = value1,
	column2 = value2,
	...
WHERE condition;*/
/*
UPDATE author
SET first_name = 'Osman',
	last_name = 'Gündüz',
	email = 'Osman@gmail.com',
	birthday = '1978-05-06'
WHERE id = 5;	

SELECT * FROM author;

UPDATE author
SET last_name = 'xxxxxx'
WHERE first_name = 'Atlanta'
RETURNING *; -- değiştirilen veriyi gösterir

DELETE FROM author
WHERE id = 6;
*/

/*
PRIMARY KEY bir tabloda bulunan veri sıralarını birbirinden ayırmamızı sağlayan bir kısıtlama (constraint) yapısıdır. O tabloda bulunan veri sıralarına ait bir "benzersiz tanımlayıcıdır".



Benzersiz (Unique) olmalıdır.
NULL değerine sahip olamaz.
Bir tabloda en fazla 1 tane bulunur.

FOREIGN KEY bir tabloda bulunan herhangi bir sütundaki verilerin genelde başka bir tablo sütununa referans vermesi durumudur, tablolar arası ilişki kurulmasını sağlar.

Bir tabloda birden fazla sütun FK olarak tanımlanabilir.
Aynı sütunun içerisinde aynı değerler bulunabilir.

*/
/*CREATE TABLE book(
	id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	page_number INTEGER NOT NULL,
	author_id INTEGER REFERENCES author(id)
);*/

--SELECT * FROM book;

/*
Veri Tipleri I


Temel Veri Tipleri


Sayısal Veri Tipleri
Karakter Veri Tipleri
Boolean Veri Tipleri
Date / Time Veri Tipleri

Sayısal Veri Tipleri
https://www.postgresql.org/docs/current/datatype-numeric.html

CREATE TABLE test(
	float4_type FLOAT4, -- virgülden sonraki rakam sayılarında farklılık var
	float8_type FLOAT8,
	decimal_type DECIMAL
);
INSERT INTO test 
VALUES(
	1.12345567895646546,
	1.12354658789784564,
	1.13212345487985654
);
SELECT * FROM test;
Karakter Veri Tipleri

Sınırlı sayıda karekter kullanımı için VARCHAR veya CHAR veri tipleri kullanılır. VARCHAR veri tipi doldurulmayan karakterleri yok sayar, CHAR veri tipi ise doldurulmayan karakterler için boşluk bırakır. Sınırsız karekter kullanımı için ise TEXT veri tipi kullanılır.

SELECT ('lorem'::CHAR(10)); -- 5 karakter kullanır kalanı ise boşluk ekler.
SELECT ('lorem ipsum dolor sit amet'::CHAR(10)); --10 karakter kullanır geriye kalanı yazılmaz
SELECT ('lorem'::VARCHAR(10)); -- 10 değil 5 yazılmış gibi işlem görür.
SELECT ('lorem ipsum dolor sit amet'::VARCHAR(10)); --CHAR ile aynı
SELECT ('lorem ipsum dolor sit amet'::VARCHAR); -- yazılan her karakteri gösterir.
SELECT ('lorem'::TEXT); --  Tamamen alır
SELECT ('lorem ipsum dolor sit amet'::TEXT); -- tamamen alır		

Boolean Veri Tipleri


TRUE, FALSE veya NULL (Bilinmeyen) değerlerini alabilirler.

TRUE: true, yes, on, 1
FALSE: false, no, off, 0

SELECT (true, 'yes', 't', 1) TRUE;
SELECT (false, 'no', 'f', 0) FALSE;

SELECT ('no'::BOOLEAN);
SELECT (1::BOOLEAN);
SELECT ('f'::BOOLEAN);
SELECT (true::BOOLEAN);
SELECT (NULL::BOOLEAN);

Zaman / Tarih Veri Tipleri

SELECT('1980-12-03'::DATE);
SELECT('DEC-03-1980'::DATE);
SELECT('DEC 03 1980'::DATE);
SELECT('1980 December 03'::DATE);

SELECT('03:44 AM'::TIME);
SELECT('03:44'::TIME);
SELECT('03:44 PM'::TIME);
SELECT('03:44:11'::TIME);
SELECT('03:44'::TIME WITH TIME ZONE);
SELECT('1980 December 03 02:16:27'::TIMESTAMP);


CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(20),
	email VARCHAR(50),
	age INTEGER
);

INSERT INTO users (username, email, age)
VALUES
	('tester', 'tester@gmail.com', 20);

INSERT INTO users (email, age)
VALUES
	('gamer@gmail.com', 25);

ALTER ve NOT NULL


NOT NULL


Birçok durumda bizler herhangi bir sütuna yazılacak olan verilere belirli kısıtlamalar getirmek isteriz. Örneğin yaş sütünunda sadece sayısal verilerin olmasını isteriz ya da kullanıcı adı sütununda bilinmeyen (NULL) değerlerin olasını istemeyiz. Bu gibi durumlarda ilgili sütunda CONSTRAINT kısıtlama yapıları kullanılır.



NULL bilinmeyen veri anlamındadır. Boş string veya 0 verilerinden farklıdır. Şu şekilde bir senaryo düşünelim bir kullanıcının email hesabı yoksa buradaki veriyi boş string şeklinde düşünebiliriz. Acak eğer kullanıcının maili var ancak ne olduğunu bilmiyorsak bu durumda o veri NULL (bilinmeyen) olarak tanımlanabilir.



NOT NULL Kullanımı


Employees şeklinde bir tablomuzu oluşturalım. Tablodaki first_name ve last_name sütunlarında bilinmeyen veri istemiyoruz, bu sütunlarda NOT NULL kısıtlama yapısı kullanabiliriz.
ALTER ve NOT NULL


NOT NULL


Birçok durumda bizler herhangi bir sütuna yazılacak olan verilere belirli kısıtlamalar getirmek isteriz. Örneğin yaş sütünunda sadece sayısal verilerin olmasını isteriz ya da kullanıcı adı sütununda bilinmeyen (NULL) değerlerin olasını istemeyiz. Bu gibi durumlarda ilgili sütunda CONSTRAINT kısıtlama yapıları kullanılır.



NULL bilinmeyen veri anlamındadır. Boş string veya 0 verilerinden farklıdır. Şu şekilde bir senaryo düşünelim bir kullanıcının email hesabı yoksa buradaki veriyi boş string şeklinde düşünebiliriz. Acak eğer kullanıcının maili var ancak ne olduğunu bilmiyorsak bu durumda o veri NULL (bilinmeyen) olarak tanımlanabilir.



NOT NULL Kullanımı


Employees şeklinde bir tablomuzu oluşturalım. Tablodaki first_name ve last_name sütunlarında bilinmeyen veri istemiyoruz, bu sütunlarda NOT NULL kısıtlama yapısı kullanabiliriz.
ALTER ve NOT NULL


NOT NULL


Birçok durumda bizler herhangi bir sütuna yazılacak olan verilere belirli kısıtlamalar getirmek isteriz. Örneğin yaş sütünunda sadece sayısal verilerin olmasını isteriz ya da kullanıcı adı sütununda bilinmeyen (NULL) değerlerin olasını istemeyiz. Bu gibi durumlarda ilgili sütunda CONSTRAINT kısıtlama yapıları kullanılır.



NULL bilinmeyen veri anlamındadır. Boş string veya 0 verilerinden farklıdır. Şu şekilde bir senaryo düşünelim bir kullanıcının email hesabı yoksa buradaki veriyi boş string şeklinde düşünebiliriz. Acak eğer kullanıcının maili var ancak ne olduğunu bilmiyorsak bu durumda o veri NULL (bilinmeyen) olarak tanımlanabilir.



NOT NULL Kullanımı


Employees şeklinde bir tablomuzu oluşturalım. Tablodaki first_name ve last_name sütunlarında bilinmeyen veri istemiyoruz, bu sütunlarda NOT NULL kısıtlama yapısı kullanabiliriz.

CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(20) NOT NULL, -- Sonradan tablonun ayarlarını bu şekil değiştiremeyiz
	email VARCHAR(50),
	age INTEGER
);
-- öncelikle değişim yapmak için tablodaki null değerler değiştirilmeli ya da silinmeli.
DELETE FROM users
WHERE username IS NULL;

ALTER TABLE users
ALTER COLUMN username
SET NOT NULL;
UNIQUE


UNIQUE kısıtlaması ile uyguladığımız sütundaki verilerin birbirlerinden farklı benzersiz olmalarını isteriz. PRIMARY KEY kısıtlaması kendiliğinden UNIQUE kısıtlamasına sahiptir.



NOT NULL kısıtlamasında olduğu gibi tablo oluştururken veya ALTER komutu ile beraber tablo oluştuktan sonra da kullanabiliriz.

INSERT INTO users(username, email, age)
VALUES 
	('tester1', 'tester@gmail.com', 38);

ALTER TABLE users
ADD UNIQUE(email);-- emailler hiçbir koşulda aynı olamaz.
CHECK
CHECK kısıtlaması ile uyguladığımız sütundaki verilere belirli koşullar verebiliriz. Örneğin age (yaş) olarak belirlediğimiz bir sütuna negatif değerler verebiliriz veya web portaline üye olan kullanıcıların yaşlarının 18 yaşından büyük olması gibi kendi senaryolarımıza uygun başka kıstlamalar da vermek isteyebiliriz.

CHECK kısıtlamasını da tablo oluştururken veya ALTER komutu ile beraber tablo oluştuktan sonra kullanabiliriz.


ALTER TABLE users
ADD CHECK(age>18); -- age 18den büyük olma koşulu ekler


CREATE TABLE products
(
	product_no integer,
	name text,
	price numeric CHECK(price > 0),
	discount_price numeric CHECK(discount_price > 0),
	CHECK (price > discount_price )	
);*/





