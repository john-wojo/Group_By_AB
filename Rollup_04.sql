#Rollup

#Example of rollup (sum of aggregated column
select customer_id, sum(tip) as total_tips
from customer_orders
group by customer_id with rollup;

select customer_id, count(tip) as count_tips
from customer_orders
group by customer_id with rollup;