-- what are the revenue contribution of each age group?

use customer_behaviour;

select age_group, sum(purchade_amount) as total_revenue
from customer_data
group by age_group
order by total_revenue desc;