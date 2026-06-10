-- which customers used a discount but still spent more than the average purchase amount?

use customer_behaviour;

select customer_id, purchade_amount
from customer_data
where discount_applied='yes' and purchade_amount > (select avg(purchade_amount) from customer_data);


-- result
-- customer_id	purchade_amount
-- 2			64
-- 3			73
-- 4			90
-- ......