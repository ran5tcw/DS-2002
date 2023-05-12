SELECT *
FROM sakila_2.fact_rental
ORDER BY rental_key-- Specify the desired column for ordering
LIMIT 50 OFFSET 0;
SELECT *
FROM sakila_2.fact_rental
ORDER BY rental_key-- Specify the desired column for ordering
LIMIT 50 OFFSET 50;
SELECT *
FROM sakila_2.fact_rental
ORDER BY rental_key-- Specify the desired column for ordering
LIMIT 50 OFFSET 100;

select *from sakila_2.dim_customers;
select*from sakila_2.dim_film;
select*from sakila_2.dim_store;