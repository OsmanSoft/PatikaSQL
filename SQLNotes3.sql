/*
JOIN Kavramı (Birleştirme)


Veraitabanları çoğunlukla birbiri ile ilşkili olan tablolardan oluşur. Bu birbiri ile ilişkili olan tablardaki verileri farklı JOIN yapıları kullanarak sanal olarak birleştirip daha anlamlı veriler haline getirebiliriz.



INNER JOIN


INNER JOIN yapısı sayesinde birbiriyle ilişkili olan tabloların birbiriyle eşleşen (kesişen) verilerini sıralayabiliriz. Senaryomuzda kitapları gösterdiğimiz book tablosu ve yazarları gösterdiğimiz author tablosu var, author tablosunun id sütunuyla book tablosunun author_id sütunlarında bulunan veriler sayesinde her iki tabloya ait bilgilerden daha anlamlı sonuçları elde edebiliriz.


SELECT title, first_name, last_name FROM book
INNER JOIN author on book.author_id = author_id;

SELECT * FROM book
INNER JOIN author on book.author_id = author_id;

LEFT JOIN


LEFT JOIN yapısındaki tablo birleştirmesinde, birleştirme işlemi tablo 1 (soldaki tablo) üzerinden gerçekleştirilir. Senaryomuzu şu şekilde düşünelim eğer tablo 1 olarak book tablosunu aldığımızda öncelikle book tablosundaki ilgili sütundaki tüm verileri alacağız, sonrasında bu verilerin eşleştiği ilgili tablo 2 sütunundaki verileri alacağız. Tablo 1 de olup Tablo 2 de olmayan veriler için NULL değeri kullanılır.

SELECT title, first_name, last_name FROM book
LEFT JOIN author on book.author_id = author_id; 

RIGHT JOIN


RIGHT JOIN yapısındaki tablo birleştirmesinde, birleştirme işlemi tablo 2 (sağdaki tablo) üzerinden gerçekleştirilir. Senaryomuzu şu şekilde düşünelim eğer tablo 2 olarak author tablosunu aldığımızda öncelikle author tablosundaki ilgili sütundaki tüm verileri alacağız, sonrasında bu verilerin eşleştiği ilgili tablo 1 sütunundaki verileri alacağız. Tablo 2 de olup Tablo 1 de olmayan veriler için NULL değeri kullanılır.

FULL JOIN
Full JOIN yapısındaki tablo birleştirmesinde, birleştirme işlemi her iki tablo üzerinden gerçekleştirilir. Senaryomuzu şu şekilde düşünelim eğer tablo 1 olarak book tablosunu aldığımızda öncelikle book tablosundaki ilgili sütundaki tüm verileri alacağız, sonrasında tablo 2 deki ilgili sütunlardan tüm verileri alacağız. Tablo 1 de olup Tablo 2 de olmayan ve Tablo 2 de olup Tablo 1 de olmayan veriler için NULL değeri kullanılır.

UNION


UNION operatörü sayesinde farklı SELECT sorgularıyla oluşan sonuçları tek bir sonuç kümesi haline getiririz.
*/

(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 5
)
UNION -- Kesişen veriler olduğundan 5 veri gösterdi UNION ALL kullanırsak bütün verileri gösterir kesişen dahil.
(
SELECT * FROM book
ORDER BY title
LIMIT 5
);
-- UNION operatörü kullanılacağı sorguların, sütun sayıları eşit olmalıdır ve sütunlardaki veri tipleri eşleşmelidir.
/*
INTERSECT ve EXCEPT


INTERSECT operatörü sayesinde farklı SELECT sorgularıyla oluşan sonuçların kesişen verilerini tek bir sonuç kümesi haline getiririz.
*/

(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 5
)
INTERSECT
(
SELECT * FROM book
ORDER BY title
LIMIT 5
);
/*
EXCEPT Kullanımı


bookstore veritabanında iki adet sorgu yapıyoruz. İlk sorgumuzda sayfa sayısı en fazla olan 5 kitabı, ikinci sorgumuzda ise isme göre 5 kitabı sıralıyoruz. EXCEPT anahtar kelimesi sayesinde ilk sorguda olup ancak ikinci sorguda olmayan verileri gösterir.

*/
(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 5
)
EXCEPT -- alltaki verler ile kesişmeyen değerleri dödürür.
(
SELECT * FROM book
ORDER BY title
LIMIT 5
);
/*
Alt Sorgular (Subqueries)


Bir sorgu içerisinde, o sorgunun ihtiyaç duyduğu veri veya verileri getiren sorgulardır.



Alt Sorgu Kullanımı


bookstore veritabanında "Gülün Adı" isimli kitabımızın sayfa sayısı 466 dır. Bu kitaptan daha fazla sayıda sayfası bulunan kitapları aşağıdaki sorgu yardımıyla sıralayabiliriz.
*/
SELECT * FROM book
WHERE page_number > 2;

SELECT page_number FROM book
WHERE title = 'Wish Upon a Star';

SELECT * FROM book
WHERE page_number >
(
SELECT page_number FROM book
WHERE title = 'Wish Upon a Star' -- kısaca konumu bu şekilde belirttik.
);

SELECT title, page_number, (SELECT MAX(page_number) FROM book)
FROM book
WHERE page_number >
(
SELECT page_number FROM book
WHERE title = 'Wish Upon a Star' 
);
/*
ANY Operatörü


Alt sorgudan gelen herhangi bir değer koşulu sağlaması durumunda TRUE olarak ilgili değerin koşu sağlamasını sağlar.
*/

SELECT first_name, last_name FROM author
WHERE id = ANY 
(
	SELECT id FROM book
	WHERE title = 'Girl Crazy' OR title = 'Kon-Tiki' 
);

/*
ALL Operatörü


Alt sorgudan gelen tüm değerlerin koşulu sağlaması durumunda TRUE olarak döner.
*/

SELECT first_name, last_name FROM author
WHERE id = ALL 
(
	SELECT id FROM book
	WHERE title = 'Girl Crazy' OR title = 'Kon-Tiki' 
);

