-- SELECT column FROM table;
--SELECT title FROM film;
--büyük ve küçük harf ayrımı yoktur fakat büyük harfle yazılması tavsiye edilir.
--select description from film;

--SELECT * FROM film;
--SELECT first_name, last_name FROM actor;

-- WHERE filtre yapmada kullanılır
/*SELECT * FROM filM 
WHERE replacement_cost=14.99;
SELECT * FROM filM 
WHERE length>90;
*/

/*SELECT first_name,last_name FROM actor
WHERE first_name = 'Penelope' AND last_name = 'Monroe';
SELECT first_name,last_name FROM actor
WHERE first_name = 'Penelope' OR first_name = 'Bob';
SELECT first_name,last_name FROM actor
WHERE first_name = 'Penelope' OR first_name = 'bob';
*/

/*SELECT * FROM film 
WHERE NOT length > 90;
*/

SELECT title, length FROM film
WHERE length >= 90 AND length <= 120;

SELECT title, length FROM film
WHERE length BETWEEN 90 AND 120; -- 90 ve 120 dahil

SELECT title, length FROM film
WHERE length NOT BETWEEN 90 AND 120;

SELECT rental_rate, replacement_cost FROM film
WHERE (rental_rate BETWEEN 2 AND 4) AND (replacement_cost BETWEEN 10 AND 20);

SELECT * FROM film
WHERE length IN(40, 60, 70);

SELECT * FROM customer
WHERE first_name LIKE 'Ma%';  -- yüzde işareti o karakterlerden sonra herhangi birşeyler gelebilir demektir. 

SELECT * FROM customer
WHERE first_name LIKE 'A%y';

SELECT * FROM customer
WHERE first_name ILIKE 'ma%'; -- büyük harf ya da küçük harfle yazılması etkisiz olur

SELECT * FROM customer
WHERE first_name LIKE 'Ma_y'; -- alt çizgi tek karakter için yer tutar.

SELECT DISTINCT replacement_cost FROM film; -- unique değeri yani tek değeri yazdırır birden fazla tekrar etse bile
SELECT DISTINCT replacement_cost, length FROM film;

SELECT COUNT(*) FROM actor
WHERE first_name = 'Penelope';

SELECT COUNT(*) FROM actor;
SELECT COUNT(DISTINCT first_name) FROM actor;

SELECT * FROM film
ORDER BY title ASC; -- artan şekilde titleları sıralar. varsayılan asc dir

SELECT * FROM film
ORDER BY title DESC; -- azalan şekilde sıralar.

SELECT title, rental_rate, length FROM film
ORDER BY rental_rate, length DESC;

SELECT title, rental_rate, length FROM film
WHERE title LIKE 'A%'
ORDER BY rental_rate, length DESC;

SELECT * FROM film
LIMIT 20; -- ne kadar veri gelmesini istiyorsak o kadar getirir.

SELECT * FROM film
WHERE rental_rate = 4.99
ORDER BY length 
LIMIT 10;

SELECT * FROM country
OFFSET 6 -- ilk 6 veriyi atlar ve gerisini yazdırır
LIMIT 4;

SELECT * FROM actor
WHERE first_name = 'Penelope'
ORDER BY last_name
OFFSET 2
LIMIT 1;

-- Aggregate fonksiyonlar: bütün veriye bakarak sonuçlar çıkartma.
SELECT COUNT(*) FROM film;

SELECT MAX(replacement_cost) FROM film; -- MAX rc döner
SELECT MIN(replacement_cost) FROM film; -- MIN rc döner
SELECT AVG(length) FROM film; -- ortalama almak için
SELECT ROUND(AVG(length),3) FROM film; -- avg sonucu gelen sayıyı virgülden sonra 3 sayı gelecek şekilde yuvarlar.
SELECT SUM(length) FROM film; -- length sütunundaki bütün değerleri toplar
SELECT MAX(length), MIN(length), AVG(length) FROM film;

SELECT MAX(length) FROM film
WHERE RENTAL_RATE IN(0.99,2.99);

SELECT rental_rate, MAX(length) FROM film
GROUP BY rental_rate; -- Rental_rate'e göre her unique rental rate'in max değerini döndürdü.

SELECT rating, COUNT(*) FROM film
GROUP BY rating;

SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY MIN(length)
LIMIT 8;

SELECT rental_rate, COUNT(*) FROM film
GROUP BY rental_rate
HAVING COUNT(*) > 325; -- gruplanmış veriler üzerinde işlme yapar

SELECT first_name AS isim, last_name AS soyisim FROM actor; -- ALIAS yani takma ad, geçici isim.
SELECT first_name isim, last_name soyisim FROM actor;
SELECT first_name AS "isim test", last_name AS "soyisim test" FROM actor; -- birden fazla kelime olumca tırnak içerisine almazsak hata verir.
SELECT CONCAT(first_name, ' ', last_name) AS "İsim ve soyisim" FROM actor;













