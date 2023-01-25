/*
Genel Tekrar


Bu çalışmamamızda şimdiye kadar üzerine konuştuğumuz tüm konuları 5 farklı senaryo üzerinden tekrar etmeye çalıştık. Aşağıda ilgili senaryoları bulabilirsiniz.
*/
-- 1) film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.
SELECT * FROM film
WHERE title LIKE 'K%'
ORDER BY length DESC, replacement_cost
LIMIT 4;

-- 2) film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
/*SELECT DISTINCT rating,COUNT(*) 
FROM film
GROUP BY rating
ORDER BY COUNT DESC;
LIMIT 1;*/

-- 3) customer tablosunda en çok alışveriş yapan müşterinin adı nedir?
/*SELECT customer.first_name, customer.last_name, SUM(amount) FROM customer
JOIN payment ON payment.customer_id = customer.customer_id
GROUP BY customer.first_name, customer.last_name
ORDER BY SUM(amount) DESC
LIMIT 1;*/

-- 4) category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
/*SELECT category.name, COUNT(*) AS amount FROM category
JOIN film_category ON film_category.category_id = category.category_id
GROUP BY film_category.category_id, category.name
ORDER BY amount DESC;*/

-- 5) film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane film vardır?
SELECT COUNT(*) FROM film
WHERE title ILIKE '%e%e%e%e%';




