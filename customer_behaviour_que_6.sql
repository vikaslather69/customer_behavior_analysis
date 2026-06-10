-- which 5 products have the highest percentage of purchases with discount applied?

use customer_behaviour;

select item_purchased,
round(100 * sum(case when discount_applied = 'yes' then 1 else 0 end )/ count(*), 2) as 
discount_rate
from customer_data
group by item_purchased
order by discount_rate desc
limit 5;