SELECT COUNT(DISTINCT(title)) AS movies_not_for_rent
FROM film
WHERE film_id NOT IN
(SELECT i.film_id FROM inventory AS i INNER JOIN rental AS r ON r.inventory_id=i.inventory_id)











SELECT DISTINCT(f.title)
FROM rental AS r
INNER JOIN inventory AS i
ON r.inventory_id=i.inventory_id
INNER JOIN film AS f
ON i.film_id=f.film_id
ORDER BY f.title)