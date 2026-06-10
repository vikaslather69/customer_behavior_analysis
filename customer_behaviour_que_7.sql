-- segment customers into new, retuning m and loyal based on their total number of previous purchases and show the count of each segement.alter

use customer_behaviour;

with customer_type as (
select customer_id, previous_purchases,
case
    when previous_purchases= 1 then 'new'
    when previous_purchases between 2 and 10 then 'returning'
    else 'loyal'
    end as customer_segment
from customer_data )

select customer_segment, count(*) as 'number of customer'
from customer_type
group by customer_segment;