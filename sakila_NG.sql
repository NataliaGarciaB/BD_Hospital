USE sakila;
-- Query 4:
SELECT * FROM actor; -- Buscar todos los actores
SELECT COUNT(*) AS "Actores existentes" FROM actor; -- Contar a los actores
-- Query 5:
SELECT * FROM film_category; -- Ver todas las carpeta_categorias
SELECT n.first_name AS "Nombre", n.last_name AS "Apellido", film.title AS "Pelicula" FROM actor n JOIN film_actor fi ON n.actor_id = fi.actor_id JOIN film ON film.film_id = fi.film_id WHERE title="ACADEMY DINOSAUR" OR title = "BERETS AGENT";
-- Query 6:
SELECT n.first_name AS "Nombre", n.last_name AS "Apellido", film.title AS "Pelicula",c.name AS "Categoria" FROM actor n JOIN film_actor fi ON n.actor_id = fi.actor_id JOIN film ON film.film_id = fi.film_id JOIN film_category fc ON fc.film_id = film.film_id JOIN category c ON fc.category_id = c.category_id WHERE first_name="KARL";
-- Query 7:
SELECT * FROM category; -- Ver todas las categorias
SELECT * FROM film; -- Ver todas las categorias
SELECT c.name AS "Categoria",(sum(film.replacement_cost)/count(film.replacement_cost)) AS "Costo Promedio" FROM film JOIN film_category fc ON fc.film_id = film.film_id JOIN category c ON fc.category_id = c.category_id WHERE c.name = "Drama";
-- Query 8:
SELECT * FROM payment;
SELECT * FROM sales_by_store;
SELECT c.name "Categoria",co.country AS "País de la tienda",ct.city AS "Ciudad de la tienda",(count(p.amount)) AS "Total ventas"
FROM payment p
JOIN rental r ON p.rental_id = r.rental_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
JOIN store s ON i.store_id = s.store_id
JOIN address a ON s.address_id = a.address_id
JOIN city ct ON a.city_id = ct.city_id
JOIN country co ON ct.country_id = co.country_id
group by c.name, s.store_id; 
-- Query 9:
SELECT count(name) AS "Cantidad de Cliente", country AS "País"  FROM customer_list group by country;
-- Query 10:
DROP VIEW IF EXISTS peliculas_cliente;
CREATE VIEW peliculas_cliente AS 
	SELECT cu.first_name AS "Nombre",cu.last_name AS "Apellido", f.title AS "Pelicula"
    FROM customer cu 
    JOIN store s ON cu.store_id = s.store_id
    JOIN inventory i ON s.store_id =i.store_id
    JOIN film f ON i.film_id = f.film_id
    order by cu.last_name;
SELECT * FROM peliculas_cliente;
-- Query 11:
SELECT cu.first_name AS "Nombre",cu.last_name AS "Apellido", f.title AS "Pelicula", datediff(r.return_date,r.rental_date) AS "Tiempo máximo de días"
FROM customer cu 
JOIN rental r ON cu.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id =i.inventory_id
JOIN film f ON i.film_id = f.film_id;
