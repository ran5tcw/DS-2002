use sakila_2;
ALTER table fact_rental
ADD COlUMN store_key int;
update fact_rental as fr
set fr.store_key =(
select dim_store.store_id
from sakila.inventory
left join dim_store on sakila.inventory.store_id = dim_store.store_id
where sakila.inventory.inventory_id = fr.inventory_id);
ALTER TABLE sakila_2.fact_rental
DROP COLUMN inventory_id;
select * from sakila_2.dim_customers;
