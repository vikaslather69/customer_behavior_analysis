-- which are the top 5 products with the highest average review rating?

use customer_behaviour;

select item_purchased, round(avg(review_rating),2) as 'average_product_rating'
from customer_data
group by item_purchased
order by average_product_rating desc
limit 5;