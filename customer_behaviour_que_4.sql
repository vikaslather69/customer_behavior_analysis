-- compare the average purchase amount between standard and exprees shipping?

use customer_behaviour;

select shipping_type, round(avg(purchade_amount),2) as 'average_purchase_amount'
from customer_data
where shipping_type in ('Standard','Express')
group by shipping_type;

-- result
--  shipping_type		average_purchase_amount
--  Express				60.48
--  standard			58.46