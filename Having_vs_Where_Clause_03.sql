#Having vs Where Clause

#Example of using having clause to run a comparison operator on column created through an aggregate function
select customer_id, sum(tip) as total_tips
from customer_orders
group by customer_id
having total_tips > 5;

#Example of using having with logical operators
select customer_id, tip, sum(order_total) as total
from customer_orders
group by customer_id, tip
having total > 30 or tip > 5
order by tip desc;

#Example of using an aggregate function in a having clause
select customer_id, sum(order_total) as total
from customer_orders
group by customer_id
having sum(order_total) > 15
order by 2 desc;

select customer_id, order_total, tip
from customer_orders;