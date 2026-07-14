#Group By

select *
from customer_orders;

#Example of group by, also use of sum aggregate function
select customer_id, sum(tip)
from customer_orders
group by customer_id;

#Example of group by, also use of avg aggregate function
select product_id, avg(order_total)
from customer_orders
group by product_id;

#Same query as above only this returns the list in descending order to show products with highest avg order total
select product_id, avg(order_total)
from customer_orders
group by product_id
order by avg(order_total) desc;