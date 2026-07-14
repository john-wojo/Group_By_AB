#Aggregate Functions

#Example of sum
select customer_id, sum(tip) as sum_tip
from customer_orders
group by customer_id
order by sum_tip;

#Example of avg
select customer_id, avg(tip) as avg_tip
from customer_orders
group by customer_id
order by avg_tip;

#Example of max
select customer_id, max(tip) as max_tip
from customer_orders
group by customer_id
order by max_tip;

#Example of min
select customer_id, min(tip) as min_tip
from customer_orders
group by customer_id
order by min_tip;

#Example of using count with 0 values in data
select customer_id, count(tip) as count_of_tips
from customer_orders
group by customer_id
order by count_of_tips;

#Example of how count works with NULL values
select first_name, last_name, phone, count(phone)
from customers
group by first_name, last_name, phone;

#Even though some customers left multiple tips they left the same tip every time
select product_id, tip, count(tip), count(distinct(tip))
from customer_orders
group by product_id, tip
order by product_id;