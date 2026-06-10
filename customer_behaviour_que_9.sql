-- are customers who are repeat buyers  (more than 5 previous purchasses ) also likely to subscribe?

use customer_behaviour;

select subscription_status,
count(customer_id) as repeat_buyers
from customer_data
where previous_purchases > 5
group by subscription_status;