-- what is the total revenue gernated by male vs. female customer?

use customer_behaviour;

select gender, sum(purchade_amount) as revenue
from customer_data
group by gender;

-- result
--  gender		revenue
--  male		157890
--  female		75191