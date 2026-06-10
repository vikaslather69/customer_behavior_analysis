-- what are the most top 3 purchased products within each category?

use customer_behaviour;

with item_counts as (
select category, item_purchased, count(customer_id) as total_orders,
row_number() over ( partition by category order by count(customer_id) desc) as item_rank
from customer_data
group by category, item_purchased)

select item_rank, category, item_purchased, total_orders
from item_counts
where item_rank <=3;