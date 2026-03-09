
-- Q1 Senior most employee
SELECT *
FROM employee
ORDER BY levels DESC
LIMIT 1;

-- Q2 Countries with most invoices
SELECT billing_country, COUNT(*) AS total_invoices
FROM invoice
GROUP BY billing_country
ORDER BY total_invoices DESC;

-- Q3 Top 3 invoice totals
SELECT total
FROM invoice
ORDER BY total DESC
LIMIT 3;

-- Q4 City with highest revenue
SELECT billing_city, SUM(total) AS total_revenue
FROM invoice
GROUP BY billing_city
ORDER BY total_revenue DESC
LIMIT 1;

-- Q5 Best customer
SELECT c.customer_id, c.first_name, c.last_name,
SUM(i.total) AS total_spent
FROM customer c
JOIN invoice i ON c.customer_id = i.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 1;

-- Q6 Rock music listeners
SELECT DISTINCT c.email,
       c.first_name,
       c.last_name
FROM customer c
JOIN invoice i
ON c.customer_id = i.customer_id
JOIN invoice_line il
ON i.invoice_id = il.invoice_id
JOIN track t
ON il.track_id = t.track_id
JOIN genre g
ON t.genre_id = g.genre_id
WHERE g.name = 'Rock'
ORDER BY c.email;

-- Q7 Top 10 Rock artists
SELECT ar.name AS artist,
       COUNT(t.track_id) AS total_tracks
FROM artist ar
JOIN album al
ON ar.artist_id = al.artist_id
JOIN track t
ON al.album_id = t.album_id
JOIN genre g
ON t.genre_id = g.genre_id
WHERE g.name = 'Rock'
GROUP BY ar.artist_id
ORDER BY total_tracks DESC
LIMIT 10;

-- Q8 Tracks longer than average
SELECT name,
       milliseconds
FROM track
WHERE milliseconds >
      (SELECT AVG(milliseconds) FROM track)
ORDER BY milliseconds DESC;

-- Q9 Amount spent by each customer on artists
SELECT c.first_name,
       c.last_name,
       ar.name AS artist,
       SUM(il.unit_price * il.quantity) AS total_spent
FROM customer c
JOIN invoice i
ON c.customer_id = i.customer_id
JOIN invoice_line il
ON i.invoice_id = il.invoice_id
JOIN track t
ON il.track_id = t.track_id
JOIN album al
ON t.album_id = al.album_id
JOIN artist ar
ON al.artist_id = ar.artist_id
GROUP BY c.customer_id, ar.artist_id
ORDER BY total_spent DESC;

-- Q10 Most popular genre for each country
SELECT i.billing_country,
       g.name AS genre,
       COUNT(il.quantity) AS purchases
FROM invoice_line il
JOIN invoice i
ON il.invoice_id = i.invoice_id
JOIN track t
ON il.track_id = t.track_id
JOIN genre g
ON t.genre_id = g.genre_id
GROUP BY i.billing_country, g.name
ORDER BY purchases DESC;

-- Q11 Top customer by country
SELECT c.country,
       c.first_name,
       c.last_name,
       SUM(i.total) AS total_spent
FROM customer c
JOIN invoice i
ON c.customer_id = i.customer_id
GROUP BY c.customer_id
ORDER BY c.country, total_spent DESC;

-- Q12 Most popular artists by revenue
SELECT ar.name AS artist,
       SUM(il.unit_price * il.quantity) AS revenue
FROM artist ar
JOIN album al
ON ar.artist_id = al.artist_id
JOIN track t
ON al.album_id = t.album_id
JOIN invoice_line il
ON t.track_id = il.track_id
GROUP BY ar.artist_id
ORDER BY revenue DESC
LIMIT 10;

-- Q13 Most popular song
SELECT t.name,
       SUM(il.quantity) AS total_purchases
FROM track t
JOIN invoice_line il
ON t.track_id = il.track_id
GROUP BY t.track_id
ORDER BY total_purchases DESC
LIMIT 1;

-- Q14 Average price by media type
SELECT m.name AS media_type,
       AVG(t.unit_price) AS avg_price
FROM track t
JOIN media_type m
ON t.media_type_id = m.media_type_id
GROUP BY m.name;

-- Q15 Revenue by country
SELECT billing_country,
       SUM(total) AS revenue
FROM invoice
GROUP BY billing_country
ORDER BY revenue DESC;

