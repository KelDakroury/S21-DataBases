-- select * from country where country_id > 11 AND country_id < 17 order by country_id 

--  select address, city from address inner join city on address.city_id = city.city_id where city like 'A%'

-- select first_name, last_name, city from address inner join city on address.city_id = city.city_id 
-- inner join customer on address.address_id = customer.address_id

--  select customer.* from payment inner join customer on payment.customer_id = customer.customer_id
--  where amount > 11

-- select c1.customer_id, c1.first_name, c1.last_name, c2.customer_id, c2.first_name, c2.last_name c from customer c1 inner join customer c2 on c1.first_name = c2.first_name AND c1.customer_id != c2.customer_id


