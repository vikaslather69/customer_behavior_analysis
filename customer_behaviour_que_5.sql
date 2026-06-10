-- do subscribed customers spwnd more? compare average spend and total revenue between subscribers and non subscribers.alter
use customer_behaviour;

select subscription_status, 
count(customer_id) as total_customers,
round(avg(purchade_amount),2) as avg_spend,
sum(purchade_amount) as total_revenue
from customer_data
group by subscription_status
order by total_revenue desc;

-- result 
--  subscription_status		total_customers		avg_spend		total_revenue
--  no						2847				59.87			170436
--  yes						1053				59.49			62645