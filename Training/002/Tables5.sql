select c.id as id , AVG(p.cnt * p.price) AS avg_order
from
    client c
join
    "order" o on c.id = o.client_id
join
    product p on o.id = p.order_id
where (p.cnt * p.price) > 1000
group by c.id
having count(*)>1
order by c.id;
